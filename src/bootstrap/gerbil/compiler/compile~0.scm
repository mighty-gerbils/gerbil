(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712757956)
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
        (letrec ((_%hash-e144102%_
                  (lambda (_%id144104%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144104%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144102%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145489 (list gxc#::void::t))
            (__tmp145488 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145489
         '()
         __tmp145488
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144098%_
        (apply make-instance gxc#::collect-bindings::t _%$args144098%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145490
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
        (__make-promise __tmp145490)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144090%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144093%_
                (let ((__obj145464
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145464))
               (__tmp145491
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144093%_ _%stx144090%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145491
           gxc#current-compile-method
           _%self144093%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145493 (list gxc#::void::t))
            (__tmp145492 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145493
         '(modules)
         __tmp145492
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144087%_
        (apply make-instance gxc#::lift-modules::t _%$args144087%_)))
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
      (let ((__tmp145494
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
        (__make-promise __tmp145494)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144061%_ _%modules144058144062%_ _%stx144064%_)
        (let ((_%modules144067%_
               (if (eq? _%modules144058144062%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144058144062%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144069%_
                  (let ((__obj145466
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145466
                       _%modules144067%_
                       '1
                       '#f
                       '#f))
                    __obj145466))
                 (__tmp145495
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144069%_ _%stx144064%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145495
             gxc#current-compile-method
             _%self144069%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144076%_ . _%args144077%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144076%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144076%_
                  'modules:
                  absent-value))
               _%args144077%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144059144083%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144059144083%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145497 (list)) (__tmp145496 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145497
         '()
         __tmp145496
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144054%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144054%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145498
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
        (__make-promise __tmp145498)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144046%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144049%_
                (let ((__obj145468
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145468))
               (__tmp145499
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144049%_ _%stx144046%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145499
           gxc#current-compile-method
           _%self144049%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145501 (list gxc#::false::t))
            (__tmp145500 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145501
         '()
         __tmp145500
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144043%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144043%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145502
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
        (__make-promise __tmp145502)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144035%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144038%_
                (let ((__obj145470
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145470))
               (__tmp145503
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144038%_ _%stx144035%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145503
           gxc#current-compile-method
           _%self144038%_))))
    (define gxc#::count-values::t
      (let ((__tmp145505 (list gxc#::false-expression::t))
            (__tmp145504 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145505
         '()
         __tmp145504
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144032%_
        (apply make-instance gxc#::count-values::t _%$args144032%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145506
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
        (__make-promise __tmp145506)))
    (define gxc#apply-count-values
      (lambda (_%stx144024%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144027%_
                (let ((__obj145472
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145472))
               (__tmp145507
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144027%_ _%stx144024%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145507
           gxc#current-compile-method
           _%self144027%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145508 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145508
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144021%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144021%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145509
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
        (__make-promise __tmp145509)))
    (define gxc#::generate-loader::t
      (let ((__tmp145511 (list gxc#::generate-runtime-empty::t))
            (__tmp145510 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145511
         '()
         __tmp145510
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144017%_
        (apply make-instance gxc#::generate-loader::t _%$args144017%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145512
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
        (__make-promise __tmp145512)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144009%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144012%_
                (let ((__obj145475
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145475))
               (__tmp145513
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144012%_ _%stx144009%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145513
           gxc#current-compile-method
           _%self144012%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145514 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145514
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144006%_
        (apply make-instance gxc#::generate-runtime::t _%$args144006%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145515
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
        (__make-promise __tmp145515)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143998%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144001%_
                (let ((__obj145477
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145477))
               (__tmp145516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144001%_ _%stx143998%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145516
           gxc#current-compile-method
           _%self144001%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145518 (list gxc#::generate-runtime::t))
            (__tmp145517 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145518
         '()
         __tmp145517
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143995%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143995%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145519
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
        (__make-promise __tmp145519)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143987%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143990%_
                (let ((__obj145479
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145479))
               (__tmp145520
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143990%_ _%stx143987%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145520
           gxc#current-compile-method
           _%self143990%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145521 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145521
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143984%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143984%_)))
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
      (let ((__tmp145522
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
        (__make-promise __tmp145522)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords143958%_ _%table143955143959%_ _%stx143961%_)
        (let ((_%table143964%_
               (if (eq? _%table143955143959%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143955143959%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143966%_
                  (let ((__obj145481
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145481
                       _%table143964%_
                       '1
                       '#f
                       '#f))
                    __obj145481))
                 (__tmp145523
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143966%_ _%stx143961%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145523
             gxc#current-compile-method
             _%self143966%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143973%_ . _%args143974%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143973%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143973%_
                  'table:
                  absent-value))
               _%args143974%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143956143980%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143956143980%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145525 (list gxc#::void-expression::t))
            (__tmp145524 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145525
         '(state)
         __tmp145524
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143951%_
        (apply make-instance gxc#::generate-meta::t _%$args143951%_)))
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
      (let ((__tmp145526
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
        (__make-promise __tmp145526)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords143925%_ _%state143922143926%_ _%stx143928%_)
        (let ((_%state143931%_
               (if (eq? _%state143922143926%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143922143926%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143933%_
                  (let ((__obj145483
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145483
                       _%state143931%_
                       '1
                       '#f
                       '#f))
                    __obj145483))
                 (__tmp145527
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143933%_ _%stx143928%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145527
             gxc#current-compile-method
             _%self143933%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143940%_ . _%args143941%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143940%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143940%_
                  'state:
                  absent-value))
               _%args143941%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143923143947%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143923143947%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145529 (list)) (__tmp145528 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145529
         '(state)
         __tmp145528
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143918%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143918%_)))
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
      (let ((__tmp145530
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
        (__make-promise __tmp145530)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords143892%_ _%state143889143893%_ _%stx143895%_)
        (let ((_%state143898%_
               (if (eq? _%state143889143893%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143889143893%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143900%_
                  (let ((__obj145485
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145485
                       _%state143898%_
                       '1
                       '#f
                       '#f))
                    __obj145485))
                 (__tmp145531
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143900%_ _%stx143895%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145531
             gxc#current-compile-method
             _%self143900%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143907%_ . _%args143908%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143907%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143907%_
                  'state:
                  absent-value))
               _%args143908%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143890143914%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143890143914%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143818%_ _%stx143819%_)
        (let* ((_%g143821143838%_
                (lambda (_%g143822143835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143822143835%_))))
               (_%g143820143885%_
                (lambda (_%g143822143841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143822143841%_))
                      (let ((_%e143825143843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143822143841%_))))
                        (let ((_%hd143826143846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143825143843%_)))
                              (_%tl143827143848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143825143843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143827143848%_))
                              (let ((_%e143828143851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143827143848%_))))
                                (let ((_%hd143829143854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143828143851%_)))
                                      (_%tl143830143856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143828143851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143830143856%_))
                                      (let ((_%e143831143859%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143830143856%_))))
                                        (let ((_%hd143832143862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143831143859%_)))
                                              (_%tl143833143864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143831143859%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143833143864%_))
                                              ((lambda (_%L143867%_
                                                        _%L143868%_)
                                                 (let ((__tmp145532
                                                        (lambda (_%bind143883%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143883%_))
                      (gxc#add-module-binding! _%bind143883%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145532
                                                    _%L143868%_)))
                                               _%hd143832143862%_
                                               _%hd143829143854%_)
                                              (_%g143821143838%_
                                               _%g143822143841%_))))
                                      (_%g143821143838%_ _%g143822143841%_))))
                              (_%g143821143838%_ _%g143822143841%_))))
                      (_%g143821143838%_ _%g143822143841%_)))))
          (_%g143820143885%_ _%stx143819%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143750%_ _%stx143751%_)
        (let* ((_%g143753143770%_
                (lambda (_%g143754143767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143754143767%_))))
               (_%g143752143815%_
                (lambda (_%g143754143773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143754143773%_))
                      (let ((_%e143757143775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143754143773%_))))
                        (let ((_%hd143758143778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143757143775%_)))
                              (_%tl143759143780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143757143775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143759143780%_))
                              (let ((_%e143760143783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143759143780%_))))
                                (let ((_%hd143761143786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143760143783%_)))
                                      (_%tl143762143788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143760143783%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143762143788%_))
                                      (let ((_%e143763143791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143762143788%_))))
                                        (let ((_%hd143764143794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143763143791%_)))
                                              (_%tl143765143796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143763143791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143765143796%_))
                                              ((lambda (_%L143799%_
                                                        _%L143800%_)
                                                 (gxc#add-module-binding!
                                                  _%L143800%_
                                                  '#t))
                                               _%hd143764143794%_
                                               _%hd143761143786%_)
                                              (_%g143753143770%_
                                               _%g143754143773%_))))
                                      (_%g143753143770%_ _%g143754143773%_))))
                              (_%g143753143770%_ _%g143754143773%_))))
                      (_%g143753143770%_ _%g143754143773%_)))))
          (_%g143752143815%_ _%stx143751%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143692%_ _%stx143693%_)
        (let* ((_%g143695143709%_
                (lambda (_%g143696143706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143696143706%_))))
               (_%g143694143747%_
                (lambda (_%g143696143712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143696143712%_))
                      (let ((_%e143699143714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143696143712%_))))
                        (let ((_%hd143700143717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143699143714%_)))
                              (_%tl143701143719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143699143714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143701143719%_))
                              (let ((_%e143702143722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143701143719%_))))
                                (let ((_%hd143703143725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143702143722%_)))
                                      (_%tl143704143727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143702143722%_))))
                                  ((lambda (_%L143730%_ _%L143731%_)
                                     (let ((_%ctx143744%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143731%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143692%_
                                           'modules))
                                        (cons _%ctx143744%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143692%_
                                                        'modules)))))
                                       (let ((__tmp145533
                                              (lambda ()
                                                (let ((__tmp145534
                                                       (##structure-ref
                                                        _%ctx143744%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143692%_
                                                   __tmp145534)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145533
                                          gx#current-expander-context
                                          _%ctx143744%_))))
                                   _%tl143704143727%_
                                   _%hd143703143725%_)))
                              (_%g143695143709%_ _%g143696143712%_))))
                      (_%g143695143709%_ _%g143696143712%_)))))
          (_%g143694143747%_ _%stx143693%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143645143647%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143645143647%_
              (let ((_%decls143650%_ _%decls143645143647%_))
                (let _%lp143652%_ ((_%rest143654%_ _%decls143650%_))
                  (let* ((_%rest143655143663%_ _%rest143654%_)
                         (_%else143657143671%_ (lambda () '#f))
                         (_%K143659143680%_
                          (lambda (_%decls143674%_ _%decl143675%_)
                            (if (equal? _%decl143675%_ '(not safe))
                                '#t
                                (if (equal? _%decl143675%_ '(safe))
                                    '#f
                                    (_%lp143652%_ _%decls143674%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143655143663%_))
                        (let ((_%hd143660143683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143655143663%_)))
                              (_%tl143661143685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143655143663%_))))
                          (let* ((_%decl143688%_ _%hd143660143683%_)
                                 (_%decls143690%_ _%tl143661143685%_))
                            (_%K143659143680%_
                             _%decls143690%_
                             _%decl143688%_)))
                        (_%else143657143671%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143639%_ _%syntax?143640%_)
        (let ((_%eid143642%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143639%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143643%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143642%_))
              '#!void
              (let ((__tmp145535
                     (let ((__tmp145536
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143642%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145536 _%syntax?143640%_))))
                (declare (not safe))
                (hash-put! _%ht143643%_ _%eid143642%_ __tmp145535))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143637%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id143637%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143592%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143592%_))
            _%key143592%_
            (if (uninterned-symbol? _%key143592%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143592%_))
                (let* ((_%key143596143603%_ _%key143592%_)
                       (_%E143598143607%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key143596143603%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K143599143625%_
                        (lambda (_%mark143610%_ _%eid143611%_)
                          (let ((_%$e143613%_
                                 (##structure-ref
                                  _%mark143610%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e143613%_
                                ((lambda (_%ht143616%_)
                                   (let ((_%$e143618%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht143616%_
                                             _%eid143611%_))))
                                     (if _%$e143618%_
                                         ((lambda (_%id143621%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id143621%_))
                                                _%id143621%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id143621%_))))
                                          _%$e143618%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid143611%_))))
                                 _%$e143613%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid143611%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key143596143603%_))
                      (let ((_%hd143600143628%_
                             (let ()
                               (declare (not safe))
                               (##car _%key143596143603%_)))
                            (_%tl143601143630%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key143596143603%_))))
                        (let* ((_%eid143633%_ _%hd143600143628%_)
                               (_%mark143635%_ _%tl143601143630%_))
                          (_%K143599143625%_ _%mark143635%_ _%eid143633%_)))
                      (_%E143598143607%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143589%_ _%stx143590%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143436%_ _%stx143437%_)
        (letrec ((_%simplify143439%_
                  (lambda (_%body143487%_)
                    (let _%lp143489%_ ((_%rest143491%_ _%body143487%_)
                                       (_%r143492%_ '()))
                      (let* ((_%rest143493143501%_ _%rest143491%_)
                             (_%else143495143509%_
                              (lambda () (reverse _%r143492%_)))
                             (_%K143497143577%_
                              (lambda (_%rest143512%_ _%hd143513%_)
                                (let* ((_%hd143514143530%_ _%hd143513%_)
                                       (_%else143518143538%_
                                        (lambda ()
                                          (_%lp143489%_
                                           _%rest143512%_
                                           (cons _%hd143513%_ _%r143492%_)))))
                                  (let ((_%K143526143567%_
                                         (lambda (_%exprs143565%_)
                                           (_%lp143489%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest143512%_
                                               _%exprs143565%_))
                                            _%r143492%_)))
                                        (_%K143521143551%_
                                         (lambda ()
                                           (if (null? _%rest143512%_)
                                               (_%lp143489%_
                                                _%rest143512%_
                                                (cons _%hd143513%_
                                                      _%r143492%_))
                                               (_%lp143489%_
                                                _%rest143512%_
                                                _%r143492%_))))
                                        (_%K143520143543%_
                                         (lambda ()
                                           (if (null? _%rest143512%_)
                                               (_%lp143489%_
                                                _%rest143512%_
                                                (cons _%hd143513%_
                                                      _%r143492%_))
                                               (_%lp143489%_
                                                _%rest143512%_
                                                _%r143492%_)))))
                                    (let ((_%try-match143517143546%_
                                           (lambda ()
                                             (if (symbol? _%hd143514143530%_)
                                                 (_%K143520143543%_)
                                                 (_%else143518143538%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143514143530%_))
                                          (let ((_%tl143528143572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143514143530%_)))
                                                (_%hd143527143570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143514143530%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143527143570%_
                                                         'begin))
                                                (let ((_%exprs143575%_
                                                       _%tl143528143572%_))
                                                  (_%K143526143567%_
                                                   _%exprs143575%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143527143570%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143528143572%_))
                                                        (let ((_%tl143525143559%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143528143572%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143525143559%_))
                      (_%K143521143551%_)
                      (_%try-match143517143546%_)))
                (_%try-match143517143546%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match143517143546%_))))
                                          (_%try-match143517143546%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143493143501%_))
                            (let ((_%hd143498143580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143493143501%_)))
                                  (_%tl143499143582%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143493143501%_))))
                              (let* ((_%hd143585%_ _%hd143498143580%_)
                                     (_%rest143587%_ _%tl143499143582%_))
                                (_%K143497143577%_
                                 _%rest143587%_
                                 _%hd143585%_)))
                            (_%else143495143509%_)))))))
          (let* ((_%g143441143451%_
                  (lambda (_%g143442143448%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143442143448%_))))
                 (_%g143440143484%_
                  (lambda (_%g143442143454%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143442143454%_))
                        (let ((_%e143444143456%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143442143454%_))))
                          (let ((_%hd143445143459%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143444143456%_)))
                                (_%tl143446143461%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143444143456%_))))
                            ((lambda (_%L143464%_)
                               (let* ((_%body143479%_
                                       (map (lambda (_%g143474143476%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143436%_
                                                 _%g143474143476%_)))
                                            _%L143464%_))
                                      (_%body143481%_
                                       (_%simplify143439%_ _%body143479%_)))
                                 (if (let ((__tmp145537
                                            (length _%body143481%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145537 '1))
                                     (car _%body143481%_)
                                     (cons 'begin _%body143481%_))))
                             _%tl143446143461%_)))
                        (_%g143441143451%_ _%g143442143454%_)))))
            (_%g143440143484%_ _%stx143437%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143397%_ _%stx143398%_)
        (let* ((_%g143400143410%_
                (lambda (_%g143401143407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143401143407%_))))
               (_%g143399143433%_
                (lambda (_%g143401143413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143401143413%_))
                      (let ((_%e143403143415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143401143413%_))))
                        (let ((_%hd143404143418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143403143415%_)))
                              (_%tl143405143420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143403143415%_))))
                          ((lambda (_%L143423%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143423%_))))
                           _%tl143405143420%_)))
                      (_%g143400143410%_ _%g143401143413%_)))))
          (_%g143399143433%_ _%stx143398%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143161%_ _%stx143162%_)
        (let* ((_%__stx144127144128%_ _%stx143162%_)
               (_%g143166143218%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144127144128%_)))))
          (let ((_%__kont144129144130%_
                 (lambda (_%L143379%_ _%L143380%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143161%_ _%L143379%_))))
                (_%__kont144131144132%_
                 (lambda (_%L143327%_ _%L143328%_ _%L143329%_)
                   (if (let ((__tmp145538
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143329%_))))
                         (declare (not safe))
                         (##memq __tmp145538 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143161%_ _%L143327%_)))))
                (_%__kont144135144136%_
                 (lambda (_%L143247%_ _%L143248%_)
                   (let ((_%decls143263%_ (map gx#syntax->datum _%L143248%_)))
                     (let ((__tmp145541
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143263%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143161%_
                                                   _%L143247%_))
                                                '())))))
                           (__tmp145539
                            (let ((__tmp145540
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145540 _%decls143263%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145541
                        gxc#current-compile-decls
                        __tmp145539))))))
            (let* ((_%__match144182144183%_
                    (lambda (_%e143182143271%_
                             _%hd143183143274%_
                             _%tl143184143276%_
                             _%e143185143279%_
                             _%hd143186143282%_
                             _%tl143187143284%_
                             _%e143188143287%_
                             _%hd143189143290%_
                             _%tl143190143292%_
                             _%__splice144133144134%_
                             _%target143191143295%_
                             _%tl143193143297%_)
                      (letrec ((_%loop143194143300%_
                                (lambda (_%hd143192143303%_
                                         _%param143198143305%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143192143303%_))
                                      (let ((_%e143195143308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143192143303%_))))
                                        (let ((_%lp-tl143197143313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143195143308%_)))
                                              (_%lp-hd143196143311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143195143308%_))))
                                          (_%loop143194143300%_
                                           _%lp-tl143197143313%_
                                           (cons _%lp-hd143196143311%_
                                                 _%param143198143305%_))))
                                      (let ((_%param143199143316%_
                                             (reverse _%param143198143305%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143187143284%_))
                                            (let ((_%e143200143319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143187143284%_))))
                                              (let ((_%tl143202143324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143200143319%_)))
                                                    (_%hd143201143322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143200143319%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143202143324%_))
                                                    (let ((_%L143327%_
                                                           _%hd143201143322%_)
                                                          (_%L143328%_
                                                           _%param143199143316%_)
                                                          (_%L143329%_
                                                           _%hd143189143290%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143329%_))
                       (not (let ((__tmp145542
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L143329%_))))
                              (declare (not safe))
                              (##memq __tmp145542 gxc#gambit-annotations))))
                  (_%__kont144131144132%_ _%L143327%_ _%L143328%_ _%L143329%_)
                  (_%__kont144135144136%_
                   _%hd143201143322%_
                   _%hd143186143282%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143166143218%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143166143218%_))))))))
                        (_%loop143194143300%_ _%target143191143295%_ '()))))
                   (_%__match144156144157%_
                    (lambda (_%e143170143355%_
                             _%hd143171143358%_
                             _%tl143172143360%_
                             _%e143173143363%_
                             _%hd143174143366%_
                             _%tl143175143368%_
                             _%e143176143371%_
                             _%hd143177143374%_
                             _%tl143178143376%_)
                      (let ((_%L143379%_ _%hd143177143374%_)
                            (_%L143380%_ _%hd143174143366%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143380%_))
                            (_%__kont144129144130%_ _%L143379%_ _%L143380%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143174143366%_))
                                (let ((_%e143188143287%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143174143366%_))))
                                  (let ((_%tl143190143292%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143188143287%_)))
                                        (_%hd143189143290%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143188143287%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143190143292%_))
                                        (let ((_%__splice144133144134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143190143292%_
                                                  '0))))
                                          (let ((_%tl143193143297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144133144134%_
                                                    '1)))
                                                (_%target143191143295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144133144134%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143193143297%_))
                                                (_%__match144182144183%_
                                                 _%e143170143355%_
                                                 _%hd143171143358%_
                                                 _%tl143172143360%_
                                                 _%e143173143363%_
                                                 _%hd143174143366%_
                                                 _%tl143175143368%_
                                                 _%e143188143287%_
                                                 _%hd143189143290%_
                                                 _%tl143190143292%_
                                                 _%__splice144133144134%_
                                                 _%target143191143295%_
                                                 _%tl143193143297%_)
                                                (_%__kont144135144136%_
                                                 _%hd143177143374%_
                                                 _%hd143174143366%_))))
                                        (_%__kont144135144136%_
                                         _%hd143177143374%_
                                         _%hd143174143366%_))))
                                (_%__kont144135144136%_
                                 _%hd143177143374%_
                                 _%hd143174143366%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144127144128%_))
                  (let ((_%e143170143355%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144127144128%_))))
                    (let ((_%tl143172143360%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143170143355%_)))
                          (_%hd143171143358%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143170143355%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143172143360%_))
                          (let ((_%e143173143363%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143172143360%_))))
                            (let ((_%tl143175143368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143173143363%_)))
                                  (_%hd143174143366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143173143363%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143175143368%_))
                                  (let ((_%e143176143371%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143175143368%_))))
                                    (let ((_%tl143178143376%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143176143371%_)))
                                          (_%hd143177143374%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143176143371%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143178143376%_))
                                          (_%__match144156144157%_
                                           _%e143170143355%_
                                           _%hd143171143358%_
                                           _%tl143172143360%_
                                           _%e143173143363%_
                                           _%hd143174143366%_
                                           _%tl143175143368%_
                                           _%e143176143371%_
                                           _%hd143177143374%_
                                           _%tl143178143376%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143174143366%_))
                                              (let ((_%e143188143287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143174143366%_))))
                                                (let ((_%tl143190143292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143188143287%_)))
                                                      (_%hd143189143290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143188143287%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143190143292%_))
                                                      (let ((_%__splice144133144134%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143190143292%_ '0))))
                (let ((_%tl143193143297%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144133144134%_ '1)))
                      (_%target143191143295%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144133144134%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143193143297%_))
                      (_%__match144182144183%_
                       _%e143170143355%_
                       _%hd143171143358%_
                       _%tl143172143360%_
                       _%e143173143363%_
                       _%hd143174143366%_
                       _%tl143175143368%_
                       _%e143188143287%_
                       _%hd143189143290%_
                       _%tl143190143292%_
                       _%__splice144133144134%_
                       _%target143191143295%_
                       _%tl143193143297%_)
                      (let () (declare (not safe)) (_%g143166143218%_)))))
              (let () (declare (not safe)) (_%g143166143218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143166143218%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143174143366%_))
                                      (let ((_%e143188143287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143174143366%_))))
                                        (let ((_%tl143190143292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143188143287%_)))
                                              (_%hd143189143290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143188143287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143190143292%_))
                                              (let ((_%__splice144133144134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143190143292%_
                                                        '0))))
                                                (let ((_%tl143193143297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144133144134%_
                                                          '1)))
                                                      (_%target143191143295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144133144134%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143193143297%_))
                                                      (_%__match144182144183%_
                                                       _%e143170143355%_
                                                       _%hd143171143358%_
                                                       _%tl143172143360%_
                                                       _%e143173143363%_
                                                       _%hd143174143366%_
                                                       _%tl143175143368%_
                                                       _%e143188143287%_
                                                       _%hd143189143290%_
                                                       _%tl143190143292%_
                                                       _%__splice144133144134%_
                                                       _%target143191143295%_
                                                       _%tl143193143297%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143166143218%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143166143218%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143166143218%_))))))
                          (let () (declare (not safe)) (_%g143166143218%_)))))
                  (let () (declare (not safe)) (_%g143166143218%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143120%_ _%stx143121%_)
        (let* ((_%g143123143133%_
                (lambda (_%g143124143130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143124143130%_))))
               (_%g143122143158%_
                (lambda (_%g143124143136%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143124143136%_))
                      (let ((_%e143126143138%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143124143136%_))))
                        (let ((_%hd143127143141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143126143138%_)))
                              (_%tl143128143143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143126143138%_))))
                          ((lambda (_%L143146%_)
                             (let ((_%decls143156%_
                                    (map gx#syntax->datum _%L143146%_)))
                               (let ((__tmp145543
                                      (let ((__tmp145544
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145544
                                         _%decls143156%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145543))
                               (cons 'declare _%decls143156%_)))
                           _%tl143128143143%_)))
                      (_%g143123143133%_ _%g143124143136%_)))))
          (_%g143122143158%_ _%stx143121%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142866%_ _%stx142867%_)
        (let* ((_%g142869142886%_
                (lambda (_%g142870142883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142870142883%_))))
               (_%g142868143117%_
                (lambda (_%g142870142889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142870142889%_))
                      (let ((_%e142873142891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142870142889%_))))
                        (let ((_%hd142874142894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142873142891%_)))
                              (_%tl142875142896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142873142891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142875142896%_))
                              (let ((_%e142876142899%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142875142896%_))))
                                (let ((_%hd142877142902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142876142899%_)))
                                      (_%tl142878142904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142876142899%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142878142904%_))
                                      (let ((_%e142879142907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142878142904%_))))
                                        (let ((_%hd142880142910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142879142907%_)))
                                              (_%tl142881142912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142879142907%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142881142912%_))
                                              ((lambda (_%L142915%_
                                                        _%L142916%_)
                                                 (let* ((_%__stx144235144236%_
                                                         _%L142916%_)
                                                        (_%g142933142947%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144235144236%_)))))
                                                   (let ((_%__kont144237144238%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142866%_
                                                               _%L142915%_))))
                                                         (_%__kont144239144240%_
                                                          (lambda (_%L143079%_)
                                                            (let ((_%eid143088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143079%_))))
                      (let ((_%lambda-expr143089143091%_
                             (gxc#apply-find-lambda-expression _%L142915%_)))
                        (if _%lambda-expr143089143091%_
                            (let* ((_%lambda-expr143094%_
                                    _%lambda-expr143089143091%_)
                                   (__tmp145545
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145545
                               _%lambda-expr143094%_
                               _%eid143088%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143088%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142866%_
                                           _%L142915%_))
                                        '()))))))
                 (_%__kont144241144242%_
                  (lambda ()
                    (let* ((_%tmp142954%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143063%_
                            (let _%lp142956%_ ((_%rest142958%_ _%L142916%_)
                                               (_%k142959%_ '0)
                                               (_%r142960%_ '()))
                              (let* ((_%__stx144205144206%_ _%rest142958%_)
                                     (_%g142965142982%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144205144206%_)))))
                                (let ((_%__kont144207144208%_
                                       (lambda (_%L143050%_)
                                         (_%lp142956%_
                                          _%L143050%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142959%_ '1))
                                          _%r142960%_)))
                                      (_%__kont144209144210%_
                                       (lambda (_%L143023%_ _%L143024%_)
                                         (_%lp142956%_
                                          _%L143023%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142959%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L143024%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp142954%_
                           _%k142959%_
                           _%L143023%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r142960%_))))
                                      (_%__kont144211144212%_
                                       (lambda (_%L142994%_)
                                         (let ((__tmp145546
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142994%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp142954%_
                                 _%k142959%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145546
                                            _%r142960%_))))
                                      (_%__kont144213144214%_
                                       (lambda () (reverse _%r142960%_))))
                                  (let ((_%g142963143010%_
                                         (lambda ()
                                           (let ((_%L142994%_
                                                  _%__stx144205144206%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142994%_))
                                                 (_%__kont144211144212%_
                                                  _%L142994%_)
                                                 (_%__kont144213144214%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144205144206%_))
                                        (let ((_%e142968143039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144205144206%_))))
                                          (let ((_%tl142970143044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142968143039%_)))
                                                (_%hd142969143042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142968143039%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142969143042%_))
                                                (let ((_%e142971143047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142969143042%_))))
                                                  (if (equal? _%e142971143047%_
                                                              '#f)
                                                      (_%__kont144207144208%_
                                                       _%tl142970143044%_)
                                                      (_%__kont144209144210%_
                                                       _%tl142970143044%_
                                                       _%hd142969143042%_)))
                                                (_%__kont144209144210%_
                                                 _%tl142970143044%_
                                                 _%hd142969143042%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142963143010%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142954%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142866%_
                                                       _%L142915%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp142954%_
                                         _%L142916%_
                                         _%L142915%_)
                                        _%body143063%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144235144236%_))
                                                         (let ((_%e142935143101%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144235144236%_))))
                   (let ((_%tl142937143106%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142935143101%_)))
                         (_%hd142936143104%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142935143101%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142936143104%_))
                         (let ((_%e142938143109%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142936143104%_))))
                           (if (equal? _%e142938143109%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142937143106%_))
                                   (_%__kont144237144238%_)
                                   (_%__kont144241144242%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142937143106%_))
                                   (_%__kont144239144240%_ _%hd142936143104%_)
                                   (_%__kont144241144242%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142937143106%_))
                             (_%__kont144239144240%_ _%hd142936143104%_)
                             (_%__kont144241144242%_)))))
                 (_%__kont144241144242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142880142910%_
                                               _%hd142877142902%_)
                                              (_%g142869142886%_
                                               _%g142870142889%_))))
                                      (_%g142869142886%_ _%g142870142889%_))))
                              (_%g142869142886%_ _%g142870142889%_))))
                      (_%g142869142886%_ _%g142870142889%_)))))
          (_%g142868143117%_ _%stx142867%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142841%_ _%hd142842%_ _%expr142843%_)
        (let ((_%$e142845%_ (gxc#apply-count-values _%expr142843%_)))
          (if _%$e142845%_
              ((lambda (_%count142848%_)
                 (let ((_%len142850%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142842%_)))
                       (_%cmp142851%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142842%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142850%_ '0))
                           (_%cmp142851%_ _%count142848%_ _%len142850%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142843%_
                          _%hd142842%_)))))
               _%$e142845%_)
              (let* ((_%len142857%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd142842%_)))
                     (_%cmp142859%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd142842%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg142861%_
                      (let ((__tmp145548
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd142842%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp145547 (number->string _%len142857%_)))
                        (declare (not safe))
                        (##string-append __tmp145548 __tmp145547 '" values")))
                     (_%count142863%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd142842%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len142857%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count142863%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals142841%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp142859%_
                                (cons _%count142863%_
                                      (cons _%len142857%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp142859%_
                                                        (cons _%count142863%_
                                                              (cons _%len142857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg142861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count142863%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142836%_)
        (letrec ((_%generate-inline142838%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142836%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142836%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142838%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142838%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142829%_ _%i142830%_ _%rest142831%_)
        (letrec ((_%generate-inline142833%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142830%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest142831%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142829%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142829%_
                                                      (cons '0 '())))
                                          (cons _%var142829%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142829%_ (cons _%i142830%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142833%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142833%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142823%_ _%i142824%_)
        (if (let () (declare (not safe)) (##fx= _%i142824%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var142823%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var142823%_ '()))
                                  (cons (cons 'list (cons _%var142823%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var142823%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var142823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var142823%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i142824%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var142823%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var142823%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var142823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var142823%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var142823%_ '()))
                                (cons _%i142824%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var142823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i142824%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142755%_ _%stx142756%_)
        (let* ((_%g142758142775%_
                (lambda (_%g142759142772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142759142772%_))))
               (_%g142757142820%_
                (lambda (_%g142759142778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142759142778%_))
                      (let ((_%e142762142780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142759142778%_))))
                        (let ((_%hd142763142783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142762142780%_)))
                              (_%tl142764142785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142762142780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142764142785%_))
                              (let ((_%e142765142788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142764142785%_))))
                                (let ((_%hd142766142791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142765142788%_)))
                                      (_%tl142767142793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142765142788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142767142793%_))
                                      (let ((_%e142768142796%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142767142793%_))))
                                        (let ((_%hd142769142799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142768142796%_)))
                                              (_%tl142770142801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142768142796%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142770142801%_))
                                              ((lambda (_%L142804%_
                                                        _%L142805%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self142755%_
                                                  _%L142805%_
                                                  _%L142804%_))
                                               _%hd142769142799%_
                                               _%hd142766142791%_)
                                              (_%g142758142775%_
                                               _%g142759142778%_))))
                                      (_%g142758142775%_ _%g142759142778%_))))
                              (_%g142758142775%_ _%g142759142778%_))))
                      (_%g142758142775%_ _%g142759142778%_)))))
          (_%g142757142820%_ _%stx142756%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142714%_ _%hd142715%_ _%body142716%_)
        (let* ((_%hd142718%_ (gxc#generate-runtime-lambda-head _%hd142715%_))
               (_%body142720%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142714%_ _%body142716%_)))
               (_%body142752%_
                (let* ((_%body142721142729%_ _%body142720%_)
                       (_%else142723142737%_
                        (lambda () (cons _%body142720%_ '())))
                       (_%K142725142742%_
                        (lambda (_%exprs142740%_) _%exprs142740%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142721142729%_))
                      (let ((_%hd142726142745%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142721142729%_)))
                            (_%tl142727142747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142721142729%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142726142745%_ 'begin))
                            (let ((_%exprs142750%_ _%tl142727142747%_))
                              (_%K142725142742%_ _%exprs142750%_))
                            (_%else142723142737%_)))
                      (_%else142723142737%_)))))
          (cons 'lambda (cons _%hd142718%_ _%body142752%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142712%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142712%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141251%_ _%stx141252%_)
        (letrec ((_%dispatch-case?141254%_
                  (lambda (_%hd141942%_ _%body141943%_)
                    (let* ((_%form141945%_
                            (cons _%hd141942%_ (cons _%body141943%_ '())))
                           (_%__stx144267144268%_ _%form141945%_)
                           (_%g141950142107%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144267144268%_)))))
                      (let ((_%__kont144269144270%_
                             (lambda (_%L142632%_ _%L142633%_ _%L142634%_)
                               '#t))
                            (_%__kont144275144276%_
                             (lambda (_%L142420%_
                                      _%L142421%_
                                      _%L142422%_
                                      _%L142423%_
                                      _%L142424%_
                                      _%L142425%_)
                               '#t))
                            (_%__kont144281144282%_
                             (lambda (_%L142215%_
                                      _%L142216%_
                                      _%L142217%_
                                      _%L142218%_)
                               '#t))
                            (_%__kont144283144284%_ (lambda () '#f)))
                        (let* ((_%__match144408144409%_
                                (lambda (_%e142067142119%_
                                         _%hd142068142122%_
                                         _%tl142069142124%_
                                         _%e142070142127%_
                                         _%hd142071142130%_
                                         _%tl142072142132%_
                                         _%e142073142135%_
                                         _%hd142074142138%_
                                         _%tl142075142140%_
                                         _%e142076142143%_
                                         _%hd142077142146%_
                                         _%tl142078142148%_
                                         _%e142079142151%_
                                         _%hd142080142154%_
                                         _%tl142081142156%_
                                         _%e142082142159%_
                                         _%hd142083142162%_
                                         _%tl142084142164%_
                                         _%e142085142167%_
                                         _%hd142086142170%_
                                         _%tl142087142172%_
                                         _%e142088142175%_
                                         _%hd142089142178%_
                                         _%tl142090142180%_
                                         _%e142091142183%_
                                         _%hd142092142186%_
                                         _%tl142093142188%_
                                         _%e142094142191%_
                                         _%hd142095142194%_
                                         _%tl142096142196%_
                                         _%e142097142199%_
                                         _%hd142098142202%_
                                         _%tl142099142204%_
                                         _%e142100142207%_
                                         _%hd142101142210%_
                                         _%tl142102142212%_)
                                  (let ((_%L142215%_ _%hd142101142210%_)
                                        (_%L142216%_ _%hd142092142186%_)
                                        (_%L142217%_ _%hd142083142162%_)
                                        (_%L142218%_ _%hd142068142122%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142218%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142217%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142218%_
                                                _%L142215%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L142216%_
                                                     _%L142218%_))))
                                        (_%__kont144281144282%_
                                         _%L142215%_
                                         _%L142216%_
                                         _%L142217%_
                                         _%L142218%_)
                                        (_%__kont144283144284%_)))))
                               (_%__match144380144381%_
                                (lambda (_%e142067142119%_
                                         _%hd142068142122%_
                                         _%tl142069142124%_
                                         _%e142070142127%_
                                         _%hd142071142130%_
                                         _%tl142072142132%_
                                         _%e142073142135%_
                                         _%hd142074142138%_
                                         _%tl142075142140%_
                                         _%e142076142143%_
                                         _%hd142077142146%_
                                         _%tl142078142148%_
                                         _%e142079142151%_
                                         _%hd142080142154%_
                                         _%tl142081142156%_
                                         _%e142082142159%_
                                         _%hd142083142162%_
                                         _%tl142084142164%_
                                         _%e142085142167%_
                                         _%hd142086142170%_
                                         _%tl142087142172%_
                                         _%e142088142175%_
                                         _%hd142089142178%_
                                         _%tl142090142180%_
                                         _%e142091142183%_
                                         _%hd142092142186%_
                                         _%tl142093142188%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142087142172%_))
                                      (let ((_%e142094142191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142087142172%_))))
                                        (let ((_%tl142096142196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142094142191%_)))
                                              (_%hd142095142194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142094142191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142095142194%_))
                                              (let ((_%e142097142199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142095142194%_))))
                                                (let ((_%tl142099142204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142097142199%_)))
                                                      (_%hd142098142202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142097142199%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142098142202%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142098142202%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142099142204%_))
                      (let ((_%e142100142207%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142099142204%_))))
                        (let ((_%tl142102142212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142100142207%_)))
                              (_%hd142101142210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142100142207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142102142212%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142096142196%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142072142132%_))
                                      (_%__match144408144409%_
                                       _%e142067142119%_
                                       _%hd142068142122%_
                                       _%tl142069142124%_
                                       _%e142070142127%_
                                       _%hd142071142130%_
                                       _%tl142072142132%_
                                       _%e142073142135%_
                                       _%hd142074142138%_
                                       _%tl142075142140%_
                                       _%e142076142143%_
                                       _%hd142077142146%_
                                       _%tl142078142148%_
                                       _%e142079142151%_
                                       _%hd142080142154%_
                                       _%tl142081142156%_
                                       _%e142082142159%_
                                       _%hd142083142162%_
                                       _%tl142084142164%_
                                       _%e142085142167%_
                                       _%hd142086142170%_
                                       _%tl142087142172%_
                                       _%e142088142175%_
                                       _%hd142089142178%_
                                       _%tl142090142180%_
                                       _%e142091142183%_
                                       _%hd142092142186%_
                                       _%tl142093142188%_
                                       _%e142094142191%_
                                       _%hd142095142194%_
                                       _%tl142096142196%_
                                       _%e142097142199%_
                                       _%hd142098142202%_
                                       _%tl142099142204%_
                                       _%e142100142207%_
                                       _%hd142101142210%_
                                       _%tl142102142212%_)
                                      (_%__kont144283144284%_))
                                  (_%__kont144283144284%_))
                              (_%__kont144283144284%_))))
                      (_%__kont144283144284%_))
                  (_%__kont144283144284%_))
              (_%__kont144283144284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144283144284%_))))
                                      (_%__kont144283144284%_))))
                               (_%__match144310144311%_
                                (lambda (_%e142003142260%_
                                         _%hd142004142263%_
                                         _%tl142005142265%_
                                         _%__splice144277144278%_
                                         _%target142006142268%_
                                         _%tl142008142270%_)
                                  (letrec ((_%loop142009142273%_
                                            (lambda (_%hd142007142276%_
                                                     _%arg142013142278%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142007142276%_))
                                                  (let ((_%e142010142281%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142007142276%_))))
                                                    (let ((_%lp-tl142012142286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142010142281%_)))
                                                          (_%lp-hd142011142284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142010142281%_))))
                                                      (_%loop142009142273%_
                                                       _%lp-tl142012142286%_
                                                       (cons _%lp-hd142011142284%_
                                                             _%arg142013142278%_))))
                                                  (let ((_%arg142014142289%_
                                                         (reverse _%arg142013142278%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142005142265%_))
                                                        (let ((_%e142015142292%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142005142265%_))))
                  (let ((_%tl142017142297%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142015142292%_)))
                        (_%hd142016142295%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142015142292%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142016142295%_))
                        (let ((_%e142018142300%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142016142295%_))))
                          (let ((_%tl142020142305%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142018142300%_)))
                                (_%hd142019142303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142018142300%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142019142303%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142019142303%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142020142305%_))
                                        (let ((_%e142021142308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142020142305%_))))
                                          (let ((_%tl142023142313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142021142308%_)))
                                                (_%hd142022142311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142021142308%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142022142311%_))
                                                (let ((_%e142024142316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142022142311%_))))
                                                  (let ((_%tl142026142321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142024142316%_)))
                                                        (_%hd142025142319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142024142316%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142025142319%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142025142319%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142026142321%_))
                        (let ((_%e142027142324%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142026142321%_))))
                          (let ((_%tl142029142329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142027142324%_)))
                                (_%hd142028142327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142027142324%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142029142329%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142023142313%_))
                                    (let ((_%e142030142332%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142023142313%_))))
                                      (let ((_%tl142032142337%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142030142332%_)))
                                            (_%hd142031142335%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142030142332%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142031142335%_))
                                            (let ((_%e142033142340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142031142335%_))))
                                              (let ((_%tl142035142345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142033142340%_)))
                                                    (_%hd142034142343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142033142340%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142034142343%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142034142343%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142035142345%_))
                                                            (let ((_%e142036142348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142035142345%_))))
                      (let ((_%tl142038142353%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142036142348%_)))
                            (_%hd142037142351%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142036142348%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142038142353%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142032142337%_))
                                (if (let ((__tmp145549
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142032142337%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145549 '1))
                                    (let ((_%__splice144279144280%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142032142337%_
                                              '1))))
                                      (let ((_%tl142041142358%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144279144280%_
                                                '1)))
                                            (_%target142039142356%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144279144280%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142041142358%_))
                                            (let ((_%e142048142361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142041142358%_))))
                                              (let ((_%tl142050142366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142048142361%_)))
                                                    (_%hd142049142364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142048142361%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142049142364%_))
                                                    (let ((_%e142051142369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142049142364%_))))
                                                      (let ((_%tl142053142374%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142051142369%_)))
                    (_%hd142052142372%_
                     (let () (declare (not safe)) (##car _%e142051142369%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142052142372%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142052142372%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142053142374%_))
                            (let ((_%e142054142377%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142053142374%_))))
                              (let ((_%tl142056142382%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142054142377%_)))
                                    (_%hd142055142380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142054142377%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142056142382%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142050142366%_))
                                        (letrec ((_%loop142042142385%_
                                                  (lambda (_%hd142040142388%_
                                                           _%xarg142046142390%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142040142388%_))
                                                        (let ((_%e142043142393%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142040142388%_))))
                  (let ((_%lp-tl142045142398%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142043142393%_)))
                        (_%lp-hd142044142396%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142043142393%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142044142396%_))
                        (let ((_%e142057142401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142044142396%_))))
                          (let ((_%tl142059142406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142057142401%_)))
                                (_%hd142058142404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142057142401%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142058142404%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142058142404%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142059142406%_))
                                        (let ((_%e142060142409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142059142406%_))))
                                          (let ((_%tl142062142414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142060142409%_)))
                                                (_%hd142061142412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142060142409%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142062142414%_))
                                                (_%loop142042142385%_
                                                 _%lp-tl142045142398%_
                                                 (cons _%hd142061142412%_
                                                       _%xarg142046142390%_))
                                                (_%__match144380144381%_
                                                 _%e142003142260%_
                                                 _%hd142004142263%_
                                                 _%tl142005142265%_
                                                 _%e142015142292%_
                                                 _%hd142016142295%_
                                                 _%tl142017142297%_
                                                 _%e142018142300%_
                                                 _%hd142019142303%_
                                                 _%tl142020142305%_
                                                 _%e142021142308%_
                                                 _%hd142022142311%_
                                                 _%tl142023142313%_
                                                 _%e142024142316%_
                                                 _%hd142025142319%_
                                                 _%tl142026142321%_
                                                 _%e142027142324%_
                                                 _%hd142028142327%_
                                                 _%tl142029142329%_
                                                 _%e142030142332%_
                                                 _%hd142031142335%_
                                                 _%tl142032142337%_
                                                 _%e142033142340%_
                                                 _%hd142034142343%_
                                                 _%tl142035142345%_
                                                 _%e142036142348%_
                                                 _%hd142037142351%_
                                                 _%tl142038142353%_))))
                                        (_%__match144380144381%_
                                         _%e142003142260%_
                                         _%hd142004142263%_
                                         _%tl142005142265%_
                                         _%e142015142292%_
                                         _%hd142016142295%_
                                         _%tl142017142297%_
                                         _%e142018142300%_
                                         _%hd142019142303%_
                                         _%tl142020142305%_
                                         _%e142021142308%_
                                         _%hd142022142311%_
                                         _%tl142023142313%_
                                         _%e142024142316%_
                                         _%hd142025142319%_
                                         _%tl142026142321%_
                                         _%e142027142324%_
                                         _%hd142028142327%_
                                         _%tl142029142329%_
                                         _%e142030142332%_
                                         _%hd142031142335%_
                                         _%tl142032142337%_
                                         _%e142033142340%_
                                         _%hd142034142343%_
                                         _%tl142035142345%_
                                         _%e142036142348%_
                                         _%hd142037142351%_
                                         _%tl142038142353%_))
                                    (_%__match144380144381%_
                                     _%e142003142260%_
                                     _%hd142004142263%_
                                     _%tl142005142265%_
                                     _%e142015142292%_
                                     _%hd142016142295%_
                                     _%tl142017142297%_
                                     _%e142018142300%_
                                     _%hd142019142303%_
                                     _%tl142020142305%_
                                     _%e142021142308%_
                                     _%hd142022142311%_
                                     _%tl142023142313%_
                                     _%e142024142316%_
                                     _%hd142025142319%_
                                     _%tl142026142321%_
                                     _%e142027142324%_
                                     _%hd142028142327%_
                                     _%tl142029142329%_
                                     _%e142030142332%_
                                     _%hd142031142335%_
                                     _%tl142032142337%_
                                     _%e142033142340%_
                                     _%hd142034142343%_
                                     _%tl142035142345%_
                                     _%e142036142348%_
                                     _%hd142037142351%_
                                     _%tl142038142353%_))
                                (_%__match144380144381%_
                                 _%e142003142260%_
                                 _%hd142004142263%_
                                 _%tl142005142265%_
                                 _%e142015142292%_
                                 _%hd142016142295%_
                                 _%tl142017142297%_
                                 _%e142018142300%_
                                 _%hd142019142303%_
                                 _%tl142020142305%_
                                 _%e142021142308%_
                                 _%hd142022142311%_
                                 _%tl142023142313%_
                                 _%e142024142316%_
                                 _%hd142025142319%_
                                 _%tl142026142321%_
                                 _%e142027142324%_
                                 _%hd142028142327%_
                                 _%tl142029142329%_
                                 _%e142030142332%_
                                 _%hd142031142335%_
                                 _%tl142032142337%_
                                 _%e142033142340%_
                                 _%hd142034142343%_
                                 _%tl142035142345%_
                                 _%e142036142348%_
                                 _%hd142037142351%_
                                 _%tl142038142353%_))))
                        (_%__match144380144381%_
                         _%e142003142260%_
                         _%hd142004142263%_
                         _%tl142005142265%_
                         _%e142015142292%_
                         _%hd142016142295%_
                         _%tl142017142297%_
                         _%e142018142300%_
                         _%hd142019142303%_
                         _%tl142020142305%_
                         _%e142021142308%_
                         _%hd142022142311%_
                         _%tl142023142313%_
                         _%e142024142316%_
                         _%hd142025142319%_
                         _%tl142026142321%_
                         _%e142027142324%_
                         _%hd142028142327%_
                         _%tl142029142329%_
                         _%e142030142332%_
                         _%hd142031142335%_
                         _%tl142032142337%_
                         _%e142033142340%_
                         _%hd142034142343%_
                         _%tl142035142345%_
                         _%e142036142348%_
                         _%hd142037142351%_
                         _%tl142038142353%_))))
                (let ((_%xarg142047142417%_ (reverse _%xarg142046142390%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142017142297%_))
                      (let ((_%L142420%_ _%hd142055142380%_)
                            (_%L142421%_ _%xarg142047142417%_)
                            (_%L142422%_ _%hd142037142351%_)
                            (_%L142423%_ _%hd142028142327%_)
                            (_%L142424%_ _%tl142008142270%_)
                            (_%L142425%_ _%arg142014142289%_))
                        (if (and (let ((__tmp145550
                                        (let ((__tmp145551
                                               (lambda (_%g142468142471%_
                                                        _%g142469142473%_)
                                                 (cons _%g142468142471%_
                                                       _%g142469142473%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145551
                                           '()
                                           _%L142425%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145550))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142424%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142423%_
                                    'apply))
                                 (let ((__tmp145554
                                        (length (let ((__tmp145555
                                                       (lambda (_%g142475142478%_
                                                                _%g142476142480%_)
                                                         (cons _%g142475142478%_
                                                               _%g142476142480%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145555
                                                   '()
                                                   _%L142425%_))))
                                       (__tmp145552
                                        (length (let ((__tmp145553
                                                       (lambda (_%g142482142485%_
                                                                _%g142483142487%_)
                                                         (cons _%g142482142485%_
                                                               _%g142483142487%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145553
                                                   '()
                                                   _%L142421%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145554 __tmp145552))
                                 (let ((__tmp145558
                                        (let ((__tmp145559
                                               (lambda (_%g142489142492%_
                                                        _%g142490142494%_)
                                                 (cons _%g142489142492%_
                                                       _%g142490142494%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145559
                                           '()
                                           _%L142425%_)))
                                       (__tmp145556
                                        (let ((__tmp145557
                                               (lambda (_%g142496142499%_
                                                        _%g142497142501%_)
                                                 (cons _%g142496142499%_
                                                       _%g142497142501%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145557
                                           '()
                                           _%L142421%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145558
                                    __tmp145556))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142424%_
                                    _%L142420%_))
                                 (not (let ((__tmp145563
                                             (lambda (_%g142503142505%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g142503142505%_
                                                  _%L142422%_))))
                                            (__tmp145560
                                             (let ((__tmp145562
                                                    (lambda (_%g142507142510%_
                                                             _%g142508142512%_)
                                                      (cons _%g142507142510%_
                                                            _%g142508142512%_)))
                                                   (__tmp145561
                                                    (cons _%L142424%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145562
                                                __tmp145561
                                                _%L142425%_))))
                                        (declare (not safe))
                                        (__find __tmp145563 __tmp145560))))
                            (_%__kont144275144276%_
                             _%L142420%_
                             _%L142421%_
                             _%L142422%_
                             _%L142423%_
                             _%L142424%_
                             _%L142425%_)
                            (_%__match144380144381%_
                             _%e142003142260%_
                             _%hd142004142263%_
                             _%tl142005142265%_
                             _%e142015142292%_
                             _%hd142016142295%_
                             _%tl142017142297%_
                             _%e142018142300%_
                             _%hd142019142303%_
                             _%tl142020142305%_
                             _%e142021142308%_
                             _%hd142022142311%_
                             _%tl142023142313%_
                             _%e142024142316%_
                             _%hd142025142319%_
                             _%tl142026142321%_
                             _%e142027142324%_
                             _%hd142028142327%_
                             _%tl142029142329%_
                             _%e142030142332%_
                             _%hd142031142335%_
                             _%tl142032142337%_
                             _%e142033142340%_
                             _%hd142034142343%_
                             _%tl142035142345%_
                             _%e142036142348%_
                             _%hd142037142351%_
                             _%tl142038142353%_)))
                      (_%__match144380144381%_
                       _%e142003142260%_
                       _%hd142004142263%_
                       _%tl142005142265%_
                       _%e142015142292%_
                       _%hd142016142295%_
                       _%tl142017142297%_
                       _%e142018142300%_
                       _%hd142019142303%_
                       _%tl142020142305%_
                       _%e142021142308%_
                       _%hd142022142311%_
                       _%tl142023142313%_
                       _%e142024142316%_
                       _%hd142025142319%_
                       _%tl142026142321%_
                       _%e142027142324%_
                       _%hd142028142327%_
                       _%tl142029142329%_
                       _%e142030142332%_
                       _%hd142031142335%_
                       _%tl142032142337%_
                       _%e142033142340%_
                       _%hd142034142343%_
                       _%tl142035142345%_
                       _%e142036142348%_
                       _%hd142037142351%_
                       _%tl142038142353%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop142042142385%_
                                           _%target142039142356%_
                                           '()))
                                        (_%__match144380144381%_
                                         _%e142003142260%_
                                         _%hd142004142263%_
                                         _%tl142005142265%_
                                         _%e142015142292%_
                                         _%hd142016142295%_
                                         _%tl142017142297%_
                                         _%e142018142300%_
                                         _%hd142019142303%_
                                         _%tl142020142305%_
                                         _%e142021142308%_
                                         _%hd142022142311%_
                                         _%tl142023142313%_
                                         _%e142024142316%_
                                         _%hd142025142319%_
                                         _%tl142026142321%_
                                         _%e142027142324%_
                                         _%hd142028142327%_
                                         _%tl142029142329%_
                                         _%e142030142332%_
                                         _%hd142031142335%_
                                         _%tl142032142337%_
                                         _%e142033142340%_
                                         _%hd142034142343%_
                                         _%tl142035142345%_
                                         _%e142036142348%_
                                         _%hd142037142351%_
                                         _%tl142038142353%_))
                                    (_%__match144380144381%_
                                     _%e142003142260%_
                                     _%hd142004142263%_
                                     _%tl142005142265%_
                                     _%e142015142292%_
                                     _%hd142016142295%_
                                     _%tl142017142297%_
                                     _%e142018142300%_
                                     _%hd142019142303%_
                                     _%tl142020142305%_
                                     _%e142021142308%_
                                     _%hd142022142311%_
                                     _%tl142023142313%_
                                     _%e142024142316%_
                                     _%hd142025142319%_
                                     _%tl142026142321%_
                                     _%e142027142324%_
                                     _%hd142028142327%_
                                     _%tl142029142329%_
                                     _%e142030142332%_
                                     _%hd142031142335%_
                                     _%tl142032142337%_
                                     _%e142033142340%_
                                     _%hd142034142343%_
                                     _%tl142035142345%_
                                     _%e142036142348%_
                                     _%hd142037142351%_
                                     _%tl142038142353%_))))
                            (_%__match144380144381%_
                             _%e142003142260%_
                             _%hd142004142263%_
                             _%tl142005142265%_
                             _%e142015142292%_
                             _%hd142016142295%_
                             _%tl142017142297%_
                             _%e142018142300%_
                             _%hd142019142303%_
                             _%tl142020142305%_
                             _%e142021142308%_
                             _%hd142022142311%_
                             _%tl142023142313%_
                             _%e142024142316%_
                             _%hd142025142319%_
                             _%tl142026142321%_
                             _%e142027142324%_
                             _%hd142028142327%_
                             _%tl142029142329%_
                             _%e142030142332%_
                             _%hd142031142335%_
                             _%tl142032142337%_
                             _%e142033142340%_
                             _%hd142034142343%_
                             _%tl142035142345%_
                             _%e142036142348%_
                             _%hd142037142351%_
                             _%tl142038142353%_))
                        (_%__match144380144381%_
                         _%e142003142260%_
                         _%hd142004142263%_
                         _%tl142005142265%_
                         _%e142015142292%_
                         _%hd142016142295%_
                         _%tl142017142297%_
                         _%e142018142300%_
                         _%hd142019142303%_
                         _%tl142020142305%_
                         _%e142021142308%_
                         _%hd142022142311%_
                         _%tl142023142313%_
                         _%e142024142316%_
                         _%hd142025142319%_
                         _%tl142026142321%_
                         _%e142027142324%_
                         _%hd142028142327%_
                         _%tl142029142329%_
                         _%e142030142332%_
                         _%hd142031142335%_
                         _%tl142032142337%_
                         _%e142033142340%_
                         _%hd142034142343%_
                         _%tl142035142345%_
                         _%e142036142348%_
                         _%hd142037142351%_
                         _%tl142038142353%_))
                    (_%__match144380144381%_
                     _%e142003142260%_
                     _%hd142004142263%_
                     _%tl142005142265%_
                     _%e142015142292%_
                     _%hd142016142295%_
                     _%tl142017142297%_
                     _%e142018142300%_
                     _%hd142019142303%_
                     _%tl142020142305%_
                     _%e142021142308%_
                     _%hd142022142311%_
                     _%tl142023142313%_
                     _%e142024142316%_
                     _%hd142025142319%_
                     _%tl142026142321%_
                     _%e142027142324%_
                     _%hd142028142327%_
                     _%tl142029142329%_
                     _%e142030142332%_
                     _%hd142031142335%_
                     _%tl142032142337%_
                     _%e142033142340%_
                     _%hd142034142343%_
                     _%tl142035142345%_
                     _%e142036142348%_
                     _%hd142037142351%_
                     _%tl142038142353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144380144381%_
                                                     _%e142003142260%_
                                                     _%hd142004142263%_
                                                     _%tl142005142265%_
                                                     _%e142015142292%_
                                                     _%hd142016142295%_
                                                     _%tl142017142297%_
                                                     _%e142018142300%_
                                                     _%hd142019142303%_
                                                     _%tl142020142305%_
                                                     _%e142021142308%_
                                                     _%hd142022142311%_
                                                     _%tl142023142313%_
                                                     _%e142024142316%_
                                                     _%hd142025142319%_
                                                     _%tl142026142321%_
                                                     _%e142027142324%_
                                                     _%hd142028142327%_
                                                     _%tl142029142329%_
                                                     _%e142030142332%_
                                                     _%hd142031142335%_
                                                     _%tl142032142337%_
                                                     _%e142033142340%_
                                                     _%hd142034142343%_
                                                     _%tl142035142345%_
                                                     _%e142036142348%_
                                                     _%hd142037142351%_
                                                     _%tl142038142353%_))))
                                            (_%__match144380144381%_
                                             _%e142003142260%_
                                             _%hd142004142263%_
                                             _%tl142005142265%_
                                             _%e142015142292%_
                                             _%hd142016142295%_
                                             _%tl142017142297%_
                                             _%e142018142300%_
                                             _%hd142019142303%_
                                             _%tl142020142305%_
                                             _%e142021142308%_
                                             _%hd142022142311%_
                                             _%tl142023142313%_
                                             _%e142024142316%_
                                             _%hd142025142319%_
                                             _%tl142026142321%_
                                             _%e142027142324%_
                                             _%hd142028142327%_
                                             _%tl142029142329%_
                                             _%e142030142332%_
                                             _%hd142031142335%_
                                             _%tl142032142337%_
                                             _%e142033142340%_
                                             _%hd142034142343%_
                                             _%tl142035142345%_
                                             _%e142036142348%_
                                             _%hd142037142351%_
                                             _%tl142038142353%_))))
                                    (_%__match144380144381%_
                                     _%e142003142260%_
                                     _%hd142004142263%_
                                     _%tl142005142265%_
                                     _%e142015142292%_
                                     _%hd142016142295%_
                                     _%tl142017142297%_
                                     _%e142018142300%_
                                     _%hd142019142303%_
                                     _%tl142020142305%_
                                     _%e142021142308%_
                                     _%hd142022142311%_
                                     _%tl142023142313%_
                                     _%e142024142316%_
                                     _%hd142025142319%_
                                     _%tl142026142321%_
                                     _%e142027142324%_
                                     _%hd142028142327%_
                                     _%tl142029142329%_
                                     _%e142030142332%_
                                     _%hd142031142335%_
                                     _%tl142032142337%_
                                     _%e142033142340%_
                                     _%hd142034142343%_
                                     _%tl142035142345%_
                                     _%e142036142348%_
                                     _%hd142037142351%_
                                     _%tl142038142353%_))
                                (_%__match144380144381%_
                                 _%e142003142260%_
                                 _%hd142004142263%_
                                 _%tl142005142265%_
                                 _%e142015142292%_
                                 _%hd142016142295%_
                                 _%tl142017142297%_
                                 _%e142018142300%_
                                 _%hd142019142303%_
                                 _%tl142020142305%_
                                 _%e142021142308%_
                                 _%hd142022142311%_
                                 _%tl142023142313%_
                                 _%e142024142316%_
                                 _%hd142025142319%_
                                 _%tl142026142321%_
                                 _%e142027142324%_
                                 _%hd142028142327%_
                                 _%tl142029142329%_
                                 _%e142030142332%_
                                 _%hd142031142335%_
                                 _%tl142032142337%_
                                 _%e142033142340%_
                                 _%hd142034142343%_
                                 _%tl142035142345%_
                                 _%e142036142348%_
                                 _%hd142037142351%_
                                 _%tl142038142353%_))
                            (_%__kont144283144284%_))))
                    (_%__kont144283144284%_))
                (_%__kont144283144284%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144283144284%_))))
                                            (_%__kont144283144284%_))))
                                    (_%__kont144283144284%_))
                                (_%__kont144283144284%_))))
                        (_%__kont144283144284%_))
                    (_%__kont144283144284%_))
                (_%__kont144283144284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144283144284%_))))
                                        (_%__kont144283144284%_))
                                    (_%__kont144283144284%_))
                                (_%__kont144283144284%_))))
                        (_%__kont144283144284%_))))
                (_%__kont144283144284%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142009142273%_
                                     _%target142006142268%_
                                     '()))))
                               (_%__match144298144299%_
                                (lambda (_%e141955142520%_
                                         _%hd141956142523%_
                                         _%tl141957142525%_
                                         _%__splice144271144272%_
                                         _%target141958142528%_
                                         _%tl141960142530%_)
                                  (letrec ((_%loop141961142533%_
                                            (lambda (_%hd141959142536%_
                                                     _%arg141965142538%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141959142536%_))
                                                  (let ((_%e141962142541%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141959142536%_))))
                                                    (let ((_%lp-tl141964142546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141962142541%_)))
                                                          (_%lp-hd141963142544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141962142541%_))))
                                                      (_%loop141961142533%_
                                                       _%lp-tl141964142546%_
                                                       (cons _%lp-hd141963142544%_
                                                             _%arg141965142538%_))))
                                                  (let ((_%arg141966142549%_
                                                         (reverse _%arg141965142538%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141957142525%_))
                                                        (let ((_%e141967142552%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141957142525%_))))
                  (let ((_%tl141969142557%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141967142552%_)))
                        (_%hd141968142555%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141967142552%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141968142555%_))
                        (let ((_%e141970142560%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141968142555%_))))
                          (let ((_%tl141972142565%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141970142560%_)))
                                (_%hd141971142563%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141970142560%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141971142563%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141971142563%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141972142565%_))
                                        (let ((_%e141973142568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141972142565%_))))
                                          (let ((_%tl141975142573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141973142568%_)))
                                                (_%hd141974142571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141973142568%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141974142571%_))
                                                (let ((_%e141976142576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141974142571%_))))
                                                  (let ((_%tl141978142581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141976142576%_)))
                                                        (_%hd141977142579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141976142576%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141977142579%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141977142579%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141978142581%_))
                        (let ((_%e141979142584%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141978142581%_))))
                          (let ((_%tl141981142589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141979142584%_)))
                                (_%hd141980142587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141979142584%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141981142589%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141975142573%_))
                                    (let ((_%__splice144273144274%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141975142573%_
                                              '0))))
                                      (let ((_%tl141984142594%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144273144274%_
                                                '1)))
                                            (_%target141982142592%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144273144274%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141984142594%_))
                                            (letrec ((_%loop141985142597%_
                                                      (lambda (_%hd141983142600%_
                                                               _%xarg141989142602%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141983142600%_))
                                                            (let ((_%e141986142605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141983142600%_))))
                      (let ((_%lp-tl141988142610%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141986142605%_)))
                            (_%lp-hd141987142608%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141986142605%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141987142608%_))
                            (let ((_%e141991142613%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141987142608%_))))
                              (let ((_%tl141993142618%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141991142613%_)))
                                    (_%hd141992142616%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141991142613%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141992142616%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141992142616%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141993142618%_))
                                            (let ((_%e141994142621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141993142618%_))))
                                              (let ((_%tl141996142626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141994142621%_)))
                                                    (_%hd141995142624%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141994142621%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141996142626%_))
                                                    (_%loop141985142597%_
                                                     _%lp-tl141988142610%_
                                                     (cons _%hd141995142624%_
                                                           _%xarg141989142602%_))
                                                    (_%__match144310144311%_
                                                     _%e141955142520%_
                                                     _%hd141956142523%_
                                                     _%tl141957142525%_
                                                     _%__splice144271144272%_
                                                     _%target141958142528%_
                                                     _%tl141960142530%_))))
                                            (_%__match144310144311%_
                                             _%e141955142520%_
                                             _%hd141956142523%_
                                             _%tl141957142525%_
                                             _%__splice144271144272%_
                                             _%target141958142528%_
                                             _%tl141960142530%_))
                                        (_%__match144310144311%_
                                         _%e141955142520%_
                                         _%hd141956142523%_
                                         _%tl141957142525%_
                                         _%__splice144271144272%_
                                         _%target141958142528%_
                                         _%tl141960142530%_))
                                    (_%__match144310144311%_
                                     _%e141955142520%_
                                     _%hd141956142523%_
                                     _%tl141957142525%_
                                     _%__splice144271144272%_
                                     _%target141958142528%_
                                     _%tl141960142530%_))))
                            (_%__match144310144311%_
                             _%e141955142520%_
                             _%hd141956142523%_
                             _%tl141957142525%_
                             _%__splice144271144272%_
                             _%target141958142528%_
                             _%tl141960142530%_))))
                    (let ((_%xarg141990142629%_
                           (reverse _%xarg141989142602%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141969142557%_))
                          (let ((_%L142632%_ _%xarg141990142629%_)
                                (_%L142633%_ _%hd141980142587%_)
                                (_%L142634%_ _%arg141966142549%_))
                            (if (and (let ((__tmp145564
                                            (let ((__tmp145565
                                                   (lambda (_%g142662142665%_
                                                            _%g142663142667%_)
                                                     (cons _%g142662142665%_
                                                           _%g142663142667%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145565
                                               '()
                                               _%L142634%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145564))
                                     (let ((__tmp145568
                                            (length (let ((__tmp145569
                                                           (lambda (_%g142669142672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142670142674%_)
                     (cons _%g142669142672%_ _%g142670142674%_))))
              (declare (not safe))
              (__foldr1 __tmp145569 '() _%L142634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145566
                                            (length (let ((__tmp145567
                                                           (lambda (_%g142676142679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142677142681%_)
                     (cons _%g142676142679%_ _%g142677142681%_))))
              (declare (not safe))
              (__foldr1 __tmp145567 '() _%L142632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145568 __tmp145566))
                                     (let ((__tmp145572
                                            (let ((__tmp145573
                                                   (lambda (_%g142683142686%_
                                                            _%g142684142688%_)
                                                     (cons _%g142683142686%_
                                                           _%g142684142688%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145573
                                               '()
                                               _%L142634%_)))
                                           (__tmp145570
                                            (let ((__tmp145571
                                                   (lambda (_%g142690142693%_
                                                            _%g142691142695%_)
                                                     (cons _%g142690142693%_
                                                           _%g142691142695%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145571
                                               '()
                                               _%L142632%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145572
                                        __tmp145570))
                                     (not (let ((__tmp145576
                                                 (lambda (_%g142697142699%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g142697142699%_
                                                      _%L142633%_))))
                                                (__tmp145574
                                                 (let ((__tmp145575
                                                        (lambda (_%g142701142704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g142702142706%_)
                  (cons _%g142701142704%_ _%g142702142706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp145575
                                                    '()
                                                    _%L142634%_))))
                                            (declare (not safe))
                                            (__find __tmp145576 __tmp145574))))
                                (_%__kont144269144270%_
                                 _%L142632%_
                                 _%L142633%_
                                 _%L142634%_)
                                (_%__match144310144311%_
                                 _%e141955142520%_
                                 _%hd141956142523%_
                                 _%tl141957142525%_
                                 _%__splice144271144272%_
                                 _%target141958142528%_
                                 _%tl141960142530%_)))
                          (_%__match144310144311%_
                           _%e141955142520%_
                           _%hd141956142523%_
                           _%tl141957142525%_
                           _%__splice144271144272%_
                           _%target141958142528%_
                           _%tl141960142530%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141985142597%_
                                               _%target141982142592%_
                                               '()))
                                            (_%__match144310144311%_
                                             _%e141955142520%_
                                             _%hd141956142523%_
                                             _%tl141957142525%_
                                             _%__splice144271144272%_
                                             _%target141958142528%_
                                             _%tl141960142530%_))))
                                    (_%__match144310144311%_
                                     _%e141955142520%_
                                     _%hd141956142523%_
                                     _%tl141957142525%_
                                     _%__splice144271144272%_
                                     _%target141958142528%_
                                     _%tl141960142530%_))
                                (_%__match144310144311%_
                                 _%e141955142520%_
                                 _%hd141956142523%_
                                 _%tl141957142525%_
                                 _%__splice144271144272%_
                                 _%target141958142528%_
                                 _%tl141960142530%_))))
                        (_%__match144310144311%_
                         _%e141955142520%_
                         _%hd141956142523%_
                         _%tl141957142525%_
                         _%__splice144271144272%_
                         _%target141958142528%_
                         _%tl141960142530%_))
                    (_%__match144310144311%_
                     _%e141955142520%_
                     _%hd141956142523%_
                     _%tl141957142525%_
                     _%__splice144271144272%_
                     _%target141958142528%_
                     _%tl141960142530%_))
                (_%__match144310144311%_
                 _%e141955142520%_
                 _%hd141956142523%_
                 _%tl141957142525%_
                 _%__splice144271144272%_
                 _%target141958142528%_
                 _%tl141960142530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144310144311%_
                                                 _%e141955142520%_
                                                 _%hd141956142523%_
                                                 _%tl141957142525%_
                                                 _%__splice144271144272%_
                                                 _%target141958142528%_
                                                 _%tl141960142530%_))))
                                        (_%__match144310144311%_
                                         _%e141955142520%_
                                         _%hd141956142523%_
                                         _%tl141957142525%_
                                         _%__splice144271144272%_
                                         _%target141958142528%_
                                         _%tl141960142530%_))
                                    (_%__match144310144311%_
                                     _%e141955142520%_
                                     _%hd141956142523%_
                                     _%tl141957142525%_
                                     _%__splice144271144272%_
                                     _%target141958142528%_
                                     _%tl141960142530%_))
                                (_%__match144310144311%_
                                 _%e141955142520%_
                                 _%hd141956142523%_
                                 _%tl141957142525%_
                                 _%__splice144271144272%_
                                 _%target141958142528%_
                                 _%tl141960142530%_))))
                        (_%__match144310144311%_
                         _%e141955142520%_
                         _%hd141956142523%_
                         _%tl141957142525%_
                         _%__splice144271144272%_
                         _%target141958142528%_
                         _%tl141960142530%_))))
                (_%__match144310144311%_
                 _%e141955142520%_
                 _%hd141956142523%_
                 _%tl141957142525%_
                 _%__splice144271144272%_
                 _%target141958142528%_
                 _%tl141960142530%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141961142533%_
                                     _%target141958142528%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144267144268%_))
                              (let ((_%e141955142520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144267144268%_))))
                                (let ((_%tl141957142525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141955142520%_)))
                                      (_%hd141956142523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141955142520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141956142523%_))
                                      (let ((_%__splice144271144272%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141956142523%_
                                                '0))))
                                        (let ((_%tl141960142530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144271144272%_
                                                  '1)))
                                              (_%target141958142528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144271144272%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141960142530%_))
                                              (_%__match144298144299%_
                                               _%e141955142520%_
                                               _%hd141956142523%_
                                               _%tl141957142525%_
                                               _%__splice144271144272%_
                                               _%target141958142528%_
                                               _%tl141960142530%_)
                                              (_%__match144310144311%_
                                               _%e141955142520%_
                                               _%hd141956142523%_
                                               _%tl141957142525%_
                                               _%__splice144271144272%_
                                               _%target141958142528%_
                                               _%tl141960142530%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141957142525%_))
                                          (let ((_%e142070142127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141957142525%_))))
                                            (let ((_%tl142072142132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142070142127%_)))
                                                  (_%hd142071142130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142070142127%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142071142130%_))
                                                  (let ((_%e142073142135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142071142130%_))))
                                                    (let ((_%tl142075142140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142073142135%_)))
                                                          (_%hd142074142138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142073142135%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142074142138%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142074142138%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142075142140%_))
                          (let ((_%e142076142143%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142075142140%_))))
                            (let ((_%tl142078142148%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142076142143%_)))
                                  (_%hd142077142146%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142076142143%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142077142146%_))
                                  (let ((_%e142079142151%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142077142146%_))))
                                    (let ((_%tl142081142156%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142079142151%_)))
                                          (_%hd142080142154%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142079142151%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142080142154%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142080142154%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142081142156%_))
                                                  (let ((_%e142082142159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142081142156%_))))
                                                    (let ((_%tl142084142164%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142082142159%_)))
                                                          (_%hd142083142162%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142082142159%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142084142164%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142078142148%_))
                      (let ((_%e142085142167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142078142148%_))))
                        (let ((_%tl142087142172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142085142167%_)))
                              (_%hd142086142170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142085142167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142086142170%_))
                              (let ((_%e142088142175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142086142170%_))))
                                (let ((_%tl142090142180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142088142175%_)))
                                      (_%hd142089142178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142088142175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142089142178%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142089142178%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142090142180%_))
                                              (let ((_%e142091142183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142090142180%_))))
                                                (let ((_%tl142093142188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142091142183%_)))
                                                      (_%hd142092142186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142091142183%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142093142188%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142087142172%_))
                                                          (let ((_%e142094142191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142087142172%_))))
                    (let ((_%tl142096142196%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142094142191%_)))
                          (_%hd142095142194%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142094142191%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142095142194%_))
                          (let ((_%e142097142199%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142095142194%_))))
                            (let ((_%tl142099142204%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142097142199%_)))
                                  (_%hd142098142202%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142097142199%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142098142202%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142098142202%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142099142204%_))
                                          (let ((_%e142100142207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142099142204%_))))
                                            (let ((_%tl142102142212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142100142207%_)))
                                                  (_%hd142101142210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142100142207%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142102142212%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142096142196%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142072142132%_))
                                                          (_%__match144408144409%_
                                                           _%e141955142520%_
                                                           _%hd141956142523%_
                                                           _%tl141957142525%_
                                                           _%e142070142127%_
                                                           _%hd142071142130%_
                                                           _%tl142072142132%_
                                                           _%e142073142135%_
                                                           _%hd142074142138%_
                                                           _%tl142075142140%_
                                                           _%e142076142143%_
                                                           _%hd142077142146%_
                                                           _%tl142078142148%_
                                                           _%e142079142151%_
                                                           _%hd142080142154%_
                                                           _%tl142081142156%_
                                                           _%e142082142159%_
                                                           _%hd142083142162%_
                                                           _%tl142084142164%_
                                                           _%e142085142167%_
                                                           _%hd142086142170%_
                                                           _%tl142087142172%_
                                                           _%e142088142175%_
                                                           _%hd142089142178%_
                                                           _%tl142090142180%_
                                                           _%e142091142183%_
                                                           _%hd142092142186%_
                                                           _%tl142093142188%_
                                                           _%e142094142191%_
                                                           _%hd142095142194%_
                                                           _%tl142096142196%_
                                                           _%e142097142199%_
                                                           _%hd142098142202%_
                                                           _%tl142099142204%_
                                                           _%e142100142207%_
                                                           _%hd142101142210%_
                                                           _%tl142102142212%_)
                                                          (_%__kont144283144284%_))
                                                      (_%__kont144283144284%_))
                                                  (_%__kont144283144284%_))))
                                          (_%__kont144283144284%_))
                                      (_%__kont144283144284%_))
                                  (_%__kont144283144284%_))))
                          (_%__kont144283144284%_))))
                  (_%__kont144283144284%_))
              (_%__kont144283144284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144283144284%_))
                                          (_%__kont144283144284%_))
                                      (_%__kont144283144284%_))))
                              (_%__kont144283144284%_))))
                      (_%__kont144283144284%_))
                  (_%__kont144283144284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144283144284%_))
                                              (_%__kont144283144284%_))
                                          (_%__kont144283144284%_))))
                                  (_%__kont144283144284%_))))
                          (_%__kont144283144284%_))
                      (_%__kont144283144284%_))
                  (_%__kont144283144284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144283144284%_))))
                                          (_%__kont144283144284%_)))))
                              (_%__kont144283144284%_)))))))
                 (_%dispatch-case-e141255%_
                  (lambda (_%hd141406%_ _%body141407%_)
                    (let* ((_%form141409%_
                            (cons _%hd141406%_ (cons _%body141407%_ '())))
                           (_%__stx144411144412%_ _%form141409%_)
                           (_%g141413141537%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144411144412%_)))))
                      (let ((_%__kont144413144414%_
                             (lambda (_%L141908%_ _%L141909%_ _%L141910%_)
                               (let ((__tmp145577
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141909%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141251%_
                                  __tmp145577))))
                            (_%__kont144419144420%_
                             (lambda (_%L141756%_
                                      _%L141757%_
                                      _%L141758%_
                                      _%L141759%_)
                               (let ((__tmp145578
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141756%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141251%_
                                  __tmp145578))))
                            (_%__kont144423144424%_
                             (lambda (_%L141622%_ _%L141623%_ _%L141624%_)
                               (let ((__tmp145579
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141622%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141251%_
                                  __tmp145579)))))
                        (let* ((_%__match144520144521%_
                                (lambda (_%e141503141542%_
                                         _%hd141504141545%_
                                         _%tl141505141547%_
                                         _%e141506141550%_
                                         _%hd141507141553%_
                                         _%tl141508141555%_
                                         _%e141509141558%_
                                         _%hd141510141561%_
                                         _%tl141511141563%_
                                         _%e141512141566%_
                                         _%hd141513141569%_
                                         _%tl141514141571%_
                                         _%e141515141574%_
                                         _%hd141516141577%_
                                         _%tl141517141579%_
                                         _%e141518141582%_
                                         _%hd141519141585%_
                                         _%tl141520141587%_
                                         _%e141521141590%_
                                         _%hd141522141593%_
                                         _%tl141523141595%_
                                         _%e141524141598%_
                                         _%hd141525141601%_
                                         _%tl141526141603%_
                                         _%e141527141606%_
                                         _%hd141528141609%_
                                         _%tl141529141611%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141523141595%_))
                                      (let ((_%e141530141614%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141523141595%_))))
                                        (let ((_%tl141532141619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141530141614%_)))
                                              (_%hd141531141617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141530141614%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141532141619%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141508141555%_))
                                                  (_%__kont144423144424%_
                                                   _%hd141528141609%_
                                                   _%hd141519141585%_
                                                   _%hd141504141545%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141413141537%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141413141537%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141413141537%_)))))
                               (_%__match144450144451%_
                                (lambda (_%e141464141660%_
                                         _%hd141465141663%_
                                         _%tl141466141665%_
                                         _%__splice144421144422%_
                                         _%target141467141668%_
                                         _%tl141469141670%_)
                                  (letrec ((_%loop141470141673%_
                                            (lambda (_%hd141468141676%_
                                                     _%arg141474141678%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141468141676%_))
                                                  (let ((_%e141471141681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141468141676%_))))
                                                    (let ((_%lp-tl141473141686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141471141681%_)))
                                                          (_%lp-hd141472141684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141471141681%_))))
                                                      (_%loop141470141673%_
                                                       _%lp-tl141473141686%_
                                                       (cons _%lp-hd141472141684%_
                                                             _%arg141474141678%_))))
                                                  (let ((_%arg141475141689%_
                                                         (reverse _%arg141474141678%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141466141665%_))
                                                        (let ((_%e141476141692%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141466141665%_))))
                  (let ((_%tl141478141697%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141476141692%_)))
                        (_%hd141477141695%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141476141692%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141477141695%_))
                        (let ((_%e141479141700%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141477141695%_))))
                          (let ((_%tl141481141705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141479141700%_)))
                                (_%hd141480141703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141479141700%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141480141703%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141480141703%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141481141705%_))
                                        (let ((_%e141482141708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141481141705%_))))
                                          (let ((_%tl141484141713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141482141708%_)))
                                                (_%hd141483141711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141482141708%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141483141711%_))
                                                (let ((_%e141485141716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141483141711%_))))
                                                  (let ((_%tl141487141721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141485141716%_)))
                                                        (_%hd141486141719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141485141716%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141486141719%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141486141719%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141487141721%_))
                        (let ((_%e141488141724%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141487141721%_))))
                          (let ((_%tl141490141729%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141488141724%_)))
                                (_%hd141489141727%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141488141724%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141490141729%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141484141713%_))
                                    (let ((_%e141491141732%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141484141713%_))))
                                      (let ((_%tl141493141737%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141491141732%_)))
                                            (_%hd141492141735%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141491141732%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141492141735%_))
                                            (let ((_%e141494141740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141492141735%_))))
                                              (let ((_%tl141496141745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141494141740%_)))
                                                    (_%hd141495141743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141494141740%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141495141743%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141495141743%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141496141745%_))
                                                            (let ((_%e141497141748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141496141745%_))))
                      (let ((_%tl141499141753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141497141748%_)))
                            (_%hd141498141751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141497141748%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141499141753%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141478141697%_))
                                (_%__kont144419144420%_
                                 _%hd141498141751%_
                                 _%hd141489141727%_
                                 _%tl141469141670%_
                                 _%arg141475141689%_)
                                (_%__match144520144521%_
                                 _%e141464141660%_
                                 _%hd141465141663%_
                                 _%tl141466141665%_
                                 _%e141476141692%_
                                 _%hd141477141695%_
                                 _%tl141478141697%_
                                 _%e141479141700%_
                                 _%hd141480141703%_
                                 _%tl141481141705%_
                                 _%e141482141708%_
                                 _%hd141483141711%_
                                 _%tl141484141713%_
                                 _%e141485141716%_
                                 _%hd141486141719%_
                                 _%tl141487141721%_
                                 _%e141488141724%_
                                 _%hd141489141727%_
                                 _%tl141490141729%_
                                 _%e141491141732%_
                                 _%hd141492141735%_
                                 _%tl141493141737%_
                                 _%e141494141740%_
                                 _%hd141495141743%_
                                 _%tl141496141745%_
                                 _%e141497141748%_
                                 _%hd141498141751%_
                                 _%tl141499141753%_))
                            (let ()
                              (declare (not safe))
                              (_%g141413141537%_)))))
                    (let () (declare (not safe)) (_%g141413141537%_)))
                (let () (declare (not safe)) (_%g141413141537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141413141537%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141413141537%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141413141537%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141413141537%_)))))
                        (let () (declare (not safe)) (_%g141413141537%_)))
                    (let () (declare (not safe)) (_%g141413141537%_)))
                (let () (declare (not safe)) (_%g141413141537%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141413141537%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141413141537%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141413141537%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141413141537%_)))))
                        (let () (declare (not safe)) (_%g141413141537%_)))))
                (let () (declare (not safe)) (_%g141413141537%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141470141673%_
                                     _%target141467141668%_
                                     '()))))
                               (_%__match144438144439%_
                                (lambda (_%e141418141796%_
                                         _%hd141419141799%_
                                         _%tl141420141801%_
                                         _%__splice144415144416%_
                                         _%target141421141804%_
                                         _%tl141423141806%_)
                                  (letrec ((_%loop141424141809%_
                                            (lambda (_%hd141422141812%_
                                                     _%arg141428141814%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141422141812%_))
                                                  (let ((_%e141425141817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141422141812%_))))
                                                    (let ((_%lp-tl141427141822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141425141817%_)))
                                                          (_%lp-hd141426141820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141425141817%_))))
                                                      (_%loop141424141809%_
                                                       _%lp-tl141427141822%_
                                                       (cons _%lp-hd141426141820%_
                                                             _%arg141428141814%_))))
                                                  (let ((_%arg141429141825%_
                                                         (reverse _%arg141428141814%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141420141801%_))
                                                        (let ((_%e141430141828%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141420141801%_))))
                  (let ((_%tl141432141833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141430141828%_)))
                        (_%hd141431141831%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141430141828%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141431141831%_))
                        (let ((_%e141433141836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141431141831%_))))
                          (let ((_%tl141435141841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141433141836%_)))
                                (_%hd141434141839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141433141836%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141434141839%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141434141839%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141435141841%_))
                                        (let ((_%e141436141844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141435141841%_))))
                                          (let ((_%tl141438141849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141436141844%_)))
                                                (_%hd141437141847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141436141844%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141437141847%_))
                                                (let ((_%e141439141852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141437141847%_))))
                                                  (let ((_%tl141441141857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141439141852%_)))
                                                        (_%hd141440141855%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141439141852%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141440141855%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141440141855%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141441141857%_))
                        (let ((_%e141442141860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141441141857%_))))
                          (let ((_%tl141444141865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141442141860%_)))
                                (_%hd141443141863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141442141860%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141444141865%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141438141849%_))
                                    (let ((_%__splice144417144418%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141438141849%_
                                              '0))))
                                      (let ((_%tl141447141870%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144417144418%_
                                                '1)))
                                            (_%target141445141868%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144417144418%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141447141870%_))
                                            (letrec ((_%loop141448141873%_
                                                      (lambda (_%hd141446141876%_
                                                               _%xarg141452141878%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141446141876%_))
                                                            (let ((_%e141449141881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141446141876%_))))
                      (let ((_%lp-tl141451141886%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141449141881%_)))
                            (_%lp-hd141450141884%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141449141881%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141450141884%_))
                            (let ((_%e141454141889%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141450141884%_))))
                              (let ((_%tl141456141894%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141454141889%_)))
                                    (_%hd141455141892%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141454141889%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141455141892%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141455141892%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141456141894%_))
                                            (let ((_%e141457141897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141456141894%_))))
                                              (let ((_%tl141459141902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141457141897%_)))
                                                    (_%hd141458141900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141457141897%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141459141902%_))
                                                    (_%loop141448141873%_
                                                     _%lp-tl141451141886%_
                                                     (cons _%hd141458141900%_
                                                           _%xarg141452141878%_))
                                                    (_%__match144450144451%_
                                                     _%e141418141796%_
                                                     _%hd141419141799%_
                                                     _%tl141420141801%_
                                                     _%__splice144415144416%_
                                                     _%target141421141804%_
                                                     _%tl141423141806%_))))
                                            (_%__match144450144451%_
                                             _%e141418141796%_
                                             _%hd141419141799%_
                                             _%tl141420141801%_
                                             _%__splice144415144416%_
                                             _%target141421141804%_
                                             _%tl141423141806%_))
                                        (_%__match144450144451%_
                                         _%e141418141796%_
                                         _%hd141419141799%_
                                         _%tl141420141801%_
                                         _%__splice144415144416%_
                                         _%target141421141804%_
                                         _%tl141423141806%_))
                                    (_%__match144450144451%_
                                     _%e141418141796%_
                                     _%hd141419141799%_
                                     _%tl141420141801%_
                                     _%__splice144415144416%_
                                     _%target141421141804%_
                                     _%tl141423141806%_))))
                            (_%__match144450144451%_
                             _%e141418141796%_
                             _%hd141419141799%_
                             _%tl141420141801%_
                             _%__splice144415144416%_
                             _%target141421141804%_
                             _%tl141423141806%_))))
                    (let ((_%xarg141453141905%_
                           (reverse _%xarg141452141878%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141432141833%_))
                          (_%__kont144413144414%_
                           _%xarg141453141905%_
                           _%hd141443141863%_
                           _%arg141429141825%_)
                          (_%__match144450144451%_
                           _%e141418141796%_
                           _%hd141419141799%_
                           _%tl141420141801%_
                           _%__splice144415144416%_
                           _%target141421141804%_
                           _%tl141423141806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141448141873%_
                                               _%target141445141868%_
                                               '()))
                                            (_%__match144450144451%_
                                             _%e141418141796%_
                                             _%hd141419141799%_
                                             _%tl141420141801%_
                                             _%__splice144415144416%_
                                             _%target141421141804%_
                                             _%tl141423141806%_))))
                                    (_%__match144450144451%_
                                     _%e141418141796%_
                                     _%hd141419141799%_
                                     _%tl141420141801%_
                                     _%__splice144415144416%_
                                     _%target141421141804%_
                                     _%tl141423141806%_))
                                (_%__match144450144451%_
                                 _%e141418141796%_
                                 _%hd141419141799%_
                                 _%tl141420141801%_
                                 _%__splice144415144416%_
                                 _%target141421141804%_
                                 _%tl141423141806%_))))
                        (_%__match144450144451%_
                         _%e141418141796%_
                         _%hd141419141799%_
                         _%tl141420141801%_
                         _%__splice144415144416%_
                         _%target141421141804%_
                         _%tl141423141806%_))
                    (_%__match144450144451%_
                     _%e141418141796%_
                     _%hd141419141799%_
                     _%tl141420141801%_
                     _%__splice144415144416%_
                     _%target141421141804%_
                     _%tl141423141806%_))
                (_%__match144450144451%_
                 _%e141418141796%_
                 _%hd141419141799%_
                 _%tl141420141801%_
                 _%__splice144415144416%_
                 _%target141421141804%_
                 _%tl141423141806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144450144451%_
                                                 _%e141418141796%_
                                                 _%hd141419141799%_
                                                 _%tl141420141801%_
                                                 _%__splice144415144416%_
                                                 _%target141421141804%_
                                                 _%tl141423141806%_))))
                                        (_%__match144450144451%_
                                         _%e141418141796%_
                                         _%hd141419141799%_
                                         _%tl141420141801%_
                                         _%__splice144415144416%_
                                         _%target141421141804%_
                                         _%tl141423141806%_))
                                    (_%__match144450144451%_
                                     _%e141418141796%_
                                     _%hd141419141799%_
                                     _%tl141420141801%_
                                     _%__splice144415144416%_
                                     _%target141421141804%_
                                     _%tl141423141806%_))
                                (_%__match144450144451%_
                                 _%e141418141796%_
                                 _%hd141419141799%_
                                 _%tl141420141801%_
                                 _%__splice144415144416%_
                                 _%target141421141804%_
                                 _%tl141423141806%_))))
                        (_%__match144450144451%_
                         _%e141418141796%_
                         _%hd141419141799%_
                         _%tl141420141801%_
                         _%__splice144415144416%_
                         _%target141421141804%_
                         _%tl141423141806%_))))
                (_%__match144450144451%_
                 _%e141418141796%_
                 _%hd141419141799%_
                 _%tl141420141801%_
                 _%__splice144415144416%_
                 _%target141421141804%_
                 _%tl141423141806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141424141809%_
                                     _%target141421141804%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144411144412%_))
                              (let ((_%e141418141796%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144411144412%_))))
                                (let ((_%tl141420141801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141418141796%_)))
                                      (_%hd141419141799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141418141796%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141419141799%_))
                                      (let ((_%__splice144415144416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141419141799%_
                                                '0))))
                                        (let ((_%tl141423141806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144415144416%_
                                                  '1)))
                                              (_%target141421141804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144415144416%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141423141806%_))
                                              (_%__match144438144439%_
                                               _%e141418141796%_
                                               _%hd141419141799%_
                                               _%tl141420141801%_
                                               _%__splice144415144416%_
                                               _%target141421141804%_
                                               _%tl141423141806%_)
                                              (_%__match144450144451%_
                                               _%e141418141796%_
                                               _%hd141419141799%_
                                               _%tl141420141801%_
                                               _%__splice144415144416%_
                                               _%target141421141804%_
                                               _%tl141423141806%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141420141801%_))
                                          (let ((_%e141506141550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141420141801%_))))
                                            (let ((_%tl141508141555%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141506141550%_)))
                                                  (_%hd141507141553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141506141550%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141507141553%_))
                                                  (let ((_%e141509141558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141507141553%_))))
                                                    (let ((_%tl141511141563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141509141558%_)))
                                                          (_%hd141510141561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141509141558%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141510141561%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141510141561%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141511141563%_))
                          (let ((_%e141512141566%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141511141563%_))))
                            (let ((_%tl141514141571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141512141566%_)))
                                  (_%hd141513141569%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141512141566%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141513141569%_))
                                  (let ((_%e141515141574%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141513141569%_))))
                                    (let ((_%tl141517141579%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141515141574%_)))
                                          (_%hd141516141577%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141515141574%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141516141577%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141516141577%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141517141579%_))
                                                  (let ((_%e141518141582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141517141579%_))))
                                                    (let ((_%tl141520141587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141518141582%_)))
                                                          (_%hd141519141585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141518141582%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141520141587%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141514141571%_))
                      (let ((_%e141521141590%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141514141571%_))))
                        (let ((_%tl141523141595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141521141590%_)))
                              (_%hd141522141593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141521141590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141522141593%_))
                              (let ((_%e141524141598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141522141593%_))))
                                (let ((_%tl141526141603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141524141598%_)))
                                      (_%hd141525141601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141524141598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141525141601%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141525141601%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141526141603%_))
                                              (let ((_%e141527141606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141526141603%_))))
                                                (let ((_%tl141529141611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141527141606%_)))
                                                      (_%hd141528141609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141527141606%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141529141611%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141523141595%_))
                                                          (let ((_%e141530141614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141523141595%_))))
                    (let ((_%tl141532141619%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141530141614%_)))
                          (_%hd141531141617%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141530141614%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141532141619%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141508141555%_))
                              (_%__kont144423144424%_
                               _%hd141528141609%_
                               _%hd141519141585%_
                               _%hd141419141799%_)
                              (let ()
                                (declare (not safe))
                                (_%g141413141537%_)))
                          (let () (declare (not safe)) (_%g141413141537%_)))))
                  (let () (declare (not safe)) (_%g141413141537%_)))
              (let () (declare (not safe)) (_%g141413141537%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141413141537%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141413141537%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141413141537%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141413141537%_)))))
                      (let () (declare (not safe)) (_%g141413141537%_)))
                  (let () (declare (not safe)) (_%g141413141537%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141413141537%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141413141537%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141413141537%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141413141537%_)))))
                          (let () (declare (not safe)) (_%g141413141537%_)))
                      (let () (declare (not safe)) (_%g141413141537%_)))
                  (let () (declare (not safe)) (_%g141413141537%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141413141537%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141413141537%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141413141537%_))))))))
                 (_%generate1141256%_
                  (lambda (_%args141391%_
                           _%arglen141392%_
                           _%hd141393%_
                           _%body141394%_)
                    (let* ((_%len141396%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141393%_)))
                           (_%condition141401%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141393%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen141392%_
                                                (cons _%len141396%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen141392%_ (cons _%len141396%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141396%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen141392%_
                                                    (cons _%len141396%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen141392%_ (cons _%len141396%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch141403%_
                            (if (_%dispatch-case?141254%_
                                 _%hd141393%_
                                 _%body141394%_)
                                (_%dispatch-case-e141255%_
                                 _%hd141393%_
                                 _%body141394%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self141251%_
                                 _%hd141393%_
                                 _%body141394%_))))
                      (cons _%condition141401%_
                            (cons (cons 'apply
                                        (cons _%dispatch141403%_
                                              (cons _%args141391%_ '())))
                                  '()))))))
          (let* ((_%g141258141286%_
                  (lambda (_%g141259141283%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141259141283%_))))
                 (_%g141257141388%_
                  (lambda (_%g141259141289%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141259141289%_))
                        (let ((_%e141262141291%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141259141289%_))))
                          (let ((_%hd141263141294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141262141291%_)))
                                (_%tl141264141296%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141262141291%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141264141296%_))
                                (let ((_g145580_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141264141296%_
                                          '0))))
                                  (begin
                                    (let ((_g145581_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145580_)
                                                 (##vector-length _g145580_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145581_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145581_)))
                                    (let ((_%target141265141299%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145580_ 0)))
                                          (_%tl141267141301%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145580_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141267141301%_))
                                          (letrec ((_%loop141268141304%_
                                                    (lambda (_%hd141266141307%_
                                                             _%body141272141309%_
                                                             _%hd141273141311%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141266141307%_))
                                                          (let ((_%e141269141314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141266141307%_))))
                    (let ((_%lp-hd141270141317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141269141314%_)))
                          (_%lp-tl141271141319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141269141314%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141270141317%_))
                          (let ((_%e141276141322%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141270141317%_))))
                            (let ((_%hd141277141325%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141276141322%_)))
                                  (_%tl141278141327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141276141322%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141278141327%_))
                                  (let ((_%e141279141330%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141278141327%_))))
                                    (let ((_%hd141280141333%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141279141330%_)))
                                          (_%tl141281141335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141279141330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141281141335%_))
                                          (_%loop141268141304%_
                                           _%lp-tl141271141319%_
                                           (cons _%hd141280141333%_
                                                 _%body141272141309%_)
                                           (cons _%hd141277141325%_
                                                 _%hd141273141311%_))
                                          (_%g141258141286%_
                                           _%g141259141289%_))))
                                  (_%g141258141286%_ _%g141259141289%_))))
                          (_%g141258141286%_ _%g141259141289%_))))
                  (let ((_%body141274141338%_ (reverse _%body141272141309%_))
                        (_%hd141275141340%_ (reverse _%hd141273141311%_)))
                    ((lambda (_%L141343%_ _%L141344%_)
                       (let ((_%args141363%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141364%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141365%_
                              (let ((_%$e141360%_
                                     (let ((__tmp145582
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145582 _%stx141252%_))))
                                (if _%$e141360%_
                                    _%$e141360%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141363%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args141363%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141363%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145586
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141365%_
                                                                (cons _%args141363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145583
                                  (map (lambda (_%g141366141369%_
                                                _%g141367141371%_)
                                         (_%generate1141256%_
                                          _%args141363%_
                                          _%arglen141364%_
                                          _%g141366141369%_
                                          _%g141367141371%_))
                                       (let ((__tmp145584
                                              (lambda (_%g141373141376%_
                                                       _%g141374141378%_)
                                                (cons _%g141373141376%_
                                                      _%g141374141378%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145584
                                          '()
                                          _%L141344%_))
                                       (let ((__tmp145585
                                              (lambda (_%g141380141383%_
                                                       _%g141381141385%_)
                                                (cons _%g141380141383%_
                                                      _%g141381141385%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145585
                                          '()
                                          _%L141343%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145586 __tmp145583)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141274141338%_
                     _%hd141275141340%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop141268141304%_
                                             _%target141265141299%_
                                             '()
                                             '()))
                                          (_%g141258141286%_
                                           _%g141259141289%_)))))
                                (_%g141258141286%_ _%g141259141289%_))))
                        (_%g141258141286%_ _%g141259141289%_)))))
            (_%g141257141388%_ _%stx141252%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140488%_ _%stx140489%_ _%compiled-body?140490%_)
        (letrec ((_%generate-simple140492%_
                  (lambda (_%hd141236%_ _%body141237%_)
                    (_%coalesce-boolean140493%_
                     (_%simplify-let140494%_
                      (gxc#generate-runtime-simple-let
                       _%self140488%_
                       'let
                       _%hd141236%_
                       _%body141237%_
                       _%compiled-body?140490%_)))))
                 (_%coalesce-boolean140493%_
                  (lambda (_%code141097%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141098141124%_ _%code141097%_)
                               (_%else141100141132%_
                                (lambda () _%code141097%_))
                               (_%K141102141169%_
                                (lambda (_%expr2141135%_
                                         _%expr1141136%_
                                         _%id141137%_)
                                  (let* ((_%expr2141138141146%_
                                          _%expr2141135%_)
                                         (_%else141140141154%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141136%_
                                                        (cons _%expr2141135%_
                                                              '())))))
                                         (_%K141142141159%_
                                          (lambda (_%exprs141157%_)
                                            (cons 'or
                                                  (cons _%expr1141136%_
                                                        _%exprs141157%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141138141146%_))
                                        (let ((_%hd141143141162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141138141146%_)))
                                              (_%tl141144141164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141138141146%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141143141162%_ 'or))
                                              (let ((_%exprs141167%_
                                                     _%tl141144141164%_))
                                                (_%K141142141159%_
                                                 _%exprs141167%_))
                                              (_%else141140141154%_)))
                                        (_%else141140141154%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141098141124%_))
                              (let ((_%hd141103141172%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141098141124%_)))
                                    (_%tl141104141174%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141098141124%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141103141172%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141104141174%_))
                                        (let ((_%hd141105141177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141104141174%_)))
                                              (_%tl141106141179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141104141174%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141105141177%_))
                                              (let ((_%hd141117141182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141105141177%_)))
                                                    (_%tl141118141184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141105141177%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141117141182%_))
                                                    (let ((_%hd141119141187%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141117141182%_)))
                                                          (_%tl141120141189%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141117141182%_))))
                                                      (let ((_%id141192%_
                                                             _%hd141119141187%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141120141189%_))
                                                            (let ((_%hd141121141194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141120141189%_)))
                          (_%tl141122141196%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141120141189%_))))
                      (let ((_%expr1141199%_ _%hd141121141194%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141122141196%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141118141184%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141106141179%_))
                                    (let ((_%hd141107141201%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141106141179%_)))
                                          (_%tl141108141203%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141106141179%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141107141201%_))
                                          (let ((_%hd141109141206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141107141201%_)))
                                                (_%tl141110141208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141107141201%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141109141206%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141110141208%_))
                                                    (let ((_%hd141111141211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141110141208%_)))
                                                          (_%tl141112141213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141110141208%_))))
                                                      (if ((lambda (_%g141215141217%_)
                                                             (eq? _%g141215141217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141192%_))
                   _%hd141111141211%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141112141213%_))
                      (let ((_%hd141113141220%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141112141213%_)))
                            (_%tl141114141222%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141112141213%_))))
                        (if ((lambda (_%g141224141226%_)
                               (eq? _%g141224141226%_ _%id141192%_))
                             _%hd141113141220%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141114141222%_))
                                (let ((_%hd141115141229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141114141222%_)))
                                      (_%tl141116141231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141114141222%_))))
                                  (let ((_%expr2141234%_ _%hd141115141229%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141116141231%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141108141203%_))
                                            (_%K141102141169%_
                                             _%expr2141234%_
                                             _%expr1141199%_
                                             _%id141192%_)
                                            (_%else141100141132%_))
                                        (_%else141100141132%_))))
                                (_%else141100141132%_))
                            (_%else141100141132%_)))
                      (_%else141100141132%_))
                  (_%else141100141132%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141100141132%_))
                                                (_%else141100141132%_)))
                                          (_%else141100141132%_)))
                                    (_%else141100141132%_))
                                (_%else141100141132%_))
                            (_%else141100141132%_))))
                    (_%else141100141132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141100141132%_)))
                                              (_%else141100141132%_)))
                                        (_%else141100141132%_))
                                    (_%else141100141132%_)))
                              (_%else141100141132%_)))
                        _%code141097%_)))
                 (_%simplify-let140494%_
                  (lambda (_%code140796%_)
                    (let* ((_%code140797140869%_ _%code140796%_)
                           (_%else140802140877%_ (lambda () _%code140796%_)))
                      (let ((_%K140861141077%_
                             (lambda (_%expr141075%_) _%expr141075%_))
                            (_%K140844141023%_
                             (lambda (_%body141019%_
                                      _%expr141020%_
                                      _%id141021%_)
                               (cons 'let
                                     (cons (cons (cons _%id141021%_
                                                       (cons _%expr141020%_
                                                             '()))
                                                 '())
                                           _%body141019%_))))
                            (_%K140821140947%_
                             (lambda (_%body140941%_
                                      _%expr2140942%_
                                      _%id2140943%_
                                      _%expr1140944%_
                                      _%id1140945%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140945%_
                                                       (cons _%expr1140944%_
                                                             '()))
                                                 (cons (cons _%id2140943%_
                                                             (cons _%expr2140942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140941%_))))
                            (_%K140804140886%_
                             (lambda (_%body140881%_
                                      _%bind140882%_
                                      _%expr1140883%_
                                      _%id1140884%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140884%_
                                                       (cons _%expr1140883%_
                                                             '()))
                                                 _%bind140882%_)
                                           _%body140881%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140797140869%_))
                            (let ((_%tl140863141082%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140797140869%_)))
                                  (_%hd140862141080%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140797140869%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140862141080%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140863141082%_))
                                      (let ((_%tl140865141087%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140863141082%_)))
                                            (_%hd140864141085%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140863141082%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140864141085%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl140865141087%_))
                                                (let ((_%tl140867141092%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl140865141087%_)))
                                                      (_%hd140866141090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl140865141087%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl140867141092%_))
                                                      (let ((_%expr141095%_
                                                             _%hd140866141090%_))
                                                        (_%K140861141077%_
                                                         _%expr141095%_))
                                                      (_%else140802140877%_)))
                                                (_%else140802140877%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140864141085%_))
                                                (let ((_%tl140856141038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140864141085%_)))
                                                      (_%hd140855141036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140864141085%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140855141036%_))
                                                      (let ((_%tl140858141043%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140855141036%_)))
                    (_%hd140857141041%_
                     (let () (declare (not safe)) (##car _%hd140855141036%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140858141043%_))
                    (let ((_%tl140860141050%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140858141043%_)))
                          (_%hd140859141048%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140858141043%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140860141050%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140856141038%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl140865141087%_))
                                  (let ((_%tl140850141057%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl140865141087%_)))
                                        (_%hd140849141055%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl140865141087%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140849141055%_))
                                        (let ((_%tl140852141062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140849141055%_)))
                                              (_%hd140851141060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140849141055%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140851141060%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140852141062%_))
                                                  (let ((_%tl140854141067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140852141062%_)))
                                                        (_%hd140853141065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140852141062%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140853141065%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140850141057%_))
                                                            (let ((_%id141046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140857141041%_)
                          (_%expr141053%_ _%hd140859141048%_)
                          (_%body141070%_ _%tl140854141067%_))
                      (_%K140844141023%_
                       _%body141070%_
                       _%expr141053%_
                       _%id141046%_))
                    (_%else140802140877%_))
                (if (let () (declare (not safe)) (##pair? _%hd140853141065%_))
                    (let ((_%tl140833140996%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140853141065%_)))
                          (_%hd140832140994%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140853141065%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140832140994%_))
                          (let ((_%tl140835141001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140832140994%_)))
                                (_%hd140834140999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140832140994%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140835141001%_))
                                (let ((_%tl140837141008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140835141001%_)))
                                      (_%hd140836141006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140835141001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140837141008%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140833140996%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140850141057%_))
                                              (let ((_%id1140970%_
                                                     _%hd140857141041%_)
                                                    (_%expr1140977%_
                                                     _%hd140859141048%_)
                                                    (_%id2141004%_
                                                     _%hd140834140999%_)
                                                    (_%expr2141011%_
                                                     _%hd140836141006%_)
                                                    (_%body141013%_
                                                     _%tl140854141067%_))
                                                (_%K140821140947%_
                                                 _%body141013%_
                                                 _%expr2141011%_
                                                 _%id2141004%_
                                                 _%expr1140977%_
                                                 _%id1140970%_))
                                              (_%else140802140877%_))
                                          (_%else140802140877%_))
                                      (_%else140802140877%_)))
                                (_%else140802140877%_)))
                          (_%else140802140877%_)))
                    (_%else140802140877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140802140877%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140851141060%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140852141062%_))
                                                      (let ((_%tl140814140930%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140852141062%_)))
                    (_%hd140813140928%_
                     (let () (declare (not safe)) (##car _%tl140852141062%_))))
                (if (let () (declare (not safe)) (##null? _%tl140850141057%_))
                    (let ((_%id1140909%_ _%hd140857141041%_)
                          (_%expr1140916%_ _%hd140859141048%_)
                          (_%bind140933%_ _%hd140813140928%_)
                          (_%body140935%_ _%tl140814140930%_))
                      (_%K140804140886%_
                       _%body140935%_
                       _%bind140933%_
                       _%expr1140916%_
                       _%id1140909%_))
                    (_%else140802140877%_)))
              (_%else140802140877%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140802140877%_))))
                                        (_%else140802140877%_)))
                                  (_%else140802140877%_))
                              (_%else140802140877%_))
                          (_%else140802140877%_)))
                    (_%else140802140877%_)))
              (_%else140802140877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140802140877%_))))
                                      (_%else140802140877%_))
                                  (_%else140802140877%_)))
                            (_%else140802140877%_))))))
                 (_%generate-values140495%_
                  (lambda (_%hd140609%_ _%body140610%_)
                    (let _%lp140612%_ ((_%rest140614%_ _%hd140609%_)
                                       (_%bind140615%_ '())
                                       (_%check140616%_ '())
                                       (_%post140617%_ '()))
                      (let* ((_%__stx144740144741%_ _%rest140614%_)
                             (_%g140620140631%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144740144741%_)))))
                        (let ((_%__kont144742144743%_
                               (lambda (_%L140658%_ _%L140659%_)
                                 (let* ((_%__stx144696144697%_ _%L140659%_)
                                        (_%g140674140699%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144696144697%_)))))
                                   (let ((_%__kont144698144699%_
                                          (lambda (_%L140772%_ _%L140773%_)
                                            (let ((_%eid140787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140773%_)))
                                                  (_%expr140788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140488%_
                                                      _%L140772%_))))
                                              (_%lp140612%_
                                               _%L140658%_
                                               (cons (cons _%eid140787%_
                                                           (cons _%expr140788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140615%_)
                                               _%check140616%_
                                               _%post140617%_))))
                                         (_%__kont144700144701%_
                                          (lambda (_%L140720%_ _%L140721%_)
                                            (let* ((_%vals140734%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140736%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140734%_
                                                     _%L140721%_
                                                     _%L140720%_))
                                                   (_%refs140738%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140734%_
                                                     _%L140721%_))
                                                   (_%expr140740%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140488%_
                                                       _%L140720%_))))
                                              (_%lp140612%_
                                               _%L140658%_
                                               (cons (cons _%vals140734%_
                                                           (cons _%expr140740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140615%_)
                                               (cons _%check-values140736%_
                                                     _%check140616%_)
                                               (cons _%refs140738%_
                                                     _%post140617%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144696144697%_))
                                         (let ((_%e140678140748%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144696144697%_))))
                                           (let ((_%tl140680140753%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140678140748%_)))
                                                 (_%hd140679140751%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140678140748%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140679140751%_))
                                                 (let ((_%e140681140756%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140679140751%_))))
                                                   (let ((_%tl140683140761%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140681140756%_)))
                                                         (_%hd140682140759%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140681140756%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140683140761%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140680140753%_))
                     (let ((_%e140684140764%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140680140753%_))))
                       (let ((_%tl140686140769%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140684140764%_)))
                             (_%hd140685140767%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140684140764%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140686140769%_))
                             (_%__kont144698144699%_
                              _%hd140685140767%_
                              _%hd140682140759%_)
                             (let ()
                               (declare (not safe))
                               (_%g140674140699%_)))))
                     (let () (declare (not safe)) (_%g140674140699%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140680140753%_))
                     (let ((_%e140692140712%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140680140753%_))))
                       (let ((_%tl140694140717%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140692140712%_)))
                             (_%hd140693140715%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140692140712%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140694140717%_))
                             (_%__kont144700144701%_
                              _%hd140693140715%_
                              _%hd140679140751%_)
                             (let ()
                               (declare (not safe))
                               (_%g140674140699%_)))))
                     (let () (declare (not safe)) (_%g140674140699%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140680140753%_))
                                                     (let ((_%e140692140712%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140680140753%_))))
                                                       (let ((_%tl140694140717%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140692140712%_)))
                     (_%hd140693140715%_
                      (let () (declare (not safe)) (##car _%e140692140712%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140694140717%_))
                     (_%__kont144700144701%_
                      _%hd140693140715%_
                      _%hd140679140751%_)
                     (let () (declare (not safe)) (_%g140674140699%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140674140699%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140674140699%_)))))))
                              (_%__kont144744144745%_
                               (lambda ()
                                 (let* ((_%body140638%_
                                         (if _%compiled-body?140490%_
                                             _%body140610%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140488%_
                                                _%body140610%_))))
                                        (_%body140640%_
                                         (_%generate-values-post140496%_
                                          _%post140617%_
                                          _%body140638%_))
                                        (_%body140642%_
                                         (_%generate-values-check140497%_
                                          _%check140616%_
                                          _%body140640%_)))
                                   (cons 'let
                                         (cons (reverse _%bind140615%_)
                                               (cons _%body140642%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144740144741%_))
                              (let ((_%e140624140650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144740144741%_))))
                                (let ((_%tl140626140655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140624140650%_)))
                                      (_%hd140625140653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140624140650%_))))
                                  (_%__kont144742144743%_
                                   _%tl140626140655%_
                                   _%hd140625140653%_)))
                              (_%__kont144744144745%_)))))))
                 (_%generate-values-post140496%_
                  (lambda (_%post140568%_ _%body140569%_)
                    (let _%lp140571%_ ((_%rest140573%_ _%post140568%_)
                                       (_%body140574%_ _%body140569%_))
                      (let* ((_%rest140575140583%_ _%rest140573%_)
                             (_%else140577140591%_ (lambda () _%body140574%_))
                             (_%K140579140597%_
                              (lambda (_%rest140594%_ _%bind140595%_)
                                (_%lp140571%_
                                 _%rest140594%_
                                 (cons 'let
                                       (cons _%bind140595%_
                                             (cons _%body140574%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140575140583%_))
                            (let ((_%hd140580140600%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140575140583%_)))
                                  (_%tl140581140602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140575140583%_))))
                              (let* ((_%bind140605%_ _%hd140580140600%_)
                                     (_%rest140607%_ _%tl140581140602%_))
                                (_%K140579140597%_
                                 _%rest140607%_
                                 _%bind140605%_)))
                            (_%else140577140591%_))))))
                 (_%generate-values-check140497%_
                  (lambda (_%check140565%_ _%body140566%_)
                    (cons 'begin
                          (let ((__tmp145588 (cons _%body140566%_ '()))
                                (__tmp145587 (reverse _%check140565%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145588 __tmp145587))))))
          (let* ((_%g140499140516%_
                  (lambda (_%g140500140513%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140500140513%_))))
                 (_%g140498140562%_
                  (lambda (_%g140500140519%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140500140519%_))
                        (let ((_%e140503140521%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140500140519%_))))
                          (let ((_%hd140504140524%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140503140521%_)))
                                (_%tl140505140526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140503140521%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140505140526%_))
                                (let ((_%e140506140529%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140505140526%_))))
                                  (let ((_%hd140507140532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140506140529%_)))
                                        (_%tl140508140534%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140506140529%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140508140534%_))
                                        (let ((_%e140509140537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140508140534%_))))
                                          (let ((_%hd140510140540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140509140537%_)))
                                                (_%tl140511140542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140509140537%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140511140542%_))
                                                ((lambda (_%L140545%_
                                                          _%L140546%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140546%_)
                                                       (_%generate-simple140492%_
                                                        _%L140546%_
                                                        _%L140545%_)
                                                       (_%generate-values140495%_
                                                        _%L140546%_
                                                        _%L140545%_)))
                                                 _%hd140510140540%_
                                                 _%hd140507140532%_)
                                                (_%g140499140516%_
                                                 _%g140500140519%_))))
                                        (_%g140499140516%_
                                         _%g140500140519%_))))
                                (_%g140499140516%_ _%g140500140519%_))))
                        (_%g140499140516%_ _%g140500140519%_)))))
            (_%g140498140562%_ _%stx140489%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141242%_ _%stx141243%_)
        (let ((_%compiled-body?141245%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self141242%_
           _%stx141243%_
           _%compiled-body?141245%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145590_
        (let ((_g145589_ (let () (declare (not safe)) (##length _g145590_))))
          (cond ((let () (declare (not safe)) (##fx= _g145589_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g145590_))
                ((let () (declare (not safe)) (##fx= _g145589_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g145590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145590_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140382%_ _%hd140383%_)
        (let _%lp140385%_ ((_%rest140387%_ _%hd140383%_)
                           (_%k140388%_ '0)
                           (_%r140389%_ '()))
          (let* ((_%__stx144754144755%_ _%rest140387%_)
                 (_%g140394140411%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144754144755%_)))))
            (let ((_%__kont144756144757%_
                   (lambda (_%L140474%_)
                     (_%lp140385%_
                      _%L140474%_
                      (let () (declare (not safe)) (##fx+ _%k140388%_ '1))
                      _%r140389%_)))
                  (_%__kont144758144759%_
                   (lambda (_%L140447%_ _%L140448%_)
                     (_%lp140385%_
                      _%L140447%_
                      (let () (declare (not safe)) (##fx+ _%k140388%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L140448%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals140382%_
                                         _%k140388%_
                                         _%L140447%_)
                                        '()))
                            _%r140389%_))))
                  (_%__kont144760144761%_
                   (lambda (_%L140423%_)
                     (let ((__tmp145591
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140423%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals140382%_
                                               _%k140388%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145591 _%r140389%_))))
                  (_%__kont144762144763%_ (lambda () (reverse _%r140389%_))))
              (let ((_%g140392140434%_
                     (lambda ()
                       (let ((_%L140423%_ _%__stx144754144755%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140423%_))
                             (_%__kont144760144761%_ _%L140423%_)
                             (_%__kont144762144763%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144754144755%_))
                    (let ((_%e140397140463%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144754144755%_))))
                      (let ((_%tl140399140468%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140397140463%_)))
                            (_%hd140398140466%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140397140463%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140398140466%_))
                            (let ((_%e140400140471%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140398140466%_))))
                              (if (equal? _%e140400140471%_ '#f)
                                  (_%__kont144756144757%_ _%tl140399140468%_)
                                  (_%__kont144758144759%_
                                   _%tl140399140468%_
                                   _%hd140398140466%_)))
                            (_%__kont144758144759%_
                             _%tl140399140468%_
                             _%hd140398140466%_))))
                    (let () (declare (not safe)) (_%g140392140434%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140061%_ _%stx140062%_ _%compiled-body?140063%_)
        (letrec ((_%generate-simple140065%_
                  (lambda (_%hd140367%_ _%body140368%_)
                    (gxc#generate-runtime-simple-let
                     _%self140061%_
                     'letrec
                     _%hd140367%_
                     _%body140368%_
                     _%compiled-body?140063%_)))
                 (_%generate-values140066%_
                  (lambda (_%hd140146%_ _%body140147%_)
                    (let _%lp140149%_ ((_%rest140151%_ _%hd140146%_)
                                       (_%bind140152%_ '())
                                       (_%check140153%_ '())
                                       (_%post140154%_ '()))
                      (let* ((_%__stx144828144829%_ _%rest140151%_)
                             (_%g140157140168%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144828144829%_)))))
                        (let ((_%__kont144830144831%_
                               (lambda (_%L140195%_ _%L140196%_)
                                 (let* ((_%__stx144784144785%_ _%L140196%_)
                                        (_%g140211140236%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144784144785%_)))))
                                   (let ((_%__kont144786144787%_
                                          (lambda (_%L140343%_ _%L140344%_)
                                            (let ((_%eid140358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140344%_)))
                                                  (_%expr140359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140061%_
                                                      _%L140343%_))))
                                              (_%lp140149%_
                                               _%L140195%_
                                               (cons (cons _%eid140358%_
                                                           (cons _%expr140359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140152%_)
                                               _%check140153%_
                                               _%post140154%_))))
                                         (_%__kont144788144789%_
                                          (lambda (_%L140257%_ _%L140258%_)
                                            (let* ((_%vals140271%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140273%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140271%_
                                                     _%L140258%_
                                                     _%L140257%_))
                                                   (_%refs140275%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140271%_
                                                     _%L140258%_))
                                                   (_%expr140277%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140061%_
                                                       _%L140257%_))))
                                              (_%lp140149%_
                                               _%L140195%_
                                               (let ((__tmp145593
                                                      (cons (cons _%vals140271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr140277%_ '()))
                    _%bind140152%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145592
                                                      (map (lambda (_%e140279140281%_)
                                                             (let* ((_%g140283140292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e140279140281%_)
                            (_%E140285140296%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g140283140292%_
                                        '([eid _])))
                               '#!void))
                            (_%K140286140301%_
                             (lambda (_%eid140299%_)
                               (cons _%eid140299%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g140283140292%_))
                           (let ((_%hd140287140304%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g140283140292%_)))
                                 (_%tl140288140306%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g140283140292%_))))
                             (let ((_%eid140309%_ _%hd140287140304%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl140288140306%_))
                                   (let ((_%tl140290140311%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl140288140306%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl140290140311%_))
                                         (_%K140286140301%_ _%eid140309%_)
                                         (_%E140285140296%_)))
                                   (_%E140285140296%_))))
                           (_%E140285140296%_))))
                   _%refs140275%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp145593
                                                  __tmp145592))
                                               (cons _%check-values140273%_
                                                     _%check140153%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs140275%_
                                                  _%post140154%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144784144785%_))
                                         (let ((_%e140215140319%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144784144785%_))))
                                           (let ((_%tl140217140324%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140215140319%_)))
                                                 (_%hd140216140322%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140215140319%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140216140322%_))
                                                 (let ((_%e140218140327%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140216140322%_))))
                                                   (let ((_%tl140220140332%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140218140327%_)))
                                                         (_%hd140219140330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140218140327%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140220140332%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140217140324%_))
                     (let ((_%e140221140335%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140217140324%_))))
                       (let ((_%tl140223140340%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140221140335%_)))
                             (_%hd140222140338%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140221140335%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140223140340%_))
                             (_%__kont144786144787%_
                              _%hd140222140338%_
                              _%hd140219140330%_)
                             (let ()
                               (declare (not safe))
                               (_%g140211140236%_)))))
                     (let () (declare (not safe)) (_%g140211140236%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140217140324%_))
                     (let ((_%e140229140249%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140217140324%_))))
                       (let ((_%tl140231140254%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140229140249%_)))
                             (_%hd140230140252%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140229140249%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140231140254%_))
                             (_%__kont144788144789%_
                              _%hd140230140252%_
                              _%hd140216140322%_)
                             (let ()
                               (declare (not safe))
                               (_%g140211140236%_)))))
                     (let () (declare (not safe)) (_%g140211140236%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140217140324%_))
                                                     (let ((_%e140229140249%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140217140324%_))))
                                                       (let ((_%tl140231140254%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140229140249%_)))
                     (_%hd140230140252%_
                      (let () (declare (not safe)) (##car _%e140229140249%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140231140254%_))
                     (_%__kont144788144789%_
                      _%hd140230140252%_
                      _%hd140216140322%_)
                     (let () (declare (not safe)) (_%g140211140236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140211140236%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140211140236%_)))))))
                              (_%__kont144832144833%_
                               (lambda ()
                                 (let* ((_%body140175%_
                                         (if _%compiled-body?140063%_
                                             _%body140147%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140061%_
                                                _%body140147%_))))
                                        (_%body140177%_
                                         (_%generate-values-post140068%_
                                          _%post140154%_
                                          _%body140175%_))
                                        (_%body140179%_
                                         (_%generate-values-check140067%_
                                          _%check140153%_
                                          _%body140177%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind140152%_)
                                               (cons _%body140179%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144828144829%_))
                              (let ((_%e140161140187%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144828144829%_))))
                                (let ((_%tl140163140192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140161140187%_)))
                                      (_%hd140162140190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140161140187%_))))
                                  (_%__kont144830144831%_
                                   _%tl140163140192%_
                                   _%hd140162140190%_)))
                              (_%__kont144832144833%_)))))))
                 (_%generate-values-check140067%_
                  (lambda (_%check140143%_ _%body140144%_)
                    (cons 'begin
                          (let ((__tmp145595 (cons _%body140144%_ '()))
                                (__tmp145594 (reverse _%check140143%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145595 __tmp145594)))))
                 (_%generate-values-post140068%_
                  (lambda (_%post140136%_ _%body140137%_)
                    (cons 'begin
                          (let ((__tmp145599 (cons _%body140137%_ '()))
                                (__tmp145596
                                 (let ((__tmp145598
                                        (lambda (_%g140138140140%_)
                                          (cons 'set! _%g140138140140%_)))
                                       (__tmp145597 (reverse _%post140136%_)))
                                   (declare (not safe))
                                   (##map __tmp145598 __tmp145597))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145599 __tmp145596))))))
          (let* ((_%g140070140087%_
                  (lambda (_%g140071140084%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140071140084%_))))
                 (_%g140069140133%_
                  (lambda (_%g140071140090%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140071140090%_))
                        (let ((_%e140074140092%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140071140090%_))))
                          (let ((_%hd140075140095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140074140092%_)))
                                (_%tl140076140097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140074140092%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140076140097%_))
                                (let ((_%e140077140100%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140076140097%_))))
                                  (let ((_%hd140078140103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140077140100%_)))
                                        (_%tl140079140105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140077140100%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140079140105%_))
                                        (let ((_%e140080140108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140079140105%_))))
                                          (let ((_%hd140081140111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140080140108%_)))
                                                (_%tl140082140113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140080140108%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140082140113%_))
                                                ((lambda (_%L140116%_
                                                          _%L140117%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140117%_)
                                                       (_%generate-simple140065%_
                                                        _%L140117%_
                                                        _%L140116%_)
                                                       (_%generate-values140066%_
                                                        _%L140117%_
                                                        _%L140116%_)))
                                                 _%hd140081140111%_
                                                 _%hd140078140103%_)
                                                (_%g140070140087%_
                                                 _%g140071140090%_))))
                                        (_%g140070140087%_
                                         _%g140071140090%_))))
                                (_%g140070140087%_ _%g140071140090%_))))
                        (_%g140070140087%_ _%g140071140090%_)))))
            (_%g140069140133%_ _%stx140062%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140373%_ _%stx140374%_)
        (let ((_%compiled-body?140376%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self140373%_
           _%stx140374%_
           _%compiled-body?140376%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145601_
        (let ((_g145600_ (let () (declare (not safe)) (##length _g145601_))))
          (cond ((let () (declare (not safe)) (##fx= _g145600_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g145601_))
                ((let () (declare (not safe)) (##fx= _g145600_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g145601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145601_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139642%_ _%stx139643%_)
        (letrec ((_%generate-values139645%_
                  (lambda (_%hd139888%_ _%body139889%_)
                    (let _%lp139891%_ ((_%rest139893%_ _%hd139888%_)
                                       (_%bind139894%_ '()))
                      (let* ((_%rest139895139903%_ _%rest139893%_)
                             (_%else139897139914%_
                              (lambda ()
                                (let ((_%bind139911%_ (reverse _%bind139894%_))
                                      (_%body139912%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139642%_
                                          _%body139889%_))))
                                  (cons 'letrec*
                                        (cons _%bind139911%_
                                              (cons _%body139912%_ '()))))))
                             (_%K139899140048%_
                              (lambda (_%rest139917%_ _%hd-bind139918%_)
                                (let* ((_%__stx144842144843%_
                                        _%hd-bind139918%_)
                                       (_%g139921139946%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144842144843%_)))))
                                  (let ((_%__kont144844144845%_
                                         (lambda (_%L140027%_ _%L140028%_)
                                           (let ((_%eid140042%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140028%_)))
                                                 (_%expr140043%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139642%_
                                                     _%L140027%_))))
                                             (_%lp139891%_
                                              _%rest139917%_
                                              (cons (cons _%eid140042%_
                                                          (cons _%expr140043%_
                                                                '()))
                                                    _%bind139894%_)))))
                                        (_%__kont144846144847%_
                                         (lambda (_%L139967%_ _%L139968%_)
                                           (let* ((_%vals139987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139991%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp139989%_
                                                    _%L139968%_
                                                    _%L139967%_))
                                                  (_%refs139993%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals139987%_
                                                    _%L139968%_))
                                                  (_%expr139995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139642%_
                                                      _%L139967%_))))
                                             (_%lp139891%_
                                              _%rest139917%_
                                              (let ((__tmp145602
                                                     (cons (cons _%vals139987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp139989%_
                                                       (cons _%expr139995%_
                                                             '()))
                                                 '())
                                           (cons _%check-values139991%_
                                                 (cons _%tmp139989%_ '()))))
                               '()))
                   _%bind139894%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp145602
                                                 _%refs139993%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144842144843%_))
                                        (let ((_%e139925140003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144842144843%_))))
                                          (let ((_%tl139927140008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139925140003%_)))
                                                (_%hd139926140006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139925140003%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139926140006%_))
                                                (let ((_%e139928140011%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139926140006%_))))
                                                  (let ((_%tl139930140016%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139928140011%_)))
                                                        (_%hd139929140014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139928140011%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139930140016%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139927140008%_))
                                                            (let ((_%e139931140019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139927140008%_))))
                      (let ((_%tl139933140024%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139931140019%_)))
                            (_%hd139932140022%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139931140019%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139933140024%_))
                            (_%__kont144844144845%_
                             _%hd139932140022%_
                             _%hd139929140014%_)
                            (let ()
                              (declare (not safe))
                              (_%g139921139946%_)))))
                    (let () (declare (not safe)) (_%g139921139946%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139927140008%_))
                    (let ((_%e139939139959%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139927140008%_))))
                      (let ((_%tl139941139964%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139939139959%_)))
                            (_%hd139940139962%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139939139959%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139941139964%_))
                            (_%__kont144846144847%_
                             _%hd139940139962%_
                             _%hd139926140006%_)
                            (let ()
                              (declare (not safe))
                              (_%g139921139946%_)))))
                    (let () (declare (not safe)) (_%g139921139946%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139927140008%_))
                                                    (let ((_%e139939139959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139927140008%_))))
                                                      (let ((_%tl139941139964%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139939139959%_)))
                    (_%hd139940139962%_
                     (let () (declare (not safe)) (##car _%e139939139959%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139941139964%_))
                    (_%__kont144846144847%_
                     _%hd139940139962%_
                     _%hd139926140006%_)
                    (let () (declare (not safe)) (_%g139921139946%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139921139946%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139921139946%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139895139903%_))
                            (let ((_%hd139900140051%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139895139903%_)))
                                  (_%tl139901140053%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139895139903%_))))
                              (let* ((_%hd-bind140056%_ _%hd139900140051%_)
                                     (_%rest140058%_ _%tl139901140053%_))
                                (_%K139899140048%_
                                 _%rest140058%_
                                 _%hd-bind140056%_)))
                            (_%else139897139914%_))))))
                 (_%generate-letrec?139646%_
                  (lambda (_%hd139778%_)
                    (let _%lp139780%_ ((_%rest139782%_ _%hd139778%_))
                      (let* ((_%rest139783139791%_ _%rest139782%_)
                             (_%else139785139799%_ (lambda () '#t))
                             (_%K139787139876%_
                              (lambda (_%rest139802%_ _%hd-bind139803%_)
                                (let* ((_%g139805139822%_
                                        (lambda (_%g139806139819%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139806139819%_))))
                                       (_%g139804139873%_
                                        (lambda (_%g139806139825%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139806139825%_))
                                              (let ((_%e139809139827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139806139825%_))))
                                                (let ((_%hd139810139830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139809139827%_)))
                                                      (_%tl139811139832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139809139827%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139810139830%_))
                                                      (let ((_%e139812139835%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139810139830%_))))
                (let ((_%hd139813139838%_
                       (let () (declare (not safe)) (##car _%e139812139835%_)))
                      (_%tl139814139840%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139812139835%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139814139840%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139811139832%_))
                          (let ((_%e139815139843%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139811139832%_))))
                            (let ((_%hd139816139846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139815139843%_)))
                                  (_%tl139817139848%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139815139843%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139817139848%_))
                                  ((lambda (_%L139851%_ _%L139852%_)
                                     (if (_%is-lambda-expr?139647%_
                                          _%L139851%_)
                                         (_%lp139780%_ _%rest139802%_)
                                         '#f))
                                   _%hd139816139846%_
                                   _%hd139813139838%_)
                                  (_%g139805139822%_ _%g139806139825%_))))
                          (_%g139805139822%_ _%g139806139825%_))
                      (_%g139805139822%_ _%g139806139825%_))))
              (_%g139805139822%_ _%g139806139825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139805139822%_
                                               _%g139806139825%_)))))
                                  (_%g139804139873%_ _%hd-bind139803%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139783139791%_))
                            (let ((_%hd139788139879%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139783139791%_)))
                                  (_%tl139789139881%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139783139791%_))))
                              (let* ((_%hd-bind139884%_ _%hd139788139879%_)
                                     (_%rest139886%_ _%tl139789139881%_))
                                (_%K139787139876%_
                                 _%rest139886%_
                                 _%hd-bind139884%_)))
                            (_%else139785139799%_))))))
                 (_%is-lambda-expr?139647%_
                  (lambda (_%expr139715%_)
                    (let* ((_%__stx144886144887%_ _%expr139715%_)
                           (_%g139718139732%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144886144887%_)))))
                      (let ((_%__kont144888144889%_
                             (lambda (_%L139760%_ _%L139761%_) '#t))
                            (_%__kont144890144891%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144886144887%_))
                            (let ((_%e139722139744%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144886144887%_))))
                              (let ((_%tl139724139749%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139722139744%_)))
                                    (_%hd139723139747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139722139744%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139723139747%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139723139747%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139724139749%_))
                                            (let ((_%e139725139752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139724139749%_))))
                                              (let ((_%tl139727139757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139725139752%_)))
                                                    (_%hd139726139755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139725139752%_))))
                                                (_%__kont144888144889%_
                                                 _%tl139727139757%_
                                                 _%hd139726139755%_)))
                                            (_%__kont144890144891%_))
                                        (_%__kont144890144891%_))
                                    (_%__kont144890144891%_))))
                            (_%__kont144890144891%_)))))))
          (let* ((_%g139649139666%_
                  (lambda (_%g139650139663%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139650139663%_))))
                 (_%g139648139712%_
                  (lambda (_%g139650139669%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139650139669%_))
                        (let ((_%e139653139671%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139650139669%_))))
                          (let ((_%hd139654139674%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139653139671%_)))
                                (_%tl139655139676%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139653139671%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139655139676%_))
                                (let ((_%e139656139679%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139655139676%_))))
                                  (let ((_%hd139657139682%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139656139679%_)))
                                        (_%tl139658139684%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139656139679%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139658139684%_))
                                        (let ((_%e139659139687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139658139684%_))))
                                          (let ((_%hd139660139690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139659139687%_)))
                                                (_%tl139661139692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139659139687%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139661139692%_))
                                                ((lambda (_%L139695%_
                                                          _%L139696%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139696%_)
                                                       (if (_%generate-letrec?139646%_
                                                            _%L139696%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139642%_
                                                            'letrec
                                                            _%L139696%_
                                                            _%L139695%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139642%_
                                                            'letrec*
                                                            _%L139696%_
                                                            _%L139695%_
                                                            '#f))
                                                       (_%generate-values139645%_
                                                        _%L139696%_
                                                        _%L139695%_)))
                                                 _%hd139660139690%_
                                                 _%hd139657139682%_)
                                                (_%g139649139666%_
                                                 _%g139650139669%_))))
                                        (_%g139649139666%_
                                         _%g139650139669%_))))
                                (_%g139649139666%_ _%g139650139669%_))))
                        (_%g139649139666%_ _%g139650139669%_)))))
            (_%g139648139712%_ _%stx139643%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139579%_)
        (let _%lp139581%_ ((_%rest139583%_ _%hd139579%_))
          (let* ((_%rest139584139600%_ _%rest139583%_)
                 (_%else139587139608%_ (lambda () '#f)))
            (let ((_%K139590139621%_
                   (lambda (_%rest139619%_) (_%lp139581%_ _%rest139619%_)))
                  (_%K139589139613%_ (lambda () '#t)))
              (let ((_%try-match139586139616%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139584139600%_))
                           (_%K139589139613%_)
                           (_%else139587139608%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139584139600%_))
                    (let ((_%tl139592139626%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139584139600%_)))
                          (_%hd139591139624%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139584139600%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139591139624%_))
                          (let ((_%tl139594139631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139591139624%_)))
                                (_%hd139593139629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139591139624%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139593139629%_))
                                (let ((_%tl139598139634%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139593139629%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139598139634%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139594139631%_))
                                          (let ((_%tl139596139637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139594139631%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139596139637%_))
                                                (let ((_%rest139640%_
                                                       _%tl139592139626%_))
                                                  (_%lp139581%_
                                                   _%rest139640%_))
                                                (_%else139587139608%_)))
                                          (_%else139587139608%_))
                                      (_%else139587139608%_)))
                                (_%else139587139608%_)))
                          (_%else139587139608%_)))
                    (_%try-match139586139616%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139490%_
               _%form139491%_
               _%hd139492%_
               _%body139493%_
               _%compiled-body?139494%_)
        (letrec ((_%generate1139496%_
                  (lambda (_%bind139535%_)
                    (let* ((_%bind139536139547%_ _%bind139535%_)
                           (_%E139538139551%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139536139547%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139539139557%_
                            (lambda (_%expr139554%_ _%id139555%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139555%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139490%_
                                             _%expr139554%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139536139547%_))
                          (let ((_%hd139540139560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139536139547%_)))
                                (_%tl139541139562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139536139547%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139540139560%_))
                                (let ((_%hd139544139565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139540139560%_)))
                                      (_%tl139545139567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139540139560%_))))
                                  (let ((_%id139570%_ _%hd139544139565%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139545139567%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139541139562%_))
                                            (let ((_%hd139542139572%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139541139562%_)))
                                                  (_%tl139543139574%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139541139562%_))))
                                              (let ((_%expr139577%_
                                                     _%hd139542139572%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139543139574%_))
                                                    (_%K139539139557%_
                                                     _%expr139577%_
                                                     _%id139570%_)
                                                    (_%E139538139551%_))))
                                            (_%E139538139551%_))
                                        (_%E139538139551%_))))
                                (_%E139538139551%_)))
                          (_%E139538139551%_))))))
          (let* ((_%bind139498%_ (map _%generate1139496%_ _%hd139492%_))
                 (_%body139500%_
                  (if _%compiled-body?139494%_
                      _%body139493%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139490%_ _%body139493%_))))
                 (_%body139532%_
                  (let* ((_%body139501139509%_ _%body139500%_)
                         (_%else139503139517%_
                          (lambda () (cons _%body139500%_ '())))
                         (_%K139505139522%_
                          (lambda (_%exprs139520%_) _%exprs139520%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139501139509%_))
                        (let ((_%hd139506139525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139501139509%_)))
                              (_%tl139507139527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139501139509%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139506139525%_ 'begin))
                              (let ((_%exprs139530%_ _%tl139507139527%_))
                                (_%K139505139522%_ _%exprs139530%_))
                              (_%else139503139517%_)))
                        (_%else139503139517%_)))))
            (cons _%form139491%_ (cons _%bind139498%_ _%body139532%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139390%_ _%stx139391%_)
        (letrec ((_%generate1139393%_
                  (lambda (_%datum139445%_)
                    (if (or (null? _%datum139445%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139445%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139445%_))
                            (eof-object? _%datum139445%_))
                        _%datum139445%_
                        (if (uninterned-symbol? _%datum139445%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139445%_
                               '#t))
                            (if (pair? _%datum139445%_)
                                (cons (_%generate1139393%_
                                       (car _%datum139445%_))
                                      (_%generate1139393%_
                                       (cdr _%datum139445%_)))
                                (if (box? _%datum139445%_)
                                    (box (_%generate1139393%_
                                          (unbox _%datum139445%_)))
                                    (if (vector? _%datum139445%_)
                                        (vector-map
                                         _%generate1139393%_
                                         _%datum139445%_)
                                        (if (or (s8vector? _%datum139445%_)
                                                (u8vector? _%datum139445%_)
                                                (s16vector? _%datum139445%_)
                                                (u16vector? _%datum139445%_)
                                                (s32vector? _%datum139445%_)
                                                (u32vector? _%datum139445%_)
                                                (s64vector? _%datum139445%_)
                                                (u64vector? _%datum139445%_)
                                                (f32vector? _%datum139445%_)
                                                (f64vector? _%datum139445%_))
                                            _%datum139445%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139391%_)))))))))))
          (let* ((_%g139395139408%_
                  (lambda (_%g139396139405%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139396139405%_))))
                 (_%g139394139442%_
                  (lambda (_%g139396139411%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139396139411%_))
                        (let ((_%e139398139413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139396139411%_))))
                          (let ((_%hd139399139416%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139398139413%_)))
                                (_%tl139400139418%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139398139413%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139400139418%_))
                                (let ((_%e139401139421%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139400139418%_))))
                                  (let ((_%hd139402139424%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139401139421%_)))
                                        (_%tl139403139426%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139401139421%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139403139426%_))
                                        ((lambda (_%L139429%_)
                                           (cons 'quote
                                                 (cons (_%generate1139393%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L139429%_)))
                                                       '())))
                                         _%hd139402139424%_)
                                        (_%g139395139408%_
                                         _%g139396139411%_))))
                                (_%g139395139408%_ _%g139396139411%_))))
                        (_%g139395139408%_ _%g139396139411%_)))))
            (_%g139394139442%_ _%stx139391%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138831%_ _%stx138832%_)
        (letrec ((_%compile-call138834%_
                  (lambda (_%rator139123%_ _%rands139124%_)
                    (let ((_%rator139130%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138831%_
                              _%rator139123%_)))
                          (_%rands139131%_
                           (map (lambda (_%g139125139127%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138831%_
                                     _%g139125139127%_)))
                                _%rands139124%_)))
                      (let* ((_%__stx144933144934%_ _%rator139130%_)
                             (_%g139134139186%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144933144934%_)))))
                        (let ((_%__kont144935144936%_
                               (lambda (_%L139310%_
                                        _%L139311%_
                                        _%L139312%_
                                        _%L139313%_)
                                 (if (let ((__tmp145605
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139131%_)))
                                           (__tmp145603
                                            (length (let ((__tmp145604
                                                           (lambda (_%g139349139352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139350139354%_)
                     (cons _%g139349139352%_ _%g139350139354%_))))
              (declare (not safe))
              (__foldr1 __tmp145604 '() _%L139312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145605 __tmp145603))
                                     (let* ((_%id139357%_ _%L139313%_)
                                            (_%args139366%_
                                             (let ((__tmp145606
                                                    (lambda (_%g139358139361%_
                                                             _%g139359139363%_)
                                                      (cons _%g139358139361%_
                                                            _%g139359139363%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145606
                                                '()
                                                _%L139312%_)))
                                            (_%body139375%_
                                             (let ((__tmp145607
                                                    (lambda (_%g139367139370%_
                                                             _%g139368139372%_)
                                                      (cons _%g139367139370%_
                                                            _%g139368139372%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145607
                                                '()
                                                _%L139311%_)))
                                            (_%init139377%_
                                             (map list
                                                  _%args139366%_
                                                  _%rands139131%_)))
                                       (cons 'let
                                             (cons _%id139357%_
                                                   (cons _%init139377%_
                                                         _%body139375%_))))
                                     (let ((__tmp145608
                                            (let ((__tmp145609
                                                   (lambda (_%g139379139382%_
                                                            _%g139380139384%_)
                                                     (cons _%g139379139382%_
                                                           _%g139380139384%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145609
                                               '()
                                               _%L139312%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138832%_
                                        __tmp145608
                                        _%rands139131%_)))))
                              (_%__kont144941144942%_
                               (lambda ()
                                 (cons _%rator139130%_ _%rands139131%_))))
                          (let ((_%__match145000145001%_
                                 (lambda (_%e139140139198%_
                                          _%hd139141139201%_
                                          _%tl139142139203%_
                                          _%e139143139206%_
                                          _%hd139144139209%_
                                          _%tl139145139211%_
                                          _%e139146139214%_
                                          _%hd139147139217%_
                                          _%tl139148139219%_
                                          _%e139149139222%_
                                          _%hd139150139225%_
                                          _%tl139151139227%_
                                          _%e139152139230%_
                                          _%hd139153139233%_
                                          _%tl139154139235%_
                                          _%e139155139238%_
                                          _%hd139156139241%_
                                          _%tl139157139243%_
                                          _%e139158139246%_
                                          _%hd139159139249%_
                                          _%tl139160139251%_
                                          _%__splice144937144938%_
                                          _%target139161139254%_
                                          _%tl139163139256%_)
                                   (letrec ((_%loop139164139259%_
                                             (lambda (_%hd139162139262%_
                                                      _%arg139168139264%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139162139262%_))
                                                   (let ((_%e139165139267%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139162139262%_))))
                                                     (let ((_%lp-tl139167139272%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139165139267%_)))
                                                           (_%lp-hd139166139270%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139165139267%_))))
                                                       (_%loop139164139259%_
                                                        _%lp-tl139167139272%_
                                                        (cons _%lp-hd139166139270%_
                                                              _%arg139168139264%_))))
                                                   (let ((_%arg139169139275%_
                                                          (reverse _%arg139168139264%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139160139251%_))
                                                         (let ((_%__splice144939144940%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139160139251%_ '0))))
                   (let ((_%tl139172139280%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144939144940%_ '1)))
                         (_%target139170139278%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144939144940%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139172139280%_))
                         (letrec ((_%loop139173139283%_
                                   (lambda (_%hd139171139286%_
                                            _%body139177139288%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139171139286%_))
                                         (let ((_%e139174139291%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139171139286%_))))
                                           (let ((_%lp-tl139176139296%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139174139291%_)))
                                                 (_%lp-hd139175139294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139174139291%_))))
                                             (_%loop139173139283%_
                                              _%lp-tl139176139296%_
                                              (cons _%lp-hd139175139294%_
                                                    _%body139177139288%_))))
                                         (let ((_%body139178139299%_
                                                (reverse _%body139177139288%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139154139235%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139148139219%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139145139211%_))
                                                       (let ((_%e139179139302%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139145139211%_))))
                 (let ((_%tl139181139307%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139179139302%_)))
                       (_%hd139180139305%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139179139302%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139181139307%_))
                       (let ((_%L139310%_ _%hd139180139305%_)
                             (_%L139311%_ _%body139178139299%_)
                             (_%L139312%_ _%arg139169139275%_)
                             (_%L139313%_ _%hd139150139225%_))
                         (if (eq? _%L139313%_ _%L139310%_)
                             (_%__kont144935144936%_
                              _%L139310%_
                              _%L139311%_
                              _%L139312%_
                              _%L139313%_)
                             (_%__kont144941144942%_)))
                       (_%__kont144941144942%_))))
               (_%__kont144941144942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144941144942%_))
                                               (_%__kont144941144942%_)))))))
                           (_%loop139173139283%_ _%target139170139278%_ '()))
                         (_%__kont144941144942%_))))
                 (_%__kont144941144942%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop139164139259%_
                                      _%target139161139254%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144933144934%_))
                                (let ((_%e139140139198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144933144934%_))))
                                  (let ((_%tl139142139203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139140139198%_)))
                                        (_%hd139141139201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139140139198%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139141139201%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139141139201%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139142139203%_))
                                                (let ((_%e139143139206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139142139203%_))))
                                                  (let ((_%tl139145139211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139143139206%_)))
                                                        (_%hd139144139209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139143139206%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139144139209%_))
                                                        (let ((_%e139146139214%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139144139209%_))))
                  (let ((_%tl139148139219%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139146139214%_)))
                        (_%hd139147139217%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139146139214%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139147139217%_))
                        (let ((_%e139149139222%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139147139217%_))))
                          (let ((_%tl139151139227%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139149139222%_)))
                                (_%hd139150139225%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139149139222%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139151139227%_))
                                (let ((_%e139152139230%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139151139227%_))))
                                  (let ((_%tl139154139235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139152139230%_)))
                                        (_%hd139153139233%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139152139230%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139153139233%_))
                                        (let ((_%e139155139238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139153139233%_))))
                                          (let ((_%tl139157139243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139155139238%_)))
                                                (_%hd139156139241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139155139238%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139156139241%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139156139241%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139157139243%_))
                                                        (let ((_%e139158139246%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139157139243%_))))
                  (let ((_%tl139160139251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139158139246%_)))
                        (_%hd139159139249%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139158139246%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139159139249%_))
                        (let ((_%__splice144937144938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139159139249%_
                                  '0))))
                          (let ((_%tl139163139256%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144937144938%_ '1)))
                                (_%target139161139254%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144937144938%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139163139256%_))
                                (_%__match145000145001%_
                                 _%e139140139198%_
                                 _%hd139141139201%_
                                 _%tl139142139203%_
                                 _%e139143139206%_
                                 _%hd139144139209%_
                                 _%tl139145139211%_
                                 _%e139146139214%_
                                 _%hd139147139217%_
                                 _%tl139148139219%_
                                 _%e139149139222%_
                                 _%hd139150139225%_
                                 _%tl139151139227%_
                                 _%e139152139230%_
                                 _%hd139153139233%_
                                 _%tl139154139235%_
                                 _%e139155139238%_
                                 _%hd139156139241%_
                                 _%tl139157139243%_
                                 _%e139158139246%_
                                 _%hd139159139249%_
                                 _%tl139160139251%_
                                 _%__splice144937144938%_
                                 _%target139161139254%_
                                 _%tl139163139256%_)
                                (_%__kont144941144942%_))))
                        (_%__kont144941144942%_))))
                (_%__kont144941144942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144941144942%_))
                                                (_%__kont144941144942%_))))
                                        (_%__kont144941144942%_))))
                                (_%__kont144941144942%_))))
                        (_%__kont144941144942%_))))
                (_%__kont144941144942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144941144942%_))
                                            (_%__kont144941144942%_))
                                        (_%__kont144941144942%_))))
                                (_%__kont144941144942%_)))))))))
          (let* ((_%g138836138859%_
                  (lambda (_%g138837138856%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138837138856%_))))
                 (_%g138835139120%_
                  (lambda (_%g138837138862%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138837138862%_))
                        (let ((_%e138840138864%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138837138862%_))))
                          (let ((_%hd138841138867%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138840138864%_)))
                                (_%tl138842138869%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138840138864%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138842138869%_))
                                (let ((_%e138843138872%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138842138869%_))))
                                  (let ((_%hd138844138875%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138843138872%_)))
                                        (_%tl138845138877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138843138872%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138845138877%_))
                                        (let ((_g145610_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138845138877%_
                                                  '0))))
                                          (begin
                                            (let ((_g145611_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145610_)
                                                         (##vector-length
                                                          _g145610_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145611_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145611_)))
                                            (let ((_%target138846138880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145610_
                                                      0)))
                                                  (_%tl138848138882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145610_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138848138882%_))
                                                  (letrec ((_%loop138849138885%_
                                                            (lambda (_%hd138847138888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138853138890%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138847138888%_))
                          (let ((_%e138850138893%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138847138888%_))))
                            (let ((_%lp-hd138851138896%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138850138893%_)))
                                  (_%lp-tl138852138898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138850138893%_))))
                              (_%loop138849138885%_
                               _%lp-tl138852138898%_
                               (cons _%lp-hd138851138896%_
                                     _%rand138853138890%_))))
                          (let ((_%rand138854138901%_
                                 (reverse _%rand138853138890%_)))
                            ((lambda (_%L138904%_ _%L138905%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call138834%_
                                    _%L138905%_
                                    (let ((__tmp145612
                                           (lambda (_%g138922138925%_
                                                    _%g138923138927%_)
                                             (cons _%g138922138925%_
                                                   _%g138923138927%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp145612 '() _%L138904%_)))
                                   (let* ((_%__stx145049145050%_ _%L138905%_)
                                          (_%g138931138943%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145049145050%_)))))
                                     (let ((_%__kont145051145052%_
                                            (lambda ()
                                              (let ((_%f138980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138831%_
                                                        _%L138905%_))))
                                                (if (and (let ((__tmp145613
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138980%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145613))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f138980%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138982%_ ((_%rest138985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145615
                                                (lambda (_%g139102139105%_
                                                         _%g139103139107%_)
                                                  (cons _%g139102139105%_
                                                        _%g139103139107%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145615
                                            '()
                                            _%L138904%_))))
                               (_%bind138987%_ '())
                               (_%args138988%_ '()))
              (let* ((_%rest138989138997%_ _%rest138985%_)
                     (_%else138991139005%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138987%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138980%_
                                                      _%args138988%_)
                                                '()))))))
                     (_%K138993139091%_
                      (lambda (_%rest139008%_ _%e139009%_)
                        (let* ((_%__stx145003145004%_ _%e139009%_)
                               (_%g139014139032%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145003145004%_)))))
                          (let ((_%__kont145005145006%_
                                 (lambda ()
                                   (_%lp138982%_
                                    _%rest139008%_
                                    _%bind138987%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e139009%_))
                                          _%args138988%_))))
                                (_%__kont145007145008%_
                                 (lambda ()
                                   (_%lp138982%_
                                    _%rest139008%_
                                    _%bind138987%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e139009%_))
                                          _%args138988%_))))
                                (_%__kont145009145010%_
                                 (lambda ()
                                   (let ((_%tmp139039%_
                                          (let ((__tmp145614
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145614))))
                                     (_%lp138982%_
                                      _%rest139008%_
                                      (cons (cons _%tmp139039%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e139009%_))
                                                        '()))
                                            _%bind138987%_)
                                      (cons _%tmp139039%_ _%args138988%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145003145004%_))
                                (let ((_%e139016139070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145003145004%_))))
                                  (let ((_%tl139018139075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139016139070%_)))
                                        (_%hd139017139073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139016139070%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139017139073%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139017139073%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139018139075%_))
                                                (let ((_%e139019139078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139018139075%_))))
                                                  (let ((_%tl139021139083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139019139078%_)))
                                                        (_%hd139020139081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139019139078%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139021139083%_))
                                                        (_%__kont145005145006%_)
                                                        (_%__kont145009145010%_))))
                                                (_%__kont145009145010%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139017139073%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139018139075%_))
                                                    (let ((_%e139025139055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139018139075%_))))
                                                      (let ((_%tl139027139060%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139025139055%_)))
                    (_%hd139026139058%_
                     (let () (declare (not safe)) (##car _%e139025139055%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139027139060%_))
                    (_%__kont145007145008%_)
                    (_%__kont145009145010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145009145010%_))
                                                (_%__kont145009145010%_)))
                                        (_%__kont145009145010%_))))
                                (_%__kont145009145010%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138989138997%_))
                    (let ((_%hd138994139094%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138989138997%_)))
                          (_%tl138995139096%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138989138997%_))))
                      (let* ((_%e139099%_ _%hd138994139094%_)
                             (_%rest139101%_ _%tl138995139096%_))
                        (_%K138993139091%_ _%rest139101%_ _%e139099%_)))
                    (_%else138991139005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call138834%_
                                                     _%L138905%_
                                                     (let ((__tmp145616
                                                            (lambda (_%g139109139112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139110139114%_)
                      (cons _%g139109139112%_ _%g139110139114%_))))
               (declare (not safe))
               (__foldr1 __tmp145616 '() _%L138904%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145053145054%_
                                            (lambda ()
                                              (_%compile-call138834%_
                                               _%L138905%_
                                               (let ((__tmp145617
                                                      (lambda (_%g138949138952%_
                                                               _%g138950138954%_)
                                                        (cons _%g138949138952%_
                                                              _%g138950138954%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145617
                                                  '()
                                                  _%L138904%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145049145050%_))
                                           (let ((_%e138933138962%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145049145050%_))))
                                             (let ((_%tl138935138967%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138933138962%_)))
                                                   (_%hd138934138965%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138933138962%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138934138965%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138934138965%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138935138967%_))
                                                           (let ((_%e138936138970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138935138967%_))))
                     (let ((_%tl138938138975%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138936138970%_)))
                           (_%hd138937138973%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138936138970%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138938138975%_))
                           (_%__kont145051145052%_)
                           (_%__kont145053145054%_))))
                   (_%__kont145053145054%_))
               (_%__kont145053145054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145053145054%_))))
                                           (_%__kont145053145054%_))))))
                             _%rand138854138901%_
                             _%hd138844138875%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop138849138885%_
                                                     _%target138846138880%_
                                                     '()))
                                                  (_%g138836138859%_
                                                   _%g138837138862%_)))))
                                        (_%g138836138859%_
                                         _%g138837138862%_))))
                                (_%g138836138859%_ _%g138837138862%_))))
                        (_%g138836138859%_ _%g138837138862%_)))))
            (_%g138835139120%_ _%stx138832%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138574%_ _%stx138575%_)
        (let* ((_%__stx145121145122%_ _%stx138575%_)
               (_%g138578138607%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145121145122%_)))))
          (let ((_%__kont145123145124%_
                 (lambda (_%L138675%_ _%L138676%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self138574%_
                        _%stx138575%_)
                       (let ((_%f138698%_
                              (let ((__tmp145618
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138676%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138574%_
                                 __tmp145618))))
                         (let _%lp138700%_ ((_%rest138703%_
                                             (reverse (let ((__tmp145620
                                                             (lambda (_%g138820138823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138821138825%_)
                       (cons _%g138820138823%_ _%g138821138825%_))))
                (declare (not safe))
                (__foldr1 __tmp145620 '() _%L138675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138705%_ '())
                                            (_%args138706%_ '()))
                           (let* ((_%rest138707138715%_ _%rest138703%_)
                                  (_%else138709138723%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138705%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138706%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138711138809%_
                                   (lambda (_%rest138726%_ _%e138727%_)
                                     (let* ((_%__stx145075145076%_ _%e138727%_)
                                            (_%g138732138750%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145075145076%_)))))
                                       (let ((_%__kont145077145078%_
                                              (lambda ()
                                                (_%lp138700%_
                                                 _%rest138726%_
                                                 _%bind138705%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138727%_))
                                                       _%args138706%_))))
                                             (_%__kont145079145080%_
                                              (lambda ()
                                                (_%lp138700%_
                                                 _%rest138726%_
                                                 _%bind138705%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138727%_))
                                                       _%args138706%_))))
                                             (_%__kont145081145082%_
                                              (lambda ()
                                                (let ((_%tmp138757%_
                                                       (let ((__tmp145619
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp138700%_
                                                   _%rest138726%_
                                                   (cons (cons _%tmp138757%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e138727%_))
                             '()))
                 _%bind138705%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp138757%_
                                                         _%args138706%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145075145076%_))
                                             (let ((_%e138734138788%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145075145076%_))))
                                               (let ((_%tl138736138793%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138734138788%_)))
                                                     (_%hd138735138791%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138734138788%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138735138791%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138735138791%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138736138793%_))
                     (let ((_%e138737138796%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138736138793%_))))
                       (let ((_%tl138739138801%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138737138796%_)))
                             (_%hd138738138799%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138737138796%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138739138801%_))
                             (_%__kont145077145078%_)
                             (_%__kont145081145082%_))))
                     (_%__kont145081145082%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138735138791%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138736138793%_))
                         (let ((_%e138743138773%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138736138793%_))))
                           (let ((_%tl138745138778%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138743138773%_)))
                                 (_%hd138744138776%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138743138773%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138745138778%_))
                                 (_%__kont145079145080%_)
                                 (_%__kont145081145082%_))))
                         (_%__kont145081145082%_))
                     (_%__kont145081145082%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145081145082%_))))
                                             (_%__kont145081145082%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138707138715%_))
                                 (let ((_%hd138712138812%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138707138715%_)))
                                       (_%tl138713138814%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138707138715%_))))
                                   (let* ((_%e138817%_ _%hd138712138812%_)
                                          (_%rest138819%_ _%tl138713138814%_))
                                     (_%K138711138809%_
                                      _%rest138819%_
                                      _%e138817%_)))
                                 (_%else138709138723%_))))))))
                (_%__kont145127145128%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self138574%_ _%stx138575%_))))
            (let ((_%__match145166145167%_
                   (lambda (_%e138582138619%_
                            _%hd138583138622%_
                            _%tl138584138624%_
                            _%e138585138627%_
                            _%hd138586138630%_
                            _%tl138587138632%_
                            _%e138588138635%_
                            _%hd138589138638%_
                            _%tl138590138640%_
                            _%e138591138643%_
                            _%hd138592138646%_
                            _%tl138593138648%_
                            _%__splice145125145126%_
                            _%target138594138651%_
                            _%tl138596138653%_)
                     (letrec ((_%loop138597138656%_
                               (lambda (_%hd138595138659%_
                                        _%rand138601138661%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138595138659%_))
                                     (let ((_%e138598138664%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138595138659%_))))
                                       (let ((_%lp-tl138600138669%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138598138664%_)))
                                             (_%lp-hd138599138667%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138598138664%_))))
                                         (_%loop138597138656%_
                                          _%lp-tl138600138669%_
                                          (cons _%lp-hd138599138667%_
                                                _%rand138601138661%_))))
                                     (let ((_%rand138602138672%_
                                            (reverse _%rand138601138661%_)))
                                       (_%__kont145123145124%_
                                        _%rand138602138672%_
                                        _%hd138592138646%_))))))
                       (_%loop138597138656%_ _%target138594138651%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145121145122%_))
                  (let ((_%e138582138619%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145121145122%_))))
                    (let ((_%tl138584138624%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138582138619%_)))
                          (_%hd138583138622%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138582138619%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138584138624%_))
                          (let ((_%e138585138627%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138584138624%_))))
                            (let ((_%tl138587138632%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138585138627%_)))
                                  (_%hd138586138630%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138585138627%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138586138630%_))
                                  (let ((_%e138588138635%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138586138630%_))))
                                    (let ((_%tl138590138640%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138588138635%_)))
                                          (_%hd138589138638%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138588138635%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138589138638%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138589138638%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138590138640%_))
                                                  (let ((_%e138591138643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138590138640%_))))
                                                    (let ((_%tl138593138648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138591138643%_)))
                                                          (_%hd138592138646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138591138643%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138593138648%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138587138632%_))
                      (let ((_%__splice145125145126%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138587138632%_
                                '0))))
                        (let ((_%tl138596138653%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145125145126%_ '1)))
                              (_%target138594138651%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145125145126%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138596138653%_))
                              (_%__match145166145167%_
                               _%e138582138619%_
                               _%hd138583138622%_
                               _%tl138584138624%_
                               _%e138585138627%_
                               _%hd138586138630%_
                               _%tl138587138632%_
                               _%e138588138635%_
                               _%hd138589138638%_
                               _%tl138590138640%_
                               _%e138591138643%_
                               _%hd138592138646%_
                               _%tl138593138648%_
                               _%__splice145125145126%_
                               _%target138594138651%_
                               _%tl138596138653%_)
                              (_%__kont145127145128%_))))
                      (_%__kont145127145128%_))
                  (_%__kont145127145128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145127145128%_))
                                              (_%__kont145127145128%_))
                                          (_%__kont145127145128%_))))
                                  (_%__kont145127145128%_))))
                          (_%__kont145127145128%_))))
                  (_%__kont145127145128%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138386%_ _%stx138387%_)
        (letrec ((_%simplify138389%_
                  (lambda (_%code138474%_)
                    (let* ((_%code138475138493%_ _%code138474%_)
                           (_%else138477138501%_ (lambda () _%code138474%_))
                           (_%K138479138537%_
                            (lambda (_%expr138504%_ _%test138505%_)
                              (let* ((_%expr138506138514%_ _%expr138504%_)
                                     (_%else138508138522%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138505%_
                                                    (cons _%expr138504%_
                                                          '())))))
                                     (_%K138510138527%_
                                      (lambda (_%exprs138525%_)
                                        (cons 'and
                                              (cons _%test138505%_
                                                    _%exprs138525%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138506138514%_))
                                    (let ((_%hd138511138530%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138506138514%_)))
                                          (_%tl138512138532%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138506138514%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138511138530%_ 'and))
                                          (let ((_%exprs138535%_
                                                 _%tl138512138532%_))
                                            (_%K138510138527%_
                                             _%exprs138535%_))
                                          (_%else138508138522%_)))
                                    (_%else138508138522%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138475138493%_))
                          (let ((_%hd138480138540%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138475138493%_)))
                                (_%tl138481138542%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138475138493%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138480138540%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138481138542%_))
                                    (let ((_%hd138482138545%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138481138542%_)))
                                          (_%tl138483138547%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138481138542%_))))
                                      (let ((_%test138550%_
                                             _%hd138482138545%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138483138547%_))
                                            (let ((_%hd138484138552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138483138547%_)))
                                                  (_%tl138485138554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138483138547%_))))
                                              (let ((_%expr138557%_
                                                     _%hd138484138552%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138485138554%_))
                                                    (let ((_%hd138486138559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138485138554%_)))
                                                          (_%tl138487138561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138485138554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138486138559%_))
                                                          (let ((_%hd138488138564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138486138559%_)))
                        (_%tl138489138566%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138486138559%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138488138564%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138489138566%_))
                            (let ((_%hd138490138569%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138489138566%_)))
                                  (_%tl138491138571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138489138566%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138490138569%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138491138571%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138487138561%_))
                                          (_%K138479138537%_
                                           _%expr138557%_
                                           _%test138550%_)
                                          (_%else138477138501%_))
                                      (_%else138477138501%_))
                                  (_%else138477138501%_)))
                            (_%else138477138501%_))
                        (_%else138477138501%_)))
                  (_%else138477138501%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else138477138501%_))))
                                            (_%else138477138501%_))))
                                    (_%else138477138501%_))
                                (_%else138477138501%_)))
                          (_%else138477138501%_))))))
          (let* ((_%g138391138412%_
                  (lambda (_%g138392138409%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138392138409%_))))
                 (_%g138390138471%_
                  (lambda (_%g138392138415%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138392138415%_))
                        (let ((_%e138396138417%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138392138415%_))))
                          (let ((_%hd138397138420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138396138417%_)))
                                (_%tl138398138422%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138396138417%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138398138422%_))
                                (let ((_%e138399138425%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138398138422%_))))
                                  (let ((_%hd138400138428%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138399138425%_)))
                                        (_%tl138401138430%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138399138425%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138401138430%_))
                                        (let ((_%e138402138433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138401138430%_))))
                                          (let ((_%hd138403138436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138402138433%_)))
                                                (_%tl138404138438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138402138433%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138404138438%_))
                                                (let ((_%e138405138441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138404138438%_))))
                                                  (let ((_%hd138406138444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138405138441%_)))
                                                        (_%tl138407138446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138405138441%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138407138446%_))
                                                        ((lambda (_%L138449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138450%_
                          _%L138451%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify138389%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self138386%_
                                       _%L138451%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138386%_
                                             _%L138450%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138386%_
                                                   _%L138449%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp145621
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138386%_
                                               _%L138451%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145621
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138386%_
                                            _%L138450%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138386%_
                                                  _%L138449%_))
                                               '()))))))
                 _%hd138406138444%_
                 _%hd138403138436%_
                 _%hd138400138428%_)
                (_%g138391138412%_ _%g138392138415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g138391138412%_
                                                 _%g138392138415%_))))
                                        (_%g138391138412%_
                                         _%g138392138415%_))))
                                (_%g138391138412%_ _%g138392138415%_))))
                        (_%g138391138412%_ _%g138392138415%_)))))
            (_%g138390138471%_ _%stx138387%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138334%_ _%stx138335%_)
        (let* ((_%g138337138350%_
                (lambda (_%g138338138347%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138338138347%_))))
               (_%g138336138383%_
                (lambda (_%g138338138353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138338138353%_))
                      (let ((_%e138340138355%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138338138353%_))))
                        (let ((_%hd138341138358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138340138355%_)))
                              (_%tl138342138360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138340138355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138342138360%_))
                              (let ((_%e138343138363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138342138360%_))))
                                (let ((_%hd138344138366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138343138363%_)))
                                      (_%tl138345138368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138343138363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138345138368%_))
                                      ((lambda (_%L138371%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138371%_)))
                                       _%hd138344138366%_)
                                      (_%g138337138350%_ _%g138338138353%_))))
                              (_%g138337138350%_ _%g138338138353%_))))
                      (_%g138337138350%_ _%g138338138353%_)))))
          (_%g138336138383%_ _%stx138335%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138266%_ _%stx138267%_)
        (let* ((_%g138269138286%_
                (lambda (_%g138270138283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138270138283%_))))
               (_%g138268138331%_
                (lambda (_%g138270138289%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138270138289%_))
                      (let ((_%e138273138291%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138270138289%_))))
                        (let ((_%hd138274138294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138273138291%_)))
                              (_%tl138275138296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138273138291%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138275138296%_))
                              (let ((_%e138276138299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138275138296%_))))
                                (let ((_%hd138277138302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138276138299%_)))
                                      (_%tl138278138304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138276138299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138278138304%_))
                                      (let ((_%e138279138307%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138278138304%_))))
                                        (let ((_%hd138280138310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138279138307%_)))
                                              (_%tl138281138312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138279138307%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138281138312%_))
                                              ((lambda (_%L138315%_
                                                        _%L138316%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138316%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138266%_ _%L138315%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138280138310%_
                                               _%hd138277138302%_)
                                              (_%g138269138286%_
                                               _%g138270138289%_))))
                                      (_%g138269138286%_ _%g138270138289%_))))
                              (_%g138269138286%_ _%g138270138289%_))))
                      (_%g138269138286%_ _%g138270138289%_)))))
          (_%g138268138331%_ _%stx138267%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138077%_ _%stx138078%_)
        (let* ((_%g138080138097%_
                (lambda (_%g138081138094%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138081138094%_))))
               (_%g138079138263%_
                (lambda (_%g138081138100%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138081138100%_))
                      (let ((_%e138084138102%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138081138100%_))))
                        (let ((_%hd138085138105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138084138102%_)))
                              (_%tl138086138107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138084138102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138086138107%_))
                              (let ((_%e138087138110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138086138107%_))))
                                (let ((_%hd138088138113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138087138110%_)))
                                      (_%tl138089138115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138087138110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138089138115%_))
                                      (let ((_%e138090138118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138089138115%_))))
                                        (let ((_%hd138091138121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138090138118%_)))
                                              (_%tl138092138123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138090138118%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138092138123%_))
                                              ((lambda (_%L138126%_
                                                        _%L138127%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138077%_ _%L138126%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138077%_ _%L138127%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138142%_ ((_%rest138145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138127%_ (cons _%L138126%_ '())))
                                (_%bind138147%_ '())
                                (_%args138148%_ '()))
               (let* ((_%rest138149138157%_ _%rest138145%_)
                      (_%else138151138165%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138147%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138148%_)
                                                 '()))))))
                      (_%K138153138251%_
                       (lambda (_%rest138168%_ _%e138169%_)
                         (let* ((_%__stx145169145170%_ _%e138169%_)
                                (_%g138174138192%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145169145170%_)))))
                           (let ((_%__kont145171145172%_
                                  (lambda ()
                                    (_%lp138142%_
                                     _%rest138168%_
                                     _%bind138147%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138169%_))
                                           _%args138148%_))))
                                 (_%__kont145173145174%_
                                  (lambda ()
                                    (_%lp138142%_
                                     _%rest138168%_
                                     _%bind138147%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138169%_))
                                           _%args138148%_))))
                                 (_%__kont145175145176%_
                                  (lambda ()
                                    (let ((_%tmp138199%_
                                           (let ((__tmp145622
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145622))))
                                      (_%lp138142%_
                                       _%rest138168%_
                                       (cons (cons _%tmp138199%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e138169%_))
                                                         '()))
                                             _%bind138147%_)
                                       (cons _%tmp138199%_ _%args138148%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145169145170%_))
                                 (let ((_%e138176138230%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145169145170%_))))
                                   (let ((_%tl138178138235%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138176138230%_)))
                                         (_%hd138177138233%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138176138230%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138177138233%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138177138233%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138178138235%_))
                                                 (let ((_%e138179138238%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138178138235%_))))
                                                   (let ((_%tl138181138243%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138179138238%_)))
                                                         (_%hd138180138241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138179138238%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138181138243%_))
                                                         (_%__kont145171145172%_)
                                                         (_%__kont145175145176%_))))
                                                 (_%__kont145175145176%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138177138233%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138178138235%_))
                                                     (let ((_%e138185138215%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138178138235%_))))
                                                       (let ((_%tl138187138220%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138185138215%_)))
                     (_%hd138186138218%_
                      (let () (declare (not safe)) (##car _%e138185138215%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138187138220%_))
                     (_%__kont145173145174%_)
                     (_%__kont145175145176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145175145176%_))
                                                 (_%__kont145175145176%_)))
                                         (_%__kont145175145176%_))))
                                 (_%__kont145175145176%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138149138157%_))
                     (let ((_%hd138154138254%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138149138157%_)))
                           (_%tl138155138256%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138149138157%_))))
                       (let* ((_%e138259%_ _%hd138154138254%_)
                              (_%rest138261%_ _%tl138155138256%_))
                         (_%K138153138251%_ _%rest138261%_ _%e138259%_)))
                     (_%else138151138165%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138091138121%_
                                               _%hd138088138113%_)
                                              (_%g138080138097%_
                                               _%g138081138100%_))))
                                      (_%g138080138097%_ _%g138081138100%_))))
                              (_%g138080138097%_ _%g138081138100%_))))
                      (_%g138080138097%_ _%g138081138100%_)))))
          (_%g138079138263%_ _%stx138078%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137888%_ _%stx137889%_)
        (let* ((_%g137891137908%_
                (lambda (_%g137892137905%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137892137905%_))))
               (_%g137890138074%_
                (lambda (_%g137892137911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137892137911%_))
                      (let ((_%e137895137913%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137892137911%_))))
                        (let ((_%hd137896137916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137895137913%_)))
                              (_%tl137897137918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137895137913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137897137918%_))
                              (let ((_%e137898137921%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137897137918%_))))
                                (let ((_%hd137899137924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137898137921%_)))
                                      (_%tl137900137926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137898137921%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137900137926%_))
                                      (let ((_%e137901137929%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137900137926%_))))
                                        (let ((_%hd137902137932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137901137929%_)))
                                              (_%tl137903137934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137901137929%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137903137934%_))
                                              ((lambda (_%L137937%_
                                                        _%L137938%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137888%_ _%L137937%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137888%_ _%L137938%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137953%_ ((_%rest137956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137938%_ (cons _%L137937%_ '())))
                                (_%bind137958%_ '())
                                (_%args137959%_ '()))
               (let* ((_%rest137960137968%_ _%rest137956%_)
                      (_%else137962137976%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137958%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137959%_)
                                                 '()))))))
                      (_%K137964138062%_
                       (lambda (_%rest137979%_ _%e137980%_)
                         (let* ((_%__stx145215145216%_ _%e137980%_)
                                (_%g137985138003%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145215145216%_)))))
                           (let ((_%__kont145217145218%_
                                  (lambda ()
                                    (_%lp137953%_
                                     _%rest137979%_
                                     _%bind137958%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137980%_))
                                           _%args137959%_))))
                                 (_%__kont145219145220%_
                                  (lambda ()
                                    (_%lp137953%_
                                     _%rest137979%_
                                     _%bind137958%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137980%_))
                                           _%args137959%_))))
                                 (_%__kont145221145222%_
                                  (lambda ()
                                    (let ((_%tmp138010%_
                                           (let ((__tmp145623
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145623))))
                                      (_%lp137953%_
                                       _%rest137979%_
                                       (cons (cons _%tmp138010%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137980%_))
                                                         '()))
                                             _%bind137958%_)
                                       (cons _%tmp138010%_ _%args137959%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145215145216%_))
                                 (let ((_%e137987138041%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145215145216%_))))
                                   (let ((_%tl137989138046%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137987138041%_)))
                                         (_%hd137988138044%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137987138041%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137988138044%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137988138044%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137989138046%_))
                                                 (let ((_%e137990138049%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137989138046%_))))
                                                   (let ((_%tl137992138054%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137990138049%_)))
                                                         (_%hd137991138052%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137990138049%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137992138054%_))
                                                         (_%__kont145217145218%_)
                                                         (_%__kont145221145222%_))))
                                                 (_%__kont145221145222%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137988138044%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137989138046%_))
                                                     (let ((_%e137996138026%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137989138046%_))))
                                                       (let ((_%tl137998138031%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137996138026%_)))
                     (_%hd137997138029%_
                      (let () (declare (not safe)) (##car _%e137996138026%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137998138031%_))
                     (_%__kont145219145220%_)
                     (_%__kont145221145222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145221145222%_))
                                                 (_%__kont145221145222%_)))
                                         (_%__kont145221145222%_))))
                                 (_%__kont145221145222%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137960137968%_))
                     (let ((_%hd137965138065%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137960137968%_)))
                           (_%tl137966138067%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137960137968%_))))
                       (let* ((_%e138070%_ _%hd137965138065%_)
                              (_%rest138072%_ _%tl137966138067%_))
                         (_%K137964138062%_ _%rest138072%_ _%e138070%_)))
                     (_%else137962137976%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137902137932%_
                                               _%hd137899137924%_)
                                              (_%g137891137908%_
                                               _%g137892137911%_))))
                                      (_%g137891137908%_ _%g137892137911%_))))
                              (_%g137891137908%_ _%g137892137911%_))))
                      (_%g137891137908%_ _%g137892137911%_)))))
          (_%g137890138074%_ _%stx137889%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137804%_ _%stx137805%_)
        (let* ((_%g137807137828%_
                (lambda (_%g137808137825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137808137825%_))))
               (_%g137806137885%_
                (lambda (_%g137808137831%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137808137831%_))
                      (let ((_%e137812137833%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137808137831%_))))
                        (let ((_%hd137813137836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137812137833%_)))
                              (_%tl137814137838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137812137833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137814137838%_))
                              (let ((_%e137815137841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137814137838%_))))
                                (let ((_%hd137816137844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137815137841%_)))
                                      (_%tl137817137846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137815137841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137817137846%_))
                                      (let ((_%e137818137849%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137817137846%_))))
                                        (let ((_%hd137819137852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137818137849%_)))
                                              (_%tl137820137854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137818137849%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137820137854%_))
                                              (let ((_%e137821137857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137820137854%_))))
                                                (let ((_%hd137822137860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137821137857%_)))
                                                      (_%tl137823137862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137821137857%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137823137862%_))
                                                      ((lambda (_%L137865%_
                                                                _%L137866%_
                                                                _%L137867%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137804%_ _%L137865%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137804%_
                                      _%L137866%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137804%_
                                            _%L137867%_))
                                         (cons ''#f '()))))))
               _%hd137822137860%_
               _%hd137819137852%_
               _%hd137816137844%_)
              (_%g137807137828%_ _%g137808137831%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137807137828%_
                                               _%g137808137831%_))))
                                      (_%g137807137828%_ _%g137808137831%_))))
                              (_%g137807137828%_ _%g137808137831%_))))
                      (_%g137807137828%_ _%g137808137831%_)))))
          (_%g137806137885%_ _%stx137805%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137704%_ _%stx137705%_)
        (let* ((_%g137707137732%_
                (lambda (_%g137708137729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137708137729%_))))
               (_%g137706137801%_
                (lambda (_%g137708137735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137708137735%_))
                      (let ((_%e137713137737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137708137735%_))))
                        (let ((_%hd137714137740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137713137737%_)))
                              (_%tl137715137742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137713137737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137715137742%_))
                              (let ((_%e137716137745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137715137742%_))))
                                (let ((_%hd137717137748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137716137745%_)))
                                      (_%tl137718137750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137716137745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137718137750%_))
                                      (let ((_%e137719137753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137718137750%_))))
                                        (let ((_%hd137720137756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137719137753%_)))
                                              (_%tl137721137758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137719137753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137721137758%_))
                                              (let ((_%e137722137761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137721137758%_))))
                                                (let ((_%hd137723137764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137722137761%_)))
                                                      (_%tl137724137766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137722137761%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137724137766%_))
                                                      (let ((_%e137725137769%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137724137766%_))))
                (let ((_%hd137726137772%_
                       (let () (declare (not safe)) (##car _%e137725137769%_)))
                      (_%tl137727137774%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137725137769%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137727137774%_))
                      ((lambda (_%L137777%_
                                _%L137778%_
                                _%L137779%_
                                _%L137780%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137704%_
                                        _%L137778%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137704%_
                                              _%L137777%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137704%_
                                                    _%L137779%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137704%_
                                                          _%L137780%_))
                                                       (cons ''#f '())))))))
                       _%hd137726137772%_
                       _%hd137723137764%_
                       _%hd137720137756%_
                       _%hd137717137748%_)
                      (_%g137707137732%_ _%g137708137735%_))))
              (_%g137707137732%_ _%g137708137735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137707137732%_
                                               _%g137708137735%_))))
                                      (_%g137707137732%_ _%g137708137735%_))))
                              (_%g137707137732%_ _%g137708137735%_))))
                      (_%g137707137732%_ _%g137708137735%_)))))
          (_%g137706137801%_ _%stx137705%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137620%_ _%stx137621%_)
        (let* ((_%g137623137644%_
                (lambda (_%g137624137641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137624137641%_))))
               (_%g137622137701%_
                (lambda (_%g137624137647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137624137647%_))
                      (let ((_%e137628137649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137624137647%_))))
                        (let ((_%hd137629137652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137628137649%_)))
                              (_%tl137630137654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137628137649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137630137654%_))
                              (let ((_%e137631137657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137630137654%_))))
                                (let ((_%hd137632137660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137631137657%_)))
                                      (_%tl137633137662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137631137657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137633137662%_))
                                      (let ((_%e137634137665%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137633137662%_))))
                                        (let ((_%hd137635137668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137634137665%_)))
                                              (_%tl137636137670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137634137665%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137636137670%_))
                                              (let ((_%e137637137673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137636137670%_))))
                                                (let ((_%hd137638137676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137637137673%_)))
                                                      (_%tl137639137678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137637137673%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137639137678%_))
                                                      ((lambda (_%L137681%_
                                                                _%L137682%_
                                                                _%L137683%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137620%_ _%L137681%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137620%_
                                      _%L137682%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137620%_
                                            _%L137683%_))
                                         (cons ''#f '()))))))
               _%hd137638137676%_
               _%hd137635137668%_
               _%hd137632137660%_)
              (_%g137623137644%_ _%g137624137647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137623137644%_
                                               _%g137624137647%_))))
                                      (_%g137623137644%_ _%g137624137647%_))))
                              (_%g137623137644%_ _%g137624137647%_))))
                      (_%g137623137644%_ _%g137624137647%_)))))
          (_%g137622137701%_ _%stx137621%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137520%_ _%stx137521%_)
        (let* ((_%g137523137548%_
                (lambda (_%g137524137545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137524137545%_))))
               (_%g137522137617%_
                (lambda (_%g137524137551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137524137551%_))
                      (let ((_%e137529137553%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137524137551%_))))
                        (let ((_%hd137530137556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137529137553%_)))
                              (_%tl137531137558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137529137553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137531137558%_))
                              (let ((_%e137532137561%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137531137558%_))))
                                (let ((_%hd137533137564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137532137561%_)))
                                      (_%tl137534137566%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137532137561%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137534137566%_))
                                      (let ((_%e137535137569%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137534137566%_))))
                                        (let ((_%hd137536137572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137535137569%_)))
                                              (_%tl137537137574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137535137569%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137537137574%_))
                                              (let ((_%e137538137577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137537137574%_))))
                                                (let ((_%hd137539137580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137538137577%_)))
                                                      (_%tl137540137582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137538137577%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137540137582%_))
                                                      (let ((_%e137541137585%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137540137582%_))))
                (let ((_%hd137542137588%_
                       (let () (declare (not safe)) (##car _%e137541137585%_)))
                      (_%tl137543137590%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137541137585%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137543137590%_))
                      ((lambda (_%L137593%_
                                _%L137594%_
                                _%L137595%_
                                _%L137596%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137520%_
                                        _%L137594%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137520%_
                                              _%L137593%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137520%_
                                                    _%L137595%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137520%_
                                                          _%L137596%_))
                                                       (cons ''#f '())))))))
                       _%hd137542137588%_
                       _%hd137539137580%_
                       _%hd137536137572%_
                       _%hd137533137564%_)
                      (_%g137523137548%_ _%g137524137551%_))))
              (_%g137523137548%_ _%g137524137551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137523137548%_
                                               _%g137524137551%_))))
                                      (_%g137523137548%_ _%g137524137551%_))))
                              (_%g137523137548%_ _%g137524137551%_))))
                      (_%g137523137548%_ _%g137524137551%_)))))
          (_%g137522137617%_ _%stx137521%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137315%_ _%stx137316%_)
        (let* ((_%g137318137339%_
                (lambda (_%g137319137336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137319137336%_))))
               (_%g137317137517%_
                (lambda (_%g137319137342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137319137342%_))
                      (let ((_%e137323137344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137319137342%_))))
                        (let ((_%hd137324137347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137323137344%_)))
                              (_%tl137325137349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137323137344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137325137349%_))
                              (let ((_%e137326137352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137325137349%_))))
                                (let ((_%hd137327137355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137326137352%_)))
                                      (_%tl137328137357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137326137352%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137328137357%_))
                                      (let ((_%e137329137360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137328137357%_))))
                                        (let ((_%hd137330137363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137329137360%_)))
                                              (_%tl137331137365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137329137360%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137331137365%_))
                                              (let ((_%e137332137368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137331137365%_))))
                                                (let ((_%hd137333137371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137332137368%_)))
                                                      (_%tl137334137373%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137332137368%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137334137373%_))
                                                      ((lambda (_%L137376%_
                                                                _%L137377%_
                                                                _%L137378%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137315%_
                                    _%L137376%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137315%_
                                          _%L137377%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137396%_ ((_%rest137399%_
                                         (cons _%L137377%_
                                               (cons _%L137376%_ '())))
                                        (_%bind137401%_ '())
                                        (_%args137402%_ '()))
                       (let* ((_%rest137403137411%_ _%rest137399%_)
                              (_%else137405137419%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137401%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145624 _%args137402%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137407137505%_
                               (lambda (_%rest137422%_ _%e137423%_)
                                 (let* ((_%__stx145261145262%_ _%e137423%_)
                                        (_%g137428137446%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145261145262%_)))))
                                   (let ((_%__kont145263145264%_
                                          (lambda ()
                                            (_%lp137396%_
                                             _%rest137422%_
                                             _%bind137401%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e137423%_))
                                                   _%args137402%_))))
                                         (_%__kont145265145266%_
                                          (lambda ()
                                            (_%lp137396%_
                                             _%rest137422%_
                                             _%bind137401%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e137423%_))
                                                   _%args137402%_))))
                                         (_%__kont145267145268%_
                                          (lambda ()
                                            (let ((_%tmp137453%_
                                                   (let ((__tmp145625
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145625))))
                                              (_%lp137396%_
                                               _%rest137422%_
                                               (cons (cons _%tmp137453%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137423%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind137401%_)
                                               (cons _%tmp137453%_
                                                     _%args137402%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145261145262%_))
                                         (let ((_%e137430137484%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145261145262%_))))
                                           (let ((_%tl137432137489%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137430137484%_)))
                                                 (_%hd137431137487%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137430137484%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137431137487%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137431137487%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137432137489%_))
                                                         (let ((_%e137433137492%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137432137489%_))))
                   (let ((_%tl137435137497%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137433137492%_)))
                         (_%hd137434137495%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137433137492%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137435137497%_))
                         (_%__kont145263145264%_)
                         (_%__kont145267145268%_))))
                 (_%__kont145267145268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137431137487%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137432137489%_))
                     (let ((_%e137439137469%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137432137489%_))))
                       (let ((_%tl137441137474%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137439137469%_)))
                             (_%hd137440137472%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137439137469%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137441137474%_))
                             (_%__kont145265145266%_)
                             (_%__kont145267145268%_))))
                     (_%__kont145267145268%_))
                 (_%__kont145267145268%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145267145268%_))))
                                         (_%__kont145267145268%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137403137411%_))
                             (let ((_%hd137408137508%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137403137411%_)))
                                   (_%tl137409137510%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137403137411%_))))
                               (let* ((_%e137513%_ _%hd137408137508%_)
                                      (_%rest137515%_ _%tl137409137510%_))
                                 (_%K137407137505%_
                                  _%rest137515%_
                                  _%e137513%_)))
                             (_%else137405137419%_))))))
               _%hd137333137371%_
               _%hd137330137363%_
               _%hd137327137355%_)
              (_%g137318137339%_ _%g137319137342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137318137339%_
                                               _%g137319137342%_))))
                                      (_%g137318137339%_ _%g137319137342%_))))
                              (_%g137318137339%_ _%g137319137342%_))))
                      (_%g137318137339%_ _%g137319137342%_)))))
          (_%g137317137517%_ _%stx137316%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137094%_ _%stx137095%_)
        (let* ((_%g137097137122%_
                (lambda (_%g137098137119%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137098137119%_))))
               (_%g137096137312%_
                (lambda (_%g137098137125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137098137125%_))
                      (let ((_%e137103137127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137098137125%_))))
                        (let ((_%hd137104137130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137103137127%_)))
                              (_%tl137105137132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137103137127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137105137132%_))
                              (let ((_%e137106137135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137105137132%_))))
                                (let ((_%hd137107137138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137106137135%_)))
                                      (_%tl137108137140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137106137135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137108137140%_))
                                      (let ((_%e137109137143%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137108137140%_))))
                                        (let ((_%hd137110137146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137109137143%_)))
                                              (_%tl137111137148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137109137143%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137111137148%_))
                                              (let ((_%e137112137151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137111137148%_))))
                                                (let ((_%hd137113137154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137112137151%_)))
                                                      (_%tl137114137156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137112137151%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137114137156%_))
                                                      (let ((_%e137115137159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137114137156%_))))
                (let ((_%hd137116137162%_
                       (let () (declare (not safe)) (##car _%e137115137159%_)))
                      (_%tl137117137164%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137115137159%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137117137164%_))
                      ((lambda (_%L137167%_
                                _%L137168%_
                                _%L137169%_
                                _%L137170%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137094%_
                                            _%L137168%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137094%_
                                                  _%L137167%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137094%_
                                                        _%L137169%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137191%_ ((_%rest137194%_
                                                 (cons _%L137169%_
                                                       (cons _%L137167%_
                                                             (cons _%L137168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137196%_ '())
                                                (_%args137197%_ '()))
                               (let* ((_%rest137198137206%_ _%rest137194%_)
                                      (_%else137200137214%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137196%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145626 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145626 _%args137197%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137202137300%_
                                       (lambda (_%rest137217%_ _%e137218%_)
                                         (let* ((_%__stx145307145308%_
                                                 _%e137218%_)
                                                (_%g137223137241%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145307145308%_)))))
                                           (let ((_%__kont145309145310%_
                                                  (lambda ()
                                                    (_%lp137191%_
                                                     _%rest137217%_
                                                     _%bind137196%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e137218%_))
                                                           _%args137197%_))))
                                                 (_%__kont145311145312%_
                                                  (lambda ()
                                                    (_%lp137191%_
                                                     _%rest137217%_
                                                     _%bind137196%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e137218%_))
                                                           _%args137197%_))))
                                                 (_%__kont145313145314%_
                                                  (lambda ()
                                                    (let ((_%tmp137248%_
                                                           (let ((__tmp145627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145627))))
              (_%lp137191%_
               _%rest137217%_
               (cons (cons _%tmp137248%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e137218%_))
                                 '()))
                     _%bind137196%_)
               (cons _%tmp137248%_ _%args137197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145307145308%_))
                                                 (let ((_%e137225137279%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145307145308%_))))
                                                   (let ((_%tl137227137284%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137225137279%_)))
                                                         (_%hd137226137282%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137225137279%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137226137282%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137226137282%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137227137284%_))
                         (let ((_%e137228137287%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137227137284%_))))
                           (let ((_%tl137230137292%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137228137287%_)))
                                 (_%hd137229137290%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137228137287%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137230137292%_))
                                 (_%__kont145309145310%_)
                                 (_%__kont145313145314%_))))
                         (_%__kont145313145314%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137226137282%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137227137284%_))
                             (let ((_%e137234137264%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137227137284%_))))
                               (let ((_%tl137236137269%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137234137264%_)))
                                     (_%hd137235137267%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137234137264%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137236137269%_))
                                     (_%__kont145311145312%_)
                                     (_%__kont145313145314%_))))
                             (_%__kont145313145314%_))
                         (_%__kont145313145314%_)))
                 (_%__kont145313145314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145313145314%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137198137206%_))
                                     (let ((_%hd137203137303%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137198137206%_)))
                                           (_%tl137204137305%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137198137206%_))))
                                       (let* ((_%e137308%_ _%hd137203137303%_)
                                              (_%rest137310%_
                                               _%tl137204137305%_))
                                         (_%K137202137300%_
                                          _%rest137310%_
                                          _%e137308%_)))
                                     (_%else137200137214%_))))))
                       _%hd137116137162%_
                       _%hd137113137154%_
                       _%hd137110137146%_
                       _%hd137107137138%_)
                      (_%g137097137122%_ _%g137098137125%_))))
              (_%g137097137122%_ _%g137098137125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137097137122%_
                                               _%g137098137125%_))))
                                      (_%g137097137122%_ _%g137098137125%_))))
                              (_%g137097137122%_ _%g137098137125%_))))
                      (_%g137097137122%_ _%g137098137125%_)))))
          (_%g137096137312%_ _%stx137095%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136933%_ _%stx136934%_)
        (letrec ((_%import-set-template136936%_
                  (lambda (_%in137039%_ _%phi137040%_)
                    (let ((_%iphi137042%_
                           (fx+ _%phi137040%_
                                (##direct-structure-ref
                                 _%in137039%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137043%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137039%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137045%_ ((_%rest137047%_ _%imports137043%_)
                                         (_%r137048%_ '()))
                        (let* ((_%rest137049137057%_ _%rest137047%_)
                               (_%else137051137065%_ (lambda () _%r137048%_))
                               (_%K137053137082%_
                                (lambda (_%rest137068%_ _%in137069%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137069%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi137042%_))
                                          (_%lp137045%_
                                           _%rest137068%_
                                           (cons _%in137069%_ _%r137048%_))
                                          (_%lp137045%_
                                           _%rest137068%_
                                           _%r137048%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137069%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137073%_
                                                 (fx+ _%phi137040%_
                                                      (##direct-structure-ref
                                                       _%in137069%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137073%_))
                                                (_%lp137045%_
                                                 _%rest137068%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in137069%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r137048%_))
                                                (_%lp137045%_
                                                 _%rest137068%_
                                                 _%r137048%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137069%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137076%_
                                                     (fx+ _%iphi137042%_
                                                          (##direct-structure-ref
                                                           _%in137069%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137076%_))
                                                    (_%lp137045%_
                                                     _%rest137068%_
                                                     (cons (##direct-structure-ref
                                                            _%in137069%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r137048%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137076%_))
                                                        (_%lp137045%_
                                                         _%rest137068%_
                                                         (let ((__tmp145628
                                                                (_%import-set-template136936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in137069%_
                         _%iphi137042%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r137048%_ __tmp145628)))
                (_%lp137045%_ _%rest137068%_ _%r137048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp137045%_
                                               _%rest137068%_
                                               _%r137048%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137049137057%_))
                              (let ((_%hd137054137085%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137049137057%_)))
                                    (_%tl137055137087%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137049137057%_))))
                                (let* ((_%in137090%_ _%hd137054137085%_)
                                       (_%rest137092%_ _%tl137055137087%_))
                                  (_%K137053137082%_
                                   _%rest137092%_
                                   _%in137090%_)))
                              (_%else137051137065%_))))))))
          (let* ((_%g136938136948%_
                  (lambda (_%g136939136945%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136939136945%_))))
                 (_%g136937137036%_
                  (lambda (_%g136939136951%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136939136951%_))
                        (let ((_%e136941136953%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136939136951%_))))
                          (let ((_%hd136942136956%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136941136953%_)))
                                (_%tl136943136958%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136941136953%_))))
                            ((lambda (_%L136961%_)
                               (let ((_%ht136972%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136974%_ ((_%rest136976%_
                                                     _%L136961%_)
                                                    (_%loads136977%_ '()))
                                   (letrec ((_%K136979%_
                                             (lambda (_%ctx137029%_
                                                      _%rest137030%_)
                                               (let ((_%id137032%_
                                                      (##structure-ref
                                                       _%ctx137029%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136972%_
                                                        _%id137032%_))
                                                     (_%lp136974%_
                                                      _%rest137030%_
                                                      _%loads136977%_)
                                                     (let ((_%rt137034%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137032%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136972%_
                                                          _%id137032%_
                                                          _%rt137034%_))
                                                       (_%lp136974%_
                                                        _%rest137030%_
                                                        (cons _%rt137034%_
                                                              _%loads136977%_))))))))
                                     (let* ((_%rest136980136988%_
                                             _%rest136976%_)
                                            (_%else136982137000%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145630
                                                            (lambda (_%g136995136997%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136995136997%_)))
                   (__tmp145629 (reverse _%loads136977%_)))
               (declare (not safe))
               (##map __tmp145630 __tmp145629)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136984137017%_
                                             (lambda (_%rest137003%_
                                                      _%in137004%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137004%_
                                                      'gx#module-context::t))
                                                   (_%K136979%_
                                                    _%in137004%_
                                                    _%rest137003%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137004%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137004%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K136979%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in137004%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest137003%_)
                   (_%lp136974%_ _%rest137003%_ _%loads136977%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137004%_
                      'gx#import-set::t))
                   (let ((_%phi137009%_
                          (##direct-structure-ref
                           _%in137004%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137009%_)
                         (_%K136979%_
                          (##direct-structure-ref
                           _%in137004%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest137003%_)
                         (if (fxpositive? _%phi137009%_)
                             (let ((_%deps137013%_
                                    (_%import-set-template136936%_
                                     _%in137004%_
                                     '0)))
                               (_%lp136974%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest137003%_
                                   _%deps137013%_))
                                _%loads136977%_))
                             (_%lp136974%_ _%rest137003%_ _%loads136977%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx136934%_
                      _%in137004%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136980136988%_))
                                           (let ((_%hd136985137020%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136980136988%_)))
                                                 (_%tl136986137022%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136980136988%_))))
                                             (let* ((_%in137025%_
                                                     _%hd136985137020%_)
                                                    (_%rest137027%_
                                                     _%tl136986137022%_))
                                               (_%K136984137017%_
                                                _%rest137027%_
                                                _%in137025%_)))
                                           (_%else136982137000%_)))))))
                             _%tl136943136958%_)))
                        (_%g136938136948%_ _%g136939136951%_)))))
            (_%g136937137036%_ _%stx136934%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136746%_ _%stx136747%_)
        (letrec ((_%add-lift!136749%_
                  (lambda (_%expr136931%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136931%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136750%_
                  (lambda (_%id136928%_ _%marks136929%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136928%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136929%_
                                                        '()))))))))
                 (_%generate-simple136751%_
                  (lambda (_%stxq136923%_)
                    (let ((_%gid136925%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136926%_
                           (gxc#generate-runtime-identifier _%stxq136923%_)))
                      (_%add-lift!136749%_
                       (cons 'define
                             (cons _%gid136925%_
                                   (cons (_%generate-syntax-quote136750%_
                                          _%qid136926%_
                                          ''())
                                         '()))))
                      (let ((__tmp145631
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145631 _%stxq136923%_ _%gid136925%_))
                      _%gid136925%_)))
                 (_%generate-serialized136752%_
                  (lambda (_%stxq136913%_ _%marks136914%_)
                    (let* ((_%mark-refs136916%_
                            (map _%generate-mark136753%_ _%marks136914%_))
                           (_%gid136918%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136920%_
                            (gxc#generate-runtime-identifier _%stxq136913%_)))
                      (_%add-lift!136749%_
                       (cons 'define
                             (cons _%gid136918%_
                                   (cons (_%generate-syntax-quote136750%_
                                          _%qid136920%_
                                          (cons 'list _%mark-refs136916%_))
                                         '()))))
                      (let ((__tmp145632
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145632 _%stxq136913%_ _%gid136918%_))
                      _%gid136918%_)))
                 (_%generate-mark136753%_
                  (lambda (_%mark136898%_)
                    (let ((_%$e136900%_
                           (let ((__tmp145633
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145633 _%mark136898%_))))
                      (if _%$e136900%_
                          (values _%$e136900%_)
                          (let* ((_%gid136904%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr136906%_
                                  (_%serialize-mark136754%_ _%mark136898%_))
                                 (_%ctx136908%_
                                  (let ((__tmp145634
                                         (##structure-ref
                                          _%mark136898%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp145634)))
                                 (_%ctx-ref136910%_
                                  (if (eq? _%ctx136908%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref136755%_
                                                               _%ctx136908%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp145635
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145635
                               _%mark136898%_
                               _%gid136904%_))
                            (_%add-lift!136749%_
                             (cons 'define
                                   (cons _%gid136904%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr136906%_ '()))
                   (cons _%ctx-ref136910%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid136904%_)))))
                 (_%serialize-mark136754%_
                  (lambda (_%mark136845%_)
                    (letrec ((_%quote-e136847%_
                              (lambda (_%sym136896%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136896%_))
                                    _%sym136896%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136896%_))))))
                      (let* ((_%mark136848136857%_ _%mark136845%_)
                             (_%E136850136861%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136848136857%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136851136873%_
                              (lambda (_%trace136864%_
                                       _%phi136865%_
                                       _%ctx136866%_
                                       _%subst136867%_)
                                (let ((_%subs136869%_
                                       (if _%subst136867%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136867%_))
                                           '())))
                                  (cons _%phi136865%_
                                        (map (lambda (_%pair136871%_)
                                               (cons (_%quote-e136847%_
                                                      (car _%pair136871%_))
                                                     (_%quote-e136847%_
                                                      (cdr _%pair136871%_))))
                                             _%subs136869%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136848136857%_
                               'gx#expander-mark::t))
                            (let* ((_%e136852136876%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136848136857%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136879%_ _%e136852136876%_)
                                   (_%e136853136881%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136848136857%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136884%_ _%e136853136881%_)
                                   (_%e136854136886%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136848136857%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136889%_ _%e136854136886%_)
                                   (_%e136855136891%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136848136857%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136894%_ _%e136855136891%_))
                              (_%K136851136873%_
                               _%trace136894%_
                               _%phi136889%_
                               _%ctx136884%_
                               _%subst136879%_))
                            (_%E136850136861%_))))))
                 (_%context-ref136755%_
                  (lambda (_%ctx136832%_)
                    (if (let ((__tmp145636
                               (##structure-ref
                                _%ctx136832%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145636
                           'gx#module-context::t))
                        (let ((_%ctx-ref136834%_
                               (_%context-ref-nested136757%_ _%ctx136832%_))
                              (_%ctx-origin136835%_
                               (_%context-ref-origin136756%_ _%ctx136832%_))
                              (_%origin136836%_
                               (_%context-ref-origin136756%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin136836%_ _%ctx-origin136835%_)
                              (let ((_%ref136838%_
                                     (_%context-ref-nested136757%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp136840%_ ((_%ref136842%_
                                                    (cdr _%ref136838%_))
                                                   (_%ctx-ref136843%_
                                                    (cdr _%ctx-ref136834%_)))
                                  (if (and (pair? _%ref136842%_)
                                           (eq? (car _%ref136842%_)
                                                (car _%ctx-ref136843%_)))
                                      (_%lp136840%_
                                       (cdr _%ref136842%_)
                                       (cdr _%ctx-ref136843%_))
                                      (cons '#f _%ctx-ref136843%_))))
                              _%ctx-ref136834%_))
                        (let ((__tmp145637
                               (##structure-ref
                                _%ctx136832%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145637)))))
                 (_%context-ref-origin136756%_
                  (lambda (_%ctx136824%_)
                    (let _%lp136826%_ ((_%ctx136828%_ _%ctx136824%_))
                      (let ((_%super136830%_
                             (##structure-ref
                              _%ctx136828%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136830%_
                               'gx#module-context::t))
                            (_%lp136826%_ _%super136830%_)
                            _%ctx136828%_)))))
                 (_%context-ref-nested136757%_
                  (lambda (_%ctx136815%_)
                    (let _%lp136817%_ ((_%ctx136819%_ _%ctx136815%_)
                                       (_%r136820%_ '()))
                      (let ((_%super136822%_
                             (##structure-ref
                              _%ctx136819%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136822%_
                               'gx#module-context::t))
                            (_%lp136817%_
                             _%super136822%_
                             (cons (car (##structure-ref
                                         _%ctx136819%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r136820%_))
                            (cons (let ((__tmp145638
                                         (##structure-ref
                                          _%ctx136819%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145638))
                                  _%r136820%_)))))))
          (let* ((_%g136759136772%_
                  (lambda (_%g136760136769%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136760136769%_))))
                 (_%g136758136812%_
                  (lambda (_%g136760136775%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136760136775%_))
                        (let ((_%e136762136777%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136760136775%_))))
                          (let ((_%hd136763136780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136762136777%_)))
                                (_%tl136764136782%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136762136777%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136764136782%_))
                                (let ((_%e136765136785%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136764136782%_))))
                                  (let ((_%hd136766136788%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136765136785%_)))
                                        (_%tl136767136790%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136765136785%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136767136790%_))
                                        ((lambda (_%L136793%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136793%_))
                                               (let ((_%$e136806%_
                                                      (let ((__tmp145639
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145639 _%L136793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136806%_
                                                     (values _%$e136806%_)
                                                     (let ((_%marks136810%_
                                                            (##direct-structure-ref
                                                             _%L136793%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks136810%_)
                                                           (_%generate-simple136751%_
                                                            _%L136793%_)
                                                           (_%generate-serialized136752%_
                                                            _%L136793%_
                                                            _%marks136810%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136793%_))))
                                         _%hd136766136788%_)
                                        (_%g136759136772%_
                                         _%g136760136775%_))))
                                (_%g136759136772%_ _%g136760136775%_))))
                        (_%g136759136772%_ _%g136760136775%_)))))
            (_%g136758136812%_ _%stx136747%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136678%_ _%stx136679%_)
        (let* ((_%g136681136698%_
                (lambda (_%g136682136695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136682136695%_))))
               (_%g136680136743%_
                (lambda (_%g136682136701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136682136701%_))
                      (let ((_%e136685136703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136682136701%_))))
                        (let ((_%hd136686136706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136685136703%_)))
                              (_%tl136687136708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136685136703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136687136708%_))
                              (let ((_%e136688136711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136687136708%_))))
                                (let ((_%hd136689136714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136688136711%_)))
                                      (_%tl136690136716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136688136711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136690136716%_))
                                      (let ((_%e136691136719%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136690136716%_))))
                                        (let ((_%hd136692136722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136691136719%_)))
                                              (_%tl136693136724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136691136719%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136693136724%_))
                                              ((lambda (_%L136727%_
                                                        _%L136728%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136728%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136678%_ _%L136727%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136692136722%_
                                               _%hd136689136714%_)
                                              (_%g136681136698%_
                                               _%g136682136701%_))))
                                      (_%g136681136698%_ _%g136682136701%_))))
                              (_%g136681136698%_ _%g136682136701%_))))
                      (_%g136681136698%_ _%g136682136701%_)))))
          (_%g136680136743%_ _%stx136679%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136627%_ _%stx136628%_)
        (let* ((_%g136630136640%_
                (lambda (_%g136631136637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136631136637%_))))
               (_%g136629136675%_
                (lambda (_%g136631136643%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136631136643%_))
                      (let ((_%e136633136645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136631136643%_))))
                        (let ((_%hd136634136648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136633136645%_)))
                              (_%tl136635136650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136633136645%_))))
                          ((lambda (_%L136653%_)
                             (let* ((_%c-body136667%_
                                     (map (lambda (_%g136662136664%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136627%_
                                               _%g136662136664%_)))
                                          _%L136653%_))
                                    (_%c-body136672%_
                                     (let ((__tmp145640
                                            (lambda (_%$obj136669%_)
                                              (not (eq? _%$obj136669%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145640
                                        _%c-body136667%_))))
                               (cons '%#begin _%c-body136672%_)))
                           _%tl136635136650%_)))
                      (_%g136630136640%_ _%g136631136643%_)))))
          (_%g136629136675%_ _%stx136628%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136532%_ _%stx136533%_)
        (let* ((_%g136535136545%_
                (lambda (_%g136536136542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136536136542%_))))
               (_%g136534136624%_
                (lambda (_%g136536136548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136536136548%_))
                      (let ((_%e136538136550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136536136548%_))))
                        (let ((_%hd136539136553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136538136550%_)))
                              (_%tl136540136555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136538136550%_))))
                          ((lambda (_%L136558%_)
                             (let* ((_%phi136568%_
                                     (let ((__tmp145641
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145641 '1)))
                                    (_%block136570%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self136532%_ 'state))
                                      _%phi136568%_))
                                    (_%compiled136573%_
                                     (let ((__tmp145642
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self136532%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L136558%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145642
                                        gx#current-expander-phi
                                        _%phi136568%_)))
                                    (_%g136576136586%_
                                     (lambda (_%g136577136583%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136577136583%_))))
                                    (_%g136575136621%_
                                     (lambda (_%g136577136589%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g136577136589%_))
                                           (let ((_%e136579136591%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g136577136589%_))))
                                             (let ((_%hd136580136594%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e136579136591%_)))
                                                   (_%tl136581136596%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e136579136591%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd136580136594%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd136580136594%_))
                                                       ((lambda (_%L136599%_)
                                                          (let ((_%c-body136616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj136613%_)
                                   (not (eq? _%$obj136613%_ '#!void)))
                                 _%L136599%_)))
                    (if _%block136570%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block136570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body136616%_))
                        (if (null? _%c-body136616%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body136616%_)))))
                _%tl136581136596%_)
               (_%g136576136586%_ _%g136577136589%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g136576136586%_
                                                    _%g136577136589%_))))
                                           (_%g136576136586%_
                                            _%g136577136589%_)))))
                               (_%g136575136621%_ _%compiled136573%_)))
                           _%tl136540136555%_)))
                      (_%g136535136545%_ _%g136536136548%_)))))
          (_%g136534136624%_ _%stx136533%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136463%_ _%stx136464%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self136463%_ 'state)))
        (let* ((_%g136466136480%_
                (lambda (_%g136467136477%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136467136477%_))))
               (_%g136465136529%_
                (lambda (_%g136467136483%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136467136483%_))
                      (let ((_%e136470136485%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136467136483%_))))
                        (let ((_%hd136471136488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136470136485%_)))
                              (_%tl136472136490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136470136485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136472136490%_))
                              (let ((_%e136473136493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136472136490%_))))
                                (let ((_%hd136474136496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136473136493%_)))
                                      (_%tl136475136498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136473136493%_))))
                                  ((lambda (_%L136501%_ _%L136502%_)
                                     (let ((_%key136515%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136502%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136515%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136464%_
                                              _%L136502%_
                                              _%key136515%_)))
                                       (let* ((_%ctx136517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136502%_)))
                                              (_%code136520%_
                                               (let ((__tmp145643
                                                      (lambda ()
                                                        (let ((__tmp145644
                                                               (##structure-ref
                                                                _%ctx136517%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136463%_
                                                           __tmp145644)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145643
                                                  gx#current-expander-context
                                                  _%ctx136517%_)))
                                              (_%rt136522%_
                                               (let ((__tmp145645
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145645
                                                  _%ctx136517%_)))
                                              (_%loader136524%_
                                               (if _%rt136522%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136522%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136502%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self136463%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid136526%_
                                                     (cons _%code136520%_
                                                           _%loader136524%_))))))
                                   _%tl136475136498%_
                                   _%hd136474136496%_)))
                              (_%g136466136480%_ _%g136467136483%_))))
                      (_%g136466136480%_ _%g136467136483%_)))))
          (_%g136465136529%_ _%stx136464%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136450%_ _%context-chain136451%_)
        (let _%lp136453%_ ((_%ctx136455%_ _%ctx136450%_) (_%path136456%_ '()))
          (let ((_%super136458%_
                 (##structure-ref _%ctx136455%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136458%_ _%context-chain136451%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx136455%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path136456%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136458%_
                       'gx#module-context::t))
                    (_%lp136453%_
                     _%super136458%_
                     (cons (car (##structure-ref
                                 _%ctx136455%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path136456%_))
                    (cons (let ((__tmp145646
                                 (##structure-ref
                                  _%ctx136455%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp145646))
                          _%path136456%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136443%_ ((_%ctx136445%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136446%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136445%_ 'gx#module-context::t))
              (_%lp136443%_
               (##structure-ref _%ctx136445%_ '3 gx#phi-context::t '#f)
               (cons _%ctx136445%_ _%r136446%_))
              _%r136446%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self136206%_ _%stx136207%_)
        (letrec* ((_%context-chain136209%_ (gxc#current-context-chain))
                  (_%make-import-spec136210%_
                   (lambda (_%in136379%_)
                     (let* ((_%in136380136392%_ _%in136379%_)
                            (_%E136382136396%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136380136392%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136383136406%_
                             (lambda (_%phi136399%_
                                      _%name136400%_
                                      _%src-name136401%_
                                      _%src-phi136402%_
                                      _%src-key136403%_
                                      _%src-ctx136404%_)
                               (cons _%phi136399%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name136400%_)
                                           (cons _%src-phi136402%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name136401%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136380136392%_
                              'gx#module-import::t))
                           (let ((_%e136384136409%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136380136392%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136384136409%_
                                    'gx#module-export::t))
                                 (let* ((_%e136387136412%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136384136409%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136415%_ _%e136387136412%_)
                                        (_%e136388136417%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136384136409%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136420%_ _%e136388136417%_)
                                        (_%e136389136422%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136384136409%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136425%_ _%e136389136422%_)
                                        (_%e136390136427%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136384136409%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136430%_ _%e136390136427%_)
                                        (_%e136385136432%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136380136392%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136435%_ _%e136385136432%_)
                                        (_%e136386136437%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136380136392%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136440%_ _%e136386136437%_))
                                   (_%K136383136406%_
                                    _%phi136440%_
                                    _%name136435%_
                                    _%src-name136430%_
                                    _%src-phi136425%_
                                    _%src-key136420%_
                                    _%src-ctx136415%_))
                                 (_%E136382136396%_)))
                           (_%E136382136396%_)))))
                  (_%make-import-path136211%_
                   (lambda (_%ctx136377%_)
                     (gxc#generate-meta-import-path
                      _%ctx136377%_
                      _%context-chain136209%_)))
                  (_%make-import-spec-in136212%_
                   (lambda (_%ctx136374%_ _%in136375%_)
                     (cons 'spec:
                           (cons (_%make-import-path136211%_ _%ctx136374%_)
                                 (reverse _%in136375%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self136206%_ 'state)))
          (let* ((_%g136214136224%_
                  (lambda (_%g136215136221%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136215136221%_))))
                 (_%g136213136371%_
                  (lambda (_%g136215136227%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136215136227%_))
                        (let ((_%e136217136229%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136215136227%_))))
                          (let ((_%hd136218136232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136217136229%_)))
                                (_%tl136219136234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136217136229%_))))
                            ((lambda (_%L136237%_)
                               (let _%lp136248%_ ((_%rest136250%_ _%L136237%_)
                                                  (_%current-src136251%_ '#f)
                                                  (_%current-in136252%_ '())
                                                  (_%r136253%_ '()))
                                 (let* ((_%rest136254136262%_ _%rest136250%_)
                                        (_%else136256136272%_
                                         (lambda ()
                                           (let ((_%r136270%_
                                                  (if _%current-src136251%_
                                                      (cons (_%make-import-spec-in136212%_
                                                             _%current-src136251%_
                                                             _%current-in136252%_)
                                                            _%r136253%_)
                                                      _%r136253%_)))
                                             (cons '%#import
                                                   (reverse _%r136270%_)))))
                                        (_%K136258136359%_
                                         (lambda (_%rest136275%_ _%in136276%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136276%_
                                                  'gx#module-import::t))
                                               (let* ((_%in136278136285%_
                                                       _%in136276%_)
                                                      (_%E136280136289%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in136278136285%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K136281136297%_
               (lambda (_%src-ctx136292%_)
                 (if (eq? _%current-src136251%_ _%src-ctx136292%_)
                     (_%lp136248%_
                      _%rest136275%_
                      _%current-src136251%_
                      (cons (_%make-import-spec136210%_ _%in136276%_)
                            _%current-in136252%_)
                      _%r136253%_)
                     (if _%current-src136251%_
                         (_%lp136248%_
                          _%rest136275%_
                          _%src-ctx136292%_
                          (cons (_%make-import-spec136210%_ _%in136276%_) '())
                          (cons (_%make-import-spec-in136212%_
                                 _%current-src136251%_
                                 _%current-in136252%_)
                                _%r136253%_))
                         (_%lp136248%_
                          _%rest136275%_
                          _%src-ctx136292%_
                          (cons (_%make-import-spec136210%_ _%in136276%_) '())
                          _%r136253%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in136278136285%_
                                                        'gx#module-import::t))
                                                     (let ((_%e136282136300%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in136278136285%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e136282136300%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e136283136303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e136282136300%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx136306%_ _%e136283136303%_))
                     (_%K136281136297%_ _%src-ctx136306%_))
                   (_%E136280136289%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E136280136289%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136276%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi136309%_
                                                           (##direct-structure-ref
                                                            _%in136276%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src136311%_
                                                           (##direct-structure-ref
                                                            _%in136276%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in136351%_
                                                           (let* ((_%g136312136321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path136211%_ _%src136311%_))
                          (_%E136315136325%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g136312136321%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K136317136341%_
                            (lambda (_%path136339%_) _%path136339%_))
                           (_%K136316136331%_
                            (lambda (_%path136329%_)
                              (cons 'in: _%path136329%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g136312136321%_))
                           (let ((_%tl136319136346%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g136312136321%_)))
                                 (_%hd136318136344%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g136312136321%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl136319136346%_))
                                 (let ((_%path136349%_ _%hd136318136344%_))
                                   (_%K136317136341%_ _%path136349%_))
                                 (let ((_%path136334%_ _%g136312136321%_))
                                   (_%K136316136331%_ _%path136334%_))))
                           (let ((_%path136334%_ _%g136312136321%_))
                             (_%K136316136331%_ _%path136334%_))))))
                  (_%r136353%_
                   (if _%current-src136251%_
                       (cons (_%make-import-spec-in136212%_
                              _%current-src136251%_
                              _%current-in136252%_)
                             _%r136253%_)
                       _%r136253%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp136248%_
                                                      _%rest136275%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi136309%_)
                                                                _%src-in136351%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi136309%_
                                    (cons _%src-in136351%_ '()))))
                    _%r136353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136276%_
                                                          'gx#module-context::t))
                                                       (let ((_%r136357%_
                                                              (if _%current-src136251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in136212%_
                                 _%current-src136251%_
                                 _%current-in136252%_)
                                _%r136253%_)
                          _%r136253%_)))
                 (_%lp136248%_
                  _%rest136275%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path136211%_ _%in136276%_))
                        _%r136357%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136254136262%_))
                                       (let ((_%hd136259136362%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136254136262%_)))
                                             (_%tl136260136364%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136254136262%_))))
                                         (let* ((_%in136367%_
                                                 _%hd136259136362%_)
                                                (_%rest136369%_
                                                 _%tl136260136364%_))
                                           (_%K136258136359%_
                                            _%rest136369%_
                                            _%in136367%_)))
                                       (_%else136256136272%_)))))
                             _%tl136219136234%_)))
                        (_%g136214136224%_ _%g136215136227%_)))))
            (_%g136213136371%_ _%stx136207%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136016%_ _%stx136017%_)
        (letrec* ((_%context-chain136019%_ (gxc#current-context-chain))
                  (_%make-import-path136020%_
                   (lambda (_%ctx136204%_)
                     (gxc#generate-meta-import-path
                      _%ctx136204%_
                      _%context-chain136019%_))))
          (let* ((_%g136022136032%_
                  (lambda (_%g136023136029%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136023136029%_))))
                 (_%g136021136201%_
                  (lambda (_%g136023136035%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136023136035%_))
                        (let ((_%e136025136037%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136023136035%_))))
                          (let ((_%hd136026136040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136025136037%_)))
                                (_%tl136027136042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136025136037%_))))
                            ((lambda (_%L136045%_)
                               (let _%lp136056%_ ((_%rest136058%_ _%L136045%_)
                                                  (_%r136059%_ '()))
                                 (let* ((_%rest136060136068%_ _%rest136058%_)
                                        (_%else136062136076%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136059%_))))
                                        (_%K136064136189%_
                                         (lambda (_%rest136079%_ _%out136080%_)
                                           (let* ((_%out136081136094%_
                                                   _%out136080%_)
                                                  (_%E136084136098%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136081136094%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136088136168%_
                                                    (lambda (_%name136164%_
                                                             _%phi136165%_
                                                             _%key136166%_)
                                                      (_%lp136056%_
                                                       _%rest136079%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi136165%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key136166%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name136164%_)
                                             '()))))
                     _%r136059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136085136148%_
                                                    (lambda (_%phi136102%_
                                                             _%src136103%_)
                                                      (let* ((_%out136143%_
                                                              (if _%src136103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136104136113%_
                                              (_%make-import-path136020%_
                                               _%src136103%_))
                                             (_%E136107136117%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136104136113%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136109136133%_
                                               (lambda (_%path136131%_)
                                                 _%path136131%_))
                                              (_%K136108136123%_
                                               (lambda (_%path136121%_)
                                                 (cons 'in: _%path136121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136104136113%_))
                                              (let ((_%tl136111136138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136104136113%_)))
                                                    (_%hd136110136136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136104136113%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136111136138%_))
                                                    (let ((_%path136141%_
                                                           _%hd136110136136%_))
                                                      (_%K136109136133%_
                                                       _%path136141%_))
                                                    (let ((_%path136126%_
                                                           _%g136104136113%_))
                                                      (_%K136108136123%_
                                                       _%path136126%_))))
                                              (let ((_%path136126%_
                                                     _%g136104136113%_))
                                                (_%K136108136123%_
                                                 _%path136126%_)))))
                                      '()))
                          '#t))
                     (_%out136145%_
                      (if (fxzero? _%phi136102%_)
                          _%out136143%_
                          (cons 'phi:
                                (cons _%phi136102%_
                                      (cons _%out136143%_ '()))))))
                (_%lp136056%_
                 _%rest136079%_
                 (cons _%out136145%_ _%r136059%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136083136161%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136081136094%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136086136151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136081136094%_
                               '1
                               '#f
                               '#f)))
                           (_%e136087136156%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136081136094%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136154%_ _%e136086136151%_)
                            (_%phi136159%_ _%e136087136156%_))
                        (_%K136085136148%_ _%phi136159%_ _%src136154%_)))
                    (_%E136084136098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136081136094%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136089136171%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136081136094%_
                        '1
                        '#f
                        '#f)))
                    (_%e136090136174%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136081136094%_
                        '2
                        '#f
                        '#f)))
                    (_%e136091136179%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136081136094%_
                        '3
                        '#f
                        '#f)))
                    (_%e136092136184%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136081136094%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136177%_ _%e136090136174%_)
                     (_%phi136182%_ _%e136091136179%_)
                     (_%name136187%_ _%e136092136184%_))
                 (_%K136088136168%_
                  _%name136187%_
                  _%phi136182%_
                  _%key136177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match136083136161%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136060136068%_))
                                       (let ((_%hd136065136192%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136060136068%_)))
                                             (_%tl136066136194%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136060136068%_))))
                                         (let* ((_%out136197%_
                                                 _%hd136065136192%_)
                                                (_%rest136199%_
                                                 _%tl136066136194%_))
                                           (_%K136064136189%_
                                            _%rest136199%_
                                            _%out136197%_)))
                                       (_%else136062136076%_)))))
                             _%tl136027136042%_)))
                        (_%g136022136032%_ _%g136023136035%_)))))
            (_%g136021136201%_ _%stx136017%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135977%_ _%stx135978%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135977%_ 'state)))
        (let* ((_%g135980135990%_
                (lambda (_%g135981135987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135981135987%_))))
               (_%g135979136013%_
                (lambda (_%g135981135993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135981135993%_))
                      (let ((_%e135983135995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135981135993%_))))
                        (let ((_%hd135984135998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135983135995%_)))
                              (_%tl135985136000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135983135995%_))))
                          ((lambda (_%L136003%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136003%_)))
                           _%tl135985136000%_)))
                      (_%g135980135990%_ _%g135981135993%_)))))
          (_%g135979136013%_ _%stx135978%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135848%_ _%stx135849%_)
        (letrec ((_%generate1135851%_
                  (lambda (_%id135972%_ _%eid135973%_)
                    (let ((_%eid135975%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135973%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135975%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135849%_
                             _%eid135975%_)))
                      (cons (gxc#generate-runtime-identifier _%id135972%_)
                            (cons _%eid135975%_ '()))))))
          (let* ((_%g135853135881%_
                  (lambda (_%g135854135878%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135854135878%_))))
                 (_%g135852135969%_
                  (lambda (_%g135854135884%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135854135884%_))
                        (let ((_%e135857135886%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135854135884%_))))
                          (let ((_%hd135858135889%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135857135886%_)))
                                (_%tl135859135891%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135857135886%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135859135891%_))
                                (let ((_g145647_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135859135891%_
                                          '0))))
                                  (begin
                                    (let ((_g145648_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145647_)
                                                 (##vector-length _g145647_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145648_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145648_)))
                                    (let ((_%target135860135894%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145647_ 0)))
                                          (_%tl135862135896%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145647_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135862135896%_))
                                          (letrec ((_%loop135863135899%_
                                                    (lambda (_%hd135861135902%_
                                                             _%eid135867135904%_
                                                             _%id135868135906%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135861135902%_))
                                                          (let ((_%e135864135909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135861135902%_))))
                    (let ((_%lp-hd135865135912%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135864135909%_)))
                          (_%lp-tl135866135914%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135864135909%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135865135912%_))
                          (let ((_%e135871135917%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135865135912%_))))
                            (let ((_%hd135872135920%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135871135917%_)))
                                  (_%tl135873135922%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135871135917%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135873135922%_))
                                  (let ((_%e135874135925%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135873135922%_))))
                                    (let ((_%hd135875135928%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135874135925%_)))
                                          (_%tl135876135930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135874135925%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135876135930%_))
                                          (_%loop135863135899%_
                                           _%lp-tl135866135914%_
                                           (cons _%hd135875135928%_
                                                 _%eid135867135904%_)
                                           (cons _%hd135872135920%_
                                                 _%id135868135906%_))
                                          (_%g135853135881%_
                                           _%g135854135884%_))))
                                  (_%g135853135881%_ _%g135854135884%_))))
                          (_%g135853135881%_ _%g135854135884%_))))
                  (let ((_%eid135869135933%_ (reverse _%eid135867135904%_))
                        (_%id135870135935%_ (reverse _%id135868135906%_)))
                    ((lambda (_%L135938%_ _%L135939%_)
                       (cons '%#extern
                             (map _%generate1135851%_
                                  (let ((__tmp145649
                                         (lambda (_%g135954135957%_
                                                  _%g135955135959%_)
                                           (cons _%g135954135957%_
                                                 _%g135955135959%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145649 '() _%L135939%_))
                                  (let ((__tmp145650
                                         (lambda (_%g135961135964%_
                                                  _%g135962135966%_)
                                           (cons _%g135961135964%_
                                                 _%g135962135966%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145650 '() _%L135938%_)))))
                     _%eid135869135933%_
                     _%id135870135935%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop135863135899%_
                                             _%target135860135894%_
                                             '()
                                             '()))
                                          (_%g135853135881%_
                                           _%g135854135884%_)))))
                                (_%g135853135881%_ _%g135854135884%_))))
                        (_%g135853135881%_ _%g135854135884%_)))))
            (_%g135852135969%_ _%stx135849%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135638%_ _%stx135639%_)
        (letrec ((_%generate1135641%_
                  (lambda (_%id135843%_)
                    (let ((_%eid135845%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135843%_)))
                          (_%ident135846%_
                           (gxc#generate-runtime-identifier _%id135843%_)))
                      (cons '%#define-runtime
                            (cons _%ident135846%_ (cons _%eid135845%_ '()))))))
                 (_%generate*135642%_
                  (lambda (_%all135811%_)
                    (let* ((_%all135812135820%_ _%all135811%_)
                           (_%else135814135828%_
                            (lambda () (cons '%#begin _%all135811%_)))
                           (_%K135816135833%_
                            (lambda (_%one135831%_) _%one135831%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135812135820%_))
                          (let ((_%hd135817135836%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135812135820%_)))
                                (_%tl135818135838%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135812135820%_))))
                            (let ((_%one135841%_ _%hd135817135836%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135818135838%_))
                                  (_%K135816135833%_ _%one135841%_)
                                  (_%else135814135828%_))))
                          (_%else135814135828%_))))))
          (let* ((_%g135644135661%_
                  (lambda (_%g135645135658%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135645135658%_))))
                 (_%g135643135808%_
                  (lambda (_%g135645135664%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135645135664%_))
                        (let ((_%e135648135666%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135645135664%_))))
                          (let ((_%hd135649135669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135648135666%_)))
                                (_%tl135650135671%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135648135666%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135650135671%_))
                                (let ((_%e135651135674%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135650135671%_))))
                                  (let ((_%hd135652135677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135651135674%_)))
                                        (_%tl135653135679%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135651135674%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135653135679%_))
                                        (let ((_%e135654135682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135653135679%_))))
                                          (let ((_%hd135655135685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135654135682%_)))
                                                (_%tl135656135687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135654135682%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135656135687%_))
                                                ((lambda (_%L135690%_
                                                          _%L135691%_)
                                                   (let _%lp135707%_ ((_%rest135709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135691%_)
                              (_%r135710%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145386145387%_
                                                             _%rest135709%_)
                                                            (_%g135715135732%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145386145387%_)))))
               (let ((_%__kont145388145389%_
                      (lambda (_%L135795%_)
                        (_%lp135707%_ _%L135795%_ _%r135710%_)))
                     (_%__kont145390145391%_
                      (lambda (_%L135768%_ _%L135769%_)
                        (_%lp135707%_
                         _%L135768%_
                         (cons (_%generate1135641%_ _%L135769%_)
                               _%r135710%_))))
                     (_%__kont145392145393%_
                      (lambda (_%L135744%_)
                        (_%generate*135642%_
                         (let ((__tmp145651
                                (cons (_%generate1135641%_ _%L135744%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp145651 _%r135710%_)))))
                     (_%__kont145394145395%_
                      (lambda () (_%generate*135642%_ (reverse _%r135710%_)))))
                 (let ((_%g135713135755%_
                        (lambda ()
                          (let ((_%L135744%_ _%__stx145386145387%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135744%_))
                                (_%__kont145392145393%_ _%L135744%_)
                                (_%__kont145394145395%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145386145387%_))
                       (let ((_%e135718135784%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145386145387%_))))
                         (let ((_%tl135720135789%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135718135784%_)))
                               (_%hd135719135787%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135718135784%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135719135787%_))
                               (let ((_%e135721135792%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135719135787%_))))
                                 (if (equal? _%e135721135792%_ '#f)
                                     (_%__kont145388145389%_
                                      _%tl135720135789%_)
                                     (_%__kont145390145391%_
                                      _%tl135720135789%_
                                      _%hd135719135787%_)))
                               (_%__kont145390145391%_
                                _%tl135720135789%_
                                _%hd135719135787%_))))
                       (let () (declare (not safe)) (_%g135713135755%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135655135685%_
                                                 _%hd135652135677%_)
                                                (_%g135644135661%_
                                                 _%g135645135664%_))))
                                        (_%g135644135661%_
                                         _%g135645135664%_))))
                                (_%g135644135661%_ _%g135645135664%_))))
                        (_%g135644135661%_ _%g135645135664%_)))))
            (_%g135643135808%_ _%stx135639%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135535%_ _%stx135536%_)
        (let* ((_%g135538135555%_
                (lambda (_%g135539135552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135539135552%_))))
               (_%g135537135635%_
                (lambda (_%g135539135558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135539135558%_))
                      (let ((_%e135542135560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135539135558%_))))
                        (let ((_%hd135543135563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135542135560%_)))
                              (_%tl135544135565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135542135560%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135544135565%_))
                              (let ((_%e135545135568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135544135565%_))))
                                (let ((_%hd135546135571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135545135568%_)))
                                      (_%tl135547135573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135545135568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135547135573%_))
                                      (let ((_%e135548135576%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135547135573%_))))
                                        (let ((_%hd135549135579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135548135576%_)))
                                              (_%tl135550135581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135548135576%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135550135581%_))
                                              ((lambda (_%L135584%_
                                                        _%L135585%_)
                                                 (let* ((_%eid135600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135585%_)))
                                                        (_%phi135602%_
                                                         (let ((__tmp145652
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145652 '1)))
                (_%block135604%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self135535%_ 'state))
                  _%phi135602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135607135614%_
                                                           (lambda (_%g135608135611%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135608135611%_))))
                  (_%g135606135632%_
                   (lambda (_%g135608135617%_)
                     ((lambda (_%L135619%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self135535%_ 'state))
                         _%phi135602%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L135619%_ (cons _%L135584%_ '())))))
                      _%g135608135617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g135606135632%_
                                                      _%eid135600%_))
                                                   (if _%block135604%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L135585%_)
                                             (cons _%eid135600%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L135585%_)
                           (cons _%eid135600%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135549135579%_
                                               _%hd135546135571%_)
                                              (_%g135538135555%_
                                               _%g135539135558%_))))
                                      (_%g135538135555%_ _%g135539135558%_))))
                              (_%g135538135555%_ _%g135539135558%_))))
                      (_%g135538135555%_ _%g135539135558%_)))))
          (_%g135537135635%_ _%stx135536%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135467%_ _%stx135468%_)
        (let* ((_%g135470135487%_
                (lambda (_%g135471135484%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135471135484%_))))
               (_%g135469135532%_
                (lambda (_%g135471135490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135471135490%_))
                      (let ((_%e135474135492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135471135490%_))))
                        (let ((_%hd135475135495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135474135492%_)))
                              (_%tl135476135497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135474135492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135476135497%_))
                              (let ((_%e135477135500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135476135497%_))))
                                (let ((_%hd135478135503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135477135500%_)))
                                      (_%tl135479135505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135477135500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135479135505%_))
                                      (let ((_%e135480135508%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135479135505%_))))
                                        (let ((_%hd135481135511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135480135508%_)))
                                              (_%tl135482135513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135480135508%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135482135513%_))
                                              ((lambda (_%L135516%_
                                                        _%L135517%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L135517%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L135516%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135481135511%_
                                               _%hd135478135503%_)
                                              (_%g135470135487%_
                                               _%g135471135490%_))))
                                      (_%g135470135487%_ _%g135471135490%_))))
                              (_%g135470135487%_ _%g135471135490%_))))
                      (_%g135470135487%_ _%g135471135490%_)))))
          (_%g135469135532%_ _%stx135468%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135464%_ _%stx135465%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135464%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx135465%_)
        (gxc#generate-meta-define-values% _%self135464%_ _%stx135465%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135461%_ _%stx135462%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135461%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx135462%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145654 (list)) (__tmp145653 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145654
         '(src n open blocks)
         __tmp145653
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135458%_
        (apply make-instance gxc#meta-state::t _%$args135458%_)))
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
      (lambda (_%self135444%_ _%ctx135445%_)
        (let ((_%self135448%_ _%self135444%_))
          (if (let ((__tmp145655
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135448%_))))
                (declare (not safe))
                (##fx< '4 __tmp145655))
              (begin
                (let ((__tmp145656
                       (let ((__tmp145657
                              (##structure-ref
                               _%ctx135445%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145657))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135448%_
                   __tmp145656
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135448%_ '1 '2 '#f '#f))
                (let ((__tmp145658
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135448%_
                   __tmp145658
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135448%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145659
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135448%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135448%_
                       '4
                       __tmp145659))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145661 (list)) (__tmp145660 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145661
         '(ctx phi n code)
         __tmp145660
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135319%_
        (apply make-instance gxc#meta-state-block::t _%$args135319%_)))
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
      (lambda (_%state135278%_ _%phi135279%_)
        (let* ((_%state135280135288%_ _%state135278%_)
               (_%E135282135292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135280135288%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135283135301%_
                (lambda (_%open135295%_ _%n135296%_ _%src135297%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135295%_ _%phi135279%_))
                      '#f
                      (let ((_%block-ref135299%_
                             (let ((__tmp145662 (number->string _%n135296%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135297%_
                                '"~"
                                __tmp145662))))
                        (##structure-set!
                         _%state135278%_
                         (let () (declare (not safe)) (##fx+ _%n135296%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145663
                               (let ((__tmp145664
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145664
                                  _%phi135279%_
                                  _%n135296%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135295%_ _%phi135279%_ __tmp145663))
                        _%block-ref135299%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135280135288%_
                 'gxc#meta-state::t))
              (let* ((_%e135284135304%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135280135288%_
                         '1
                         '#f
                         '#f)))
                     (_%src135307%_ _%e135284135304%_)
                     (_%e135285135309%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135280135288%_
                         '2
                         '#f
                         '#f)))
                     (_%n135312%_ _%e135285135309%_)
                     (_%e135286135314%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135280135288%_
                         '3
                         '#f
                         '#f)))
                     (_%open135317%_ _%e135286135314%_))
                (_%K135283135301%_ _%open135317%_ _%n135312%_ _%src135307%_))
              (_%E135282135292%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135272%_ _%phi135273%_ _%stx135274%_)
        (let ((_%block135276%_
               (let ((__tmp145665
                      (##structure-ref
                       _%state135272%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145665 _%phi135273%_))))
          (##structure-set!
           _%block135276%_
           (cons _%stx135274%_
                 (##structure-ref
                  _%block135276%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135266%_)
        (##structure-set!
         _%state135266%_
         (let ((__tmp145668
                (lambda (_%_135268%_ _%block135269%_ _%r135270%_)
                  (cons _%block135269%_ _%r135270%_)))
               (__tmp145667
                (##structure-ref _%state135266%_ '4 gxc#meta-state::t '#f))
               (__tmp145666
                (##structure-ref _%state135266%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145668 __tmp145667 __tmp145666))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135266%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135218%_)
        (gxc#meta-state-end-phi! _%state135218%_)
        (let ((__tmp145670
               (lambda (_%block135220%_ _%r135221%_)
                 (let* ((_%block135222135231%_ _%block135220%_)
                        (_%E135224135235%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135222135231%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135225135243%_
                         (lambda (_%code135238%_
                                  _%n135239%_
                                  _%phi135240%_
                                  _%ctx135241%_)
                           (if (null? _%code135238%_)
                               _%r135221%_
                               (cons (cons _%ctx135241%_
                                           (cons _%phi135240%_
                                                 (cons _%n135239%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135238%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135221%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135222135231%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135226135246%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135222135231%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135249%_ _%e135226135246%_)
                              (_%e135227135251%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135222135231%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135254%_ _%e135227135251%_)
                              (_%e135228135256%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135222135231%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135259%_ _%e135228135256%_)
                              (_%e135229135261%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135222135231%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135264%_ _%e135229135261%_))
                         (_%K135225135243%_
                          _%code135264%_
                          _%n135259%_
                          _%phi135254%_
                          _%ctx135249%_))
                       (_%E135224135235%_)))))
              (__tmp145669
               (##structure-ref _%state135218%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145670 '() __tmp145669))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135214%_)
        (let ((_%ht135216%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht135216%_ _%stx135214%_)
          _%ht135216%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135157%_ _%stx135158%_)
        (let* ((_%g135160135173%_
                (lambda (_%g135161135170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135161135170%_))))
               (_%g135159135211%_
                (lambda (_%g135161135176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135161135176%_))
                      (let ((_%e135163135178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135161135176%_))))
                        (let ((_%hd135164135181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135163135178%_)))
                              (_%tl135165135183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135163135178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135165135183%_))
                              (let ((_%e135166135186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135165135183%_))))
                                (let ((_%hd135167135189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135166135186%_)))
                                      (_%tl135168135191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135166135186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135168135191%_))
                                      ((lambda (_%L135194%_)
                                         (let* ((_%bind135206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135194%_)))
                                                (_%eid135208%_
                                                 (if _%bind135206%_
                                                     (##structure-ref
                                                      _%bind135206%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135194%_))))
                                                (__tmp145671
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135157%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145671
                                            _%eid135208%_
                                            _%eid135208%_)))
                                       _%hd135167135189%_)
                                      (_%g135160135173%_ _%g135161135176%_))))
                              (_%g135160135173%_ _%g135161135176%_))))
                      (_%g135160135173%_ _%g135161135176%_)))))
          (_%g135159135211%_ _%stx135158%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135084%_ _%stx135085%_)
        (let* ((_%g135087135104%_
                (lambda (_%g135088135101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135088135101%_))))
               (_%g135086135154%_
                (lambda (_%g135088135107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135088135107%_))
                      (let ((_%e135091135109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135088135107%_))))
                        (let ((_%hd135092135112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135091135109%_)))
                              (_%tl135093135114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135091135109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135093135114%_))
                              (let ((_%e135094135117%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135093135114%_))))
                                (let ((_%hd135095135120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135094135117%_)))
                                      (_%tl135096135122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135094135117%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135096135122%_))
                                      (let ((_%e135097135125%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135096135122%_))))
                                        (let ((_%hd135098135128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135097135125%_)))
                                              (_%tl135099135130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135097135125%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135099135130%_))
                                              ((lambda (_%L135133%_
                                                        _%L135134%_)
                                                 (let* ((_%bind135149%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135134%_)))
                                                        (_%eid135151%_
                                                         (if _%bind135149%_
                                                             (##structure-ref
                                                              _%bind135149%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145672
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135084%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145672
                                                      _%eid135151%_
                                                      _%eid135151%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135084%_
                                                      _%L135133%_))))
                                               _%hd135098135128%_
                                               _%hd135095135120%_)
                                              (_%g135087135104%_
                                               _%g135088135107%_))))
                                      (_%g135087135104%_ _%g135088135107%_))))
                              (_%g135087135104%_ _%g135088135107%_))))
                      (_%g135087135104%_ _%g135088135107%_)))))
          (_%g135086135154%_ _%stx135085%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135041%_ _%stx135042%_)
        (let* ((_%g135044135054%_
                (lambda (_%g135045135051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135045135051%_))))
               (_%g135043135081%_
                (lambda (_%g135045135057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135045135057%_))
                      (let ((_%e135047135059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135045135057%_))))
                        (let ((_%hd135048135062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135047135059%_)))
                              (_%tl135049135064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135047135059%_))))
                          ((lambda (_%L135067%_)
                             (let ((__tmp145673
                                    (lambda (_%g135076135078%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135041%_
                                         _%g135076135078%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145673 _%L135067%_)))
                           _%tl135049135064%_)))
                      (_%g135044135054%_ _%g135045135057%_)))))
          (_%g135043135081%_ _%stx135042%_))))
    (define gxc#count-values-single%
      (lambda (_%self135038%_ _%stx135039%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134904%_ _%stx134905%_)
        (let* ((_%__stx145416145417%_ _%stx134905%_)
               (_%g134908134937%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145416145417%_)))))
          (let ((_%__kont145418145419%_
                 (lambda (_%L135005%_ _%L135006%_)
                   (length (let ((__tmp145674
                                  (lambda (_%g135027135030%_ _%g135028135032%_)
                                    (cons _%g135027135030%_
                                          _%g135028135032%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145674 '() _%L135005%_)))))
                (_%__kont145422145423%_ (lambda () '#f)))
            (let ((_%__match145461145462%_
                   (lambda (_%e134912134949%_
                            _%hd134913134952%_
                            _%tl134914134954%_
                            _%e134915134957%_
                            _%hd134916134960%_
                            _%tl134917134962%_
                            _%e134918134965%_
                            _%hd134919134968%_
                            _%tl134920134970%_
                            _%e134921134973%_
                            _%hd134922134976%_
                            _%tl134923134978%_
                            _%__splice145420145421%_
                            _%target134924134981%_
                            _%tl134926134983%_)
                     (letrec ((_%loop134927134986%_
                               (lambda (_%hd134925134989%_
                                        _%rand134931134991%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134925134989%_))
                                     (let ((_%e134928134994%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134925134989%_))))
                                       (let ((_%lp-tl134930134999%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134928134994%_)))
                                             (_%lp-hd134929134997%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134928134994%_))))
                                         (_%loop134927134986%_
                                          _%lp-tl134930134999%_
                                          (cons _%lp-hd134929134997%_
                                                _%rand134931134991%_))))
                                     (let ((_%rand134932135002%_
                                            (reverse _%rand134931134991%_)))
                                       (let ((_%L135005%_ _%rand134932135002%_)
                                             (_%L135006%_ _%hd134922134976%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135006%_
                                                'values))
                                             (_%__kont145418145419%_
                                              _%L135005%_
                                              _%L135006%_)
                                             (_%__kont145422145423%_))))))))
                       (_%loop134927134986%_ _%target134924134981%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145416145417%_))
                  (let ((_%e134912134949%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145416145417%_))))
                    (let ((_%tl134914134954%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134912134949%_)))
                          (_%hd134913134952%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134912134949%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134914134954%_))
                          (let ((_%e134915134957%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134914134954%_))))
                            (let ((_%tl134917134962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134915134957%_)))
                                  (_%hd134916134960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134915134957%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134916134960%_))
                                  (let ((_%e134918134965%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134916134960%_))))
                                    (let ((_%tl134920134970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134918134965%_)))
                                          (_%hd134919134968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134918134965%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134919134968%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134919134968%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134920134970%_))
                                                  (let ((_%e134921134973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134920134970%_))))
                                                    (let ((_%tl134923134978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134921134973%_)))
                                                          (_%hd134922134976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134921134973%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134923134978%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134917134962%_))
                      (let ((_%__splice145420145421%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134917134962%_
                                '0))))
                        (let ((_%tl134926134983%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145420145421%_ '1)))
                              (_%target134924134981%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145420145421%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134926134983%_))
                              (_%__match145461145462%_
                               _%e134912134949%_
                               _%hd134913134952%_
                               _%tl134914134954%_
                               _%e134915134957%_
                               _%hd134916134960%_
                               _%tl134917134962%_
                               _%e134918134965%_
                               _%hd134919134968%_
                               _%tl134920134970%_
                               _%e134921134973%_
                               _%hd134922134976%_
                               _%tl134923134978%_
                               _%__splice145420145421%_
                               _%target134924134981%_
                               _%tl134926134983%_)
                              (_%__kont145422145423%_))))
                      (_%__kont145422145423%_))
                  (_%__kont145422145423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145422145423%_))
                                              (_%__kont145422145423%_))
                                          (_%__kont145422145423%_))))
                                  (_%__kont145422145423%_))))
                          (_%__kont145422145423%_))))
                  (_%__kont145422145423%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134807%_ _%stx134808%_)
        (let* ((_%g134810134831%_
                (lambda (_%g134811134828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134811134828%_))))
               (_%g134809134901%_
                (lambda (_%g134811134834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134811134834%_))
                      (let ((_%e134815134836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134811134834%_))))
                        (let ((_%hd134816134839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134815134836%_)))
                              (_%tl134817134841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134815134836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134817134841%_))
                              (let ((_%e134818134844%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134817134841%_))))
                                (let ((_%hd134819134847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134818134844%_)))
                                      (_%tl134820134849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134818134844%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134820134849%_))
                                      (let ((_%e134821134852%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134820134849%_))))
                                        (let ((_%hd134822134855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134821134852%_)))
                                              (_%tl134823134857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134821134852%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134823134857%_))
                                              (let ((_%e134824134860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134823134857%_))))
                                                (let ((_%hd134825134863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134824134860%_)))
                                                      (_%tl134826134865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134824134860%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134826134865%_))
                                                      ((lambda (_%L134868%_
                                                                _%L134869%_
                                                                _%L134870%_)
                                                         (let ((_%c1134887134889%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134807%_ _%L134869%_))))
                   (if _%c1134887134889%_
                       (let* ((_%c1134892%_ _%c1134887134889%_)
                              (_%c2134893134895%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134807%_
                                  _%L134868%_))))
                         (if _%c2134893134895%_
                             (let ((_%c2134898%_ _%c2134893134895%_))
                               (if (fx= _%c1134892%_ _%c2134898%_)
                                   _%c1134892%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134825134863%_
               _%hd134822134855%_
               _%hd134819134847%_)
              (_%g134810134831%_ _%g134811134834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g134810134831%_
                                               _%g134811134834%_))))
                                      (_%g134810134831%_ _%g134811134834%_))))
                              (_%g134810134831%_ _%g134811134834%_))))
                      (_%g134810134831%_ _%g134811134834%_)))))
          (_%g134809134901%_ _%stx134808%_))))))
