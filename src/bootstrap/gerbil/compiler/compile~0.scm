(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1713000278)
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
        (letrec ((_%hash-e147031%_
                  (lambda (_%id147033%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id147033%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e147031%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp148418 (list gxc#::void::t))
            (__tmp148417 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp148418
         '()
         __tmp148417
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args147027%_
        (apply make-instance gxc#::collect-bindings::t _%$args147027%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp148419
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
        (__make-promise __tmp148419)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx147019%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self147022%_
                (let ((__obj148393
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj148393))
               (__tmp148420
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147022%_ _%stx147019%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148420
           gxc#current-compile-method
           _%self147022%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp148422 (list gxc#::void::t))
            (__tmp148421 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp148422
         '(modules)
         __tmp148421
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args147016%_
        (apply make-instance gxc#::lift-modules::t _%$args147016%_)))
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
      (let ((__tmp148423
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
        (__make-promise __tmp148423)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords146990%_ _%modules146987146991%_ _%stx146993%_)
        (let ((_%modules146996%_
               (if (eq? _%modules146987146991%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules146987146991%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self146998%_
                  (let ((__obj148395
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148395
                       _%modules146996%_
                       '1
                       '#f
                       '#f))
                    __obj148395))
                 (__tmp148424
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146998%_ _%stx146993%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148424
             gxc#current-compile-method
             _%self146998%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords147005%_ . _%args147006%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords147005%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147005%_
                  'modules:
                  absent-value))
               _%args147006%_)))
    (define gxc#apply-lift-modules
      (lambda _%args146988147012%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args146988147012%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp148426 (list)) (__tmp148425 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp148426
         '()
         __tmp148425
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args146983%_
        (apply make-instance gxc#::find-runtime-code::t _%$args146983%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp148427
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
        (__make-promise __tmp148427)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx146975%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self146978%_
                (let ((__obj148397
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj148397))
               (__tmp148428
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146978%_ _%stx146975%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148428
           gxc#current-compile-method
           _%self146978%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp148430 (list gxc#::false::t))
            (__tmp148429 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp148430
         '()
         __tmp148429
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args146972%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args146972%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp148431
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
        (__make-promise __tmp148431)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx146964%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self146967%_
                (let ((__obj148399
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj148399))
               (__tmp148432
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146967%_ _%stx146964%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148432
           gxc#current-compile-method
           _%self146967%_))))
    (define gxc#::count-values::t
      (let ((__tmp148434 (list gxc#::false-expression::t))
            (__tmp148433 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp148434
         '()
         __tmp148433
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args146961%_
        (apply make-instance gxc#::count-values::t _%$args146961%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp148435
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
        (__make-promise __tmp148435)))
    (define gxc#apply-count-values
      (lambda (_%stx146953%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self146956%_
                (let ((__obj148401
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj148401))
               (__tmp148436
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146956%_ _%stx146953%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148436
           gxc#current-compile-method
           _%self146956%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp148437 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp148437
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args146950%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args146950%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp148438
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
        (__make-promise __tmp148438)))
    (define gxc#::generate-loader::t
      (let ((__tmp148440 (list gxc#::generate-runtime-empty::t))
            (__tmp148439 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp148440
         '()
         __tmp148439
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args146946%_
        (apply make-instance gxc#::generate-loader::t _%$args146946%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp148441
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
        (__make-promise __tmp148441)))
    (define gxc#apply-generate-loader
      (lambda (_%stx146938%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self146941%_
                (let ((__obj148404
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj148404))
               (__tmp148442
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146941%_ _%stx146938%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148442
           gxc#current-compile-method
           _%self146941%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp148443 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp148443
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args146935%_
        (apply make-instance gxc#::generate-runtime::t _%$args146935%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp148444
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
        (__make-promise __tmp148444)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx146927%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self146930%_
                (let ((__obj148406
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj148406))
               (__tmp148445
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146930%_ _%stx146927%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148445
           gxc#current-compile-method
           _%self146930%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp148447 (list gxc#::generate-runtime::t))
            (__tmp148446 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp148447
         '()
         __tmp148446
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args146924%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args146924%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp148448
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
        (__make-promise __tmp148448)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx146916%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self146919%_
                (let ((__obj148408
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj148408))
               (__tmp148449
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146919%_ _%stx146916%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148449
           gxc#current-compile-method
           _%self146919%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp148450 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp148450
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args146913%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args146913%_)))
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
      (let ((__tmp148451
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
        (__make-promise __tmp148451)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords146887%_ _%table146884146888%_ _%stx146890%_)
        (let ((_%table146893%_
               (if (eq? _%table146884146888%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table146884146888%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self146895%_
                  (let ((__obj148410
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148410
                       _%table146893%_
                       '1
                       '#f
                       '#f))
                    __obj148410))
                 (__tmp148452
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146895%_ _%stx146890%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148452
             gxc#current-compile-method
             _%self146895%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords146902%_ . _%args146903%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords146902%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146902%_
                  'table:
                  absent-value))
               _%args146903%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args146885146909%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args146885146909%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp148454 (list gxc#::void-expression::t))
            (__tmp148453 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp148454
         '(state)
         __tmp148453
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args146880%_
        (apply make-instance gxc#::generate-meta::t _%$args146880%_)))
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
      (let ((__tmp148455
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
        (__make-promise __tmp148455)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords146854%_ _%state146851146855%_ _%stx146857%_)
        (let ((_%state146860%_
               (if (eq? _%state146851146855%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state146851146855%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self146862%_
                  (let ((__obj148412
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148412
                       _%state146860%_
                       '1
                       '#f
                       '#f))
                    __obj148412))
                 (__tmp148456
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146862%_ _%stx146857%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148456
             gxc#current-compile-method
             _%self146862%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords146869%_ . _%args146870%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords146869%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146869%_
                  'state:
                  absent-value))
               _%args146870%_)))
    (define gxc#apply-generate-meta
      (lambda _%args146852146876%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args146852146876%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp148458 (list)) (__tmp148457 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp148458
         '(state)
         __tmp148457
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args146847%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args146847%_)))
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
      (let ((__tmp148459
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
        (__make-promise __tmp148459)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords146821%_ _%state146818146822%_ _%stx146824%_)
        (let ((_%state146827%_
               (if (eq? _%state146818146822%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state146818146822%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self146829%_
                  (let ((__obj148414
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148414
                       _%state146827%_
                       '1
                       '#f
                       '#f))
                    __obj148414))
                 (__tmp148460
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146829%_ _%stx146824%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148460
             gxc#current-compile-method
             _%self146829%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords146836%_ . _%args146837%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords146836%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146836%_
                  'state:
                  absent-value))
               _%args146837%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args146819146843%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args146819146843%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self146747%_ _%stx146748%_)
        (let* ((_%g146750146767%_
                (lambda (_%g146751146764%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146751146764%_))))
               (_%g146749146814%_
                (lambda (_%g146751146770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146751146770%_))
                      (let ((_%e146754146772%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146751146770%_))))
                        (let ((_%hd146755146775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146754146772%_)))
                              (_%tl146756146777%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146754146772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146756146777%_))
                              (let ((_%e146757146780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146756146777%_))))
                                (let ((_%hd146758146783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146757146780%_)))
                                      (_%tl146759146785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146757146780%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146759146785%_))
                                      (let ((_%e146760146788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146759146785%_))))
                                        (let ((_%hd146761146791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146760146788%_)))
                                              (_%tl146762146793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146760146788%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146762146793%_))
                                              ((lambda (_%L146796%_
                                                        _%L146797%_)
                                                 (let ((__tmp148461
                                                        (lambda (_%bind146812%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind146812%_))
                      (gxc#add-module-binding! _%bind146812%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp148461
                                                    _%L146797%_)))
                                               _%hd146761146791%_
                                               _%hd146758146783%_)
                                              (_%g146750146767%_
                                               _%g146751146770%_))))
                                      (_%g146750146767%_ _%g146751146770%_))))
                              (_%g146750146767%_ _%g146751146770%_))))
                      (_%g146750146767%_ _%g146751146770%_)))))
          (_%g146749146814%_ _%stx146748%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self146679%_ _%stx146680%_)
        (let* ((_%g146682146699%_
                (lambda (_%g146683146696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146683146696%_))))
               (_%g146681146744%_
                (lambda (_%g146683146702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146683146702%_))
                      (let ((_%e146686146704%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146683146702%_))))
                        (let ((_%hd146687146707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146686146704%_)))
                              (_%tl146688146709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146686146704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146688146709%_))
                              (let ((_%e146689146712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146688146709%_))))
                                (let ((_%hd146690146715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146689146712%_)))
                                      (_%tl146691146717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146689146712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146691146717%_))
                                      (let ((_%e146692146720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146691146717%_))))
                                        (let ((_%hd146693146723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146692146720%_)))
                                              (_%tl146694146725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146692146720%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146694146725%_))
                                              ((lambda (_%L146728%_
                                                        _%L146729%_)
                                                 (gxc#add-module-binding!
                                                  _%L146729%_
                                                  '#t))
                                               _%hd146693146723%_
                                               _%hd146690146715%_)
                                              (_%g146682146699%_
                                               _%g146683146702%_))))
                                      (_%g146682146699%_ _%g146683146702%_))))
                              (_%g146682146699%_ _%g146683146702%_))))
                      (_%g146682146699%_ _%g146683146702%_)))))
          (_%g146681146744%_ _%stx146680%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self146621%_ _%stx146622%_)
        (let* ((_%g146624146638%_
                (lambda (_%g146625146635%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146625146635%_))))
               (_%g146623146676%_
                (lambda (_%g146625146641%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146625146641%_))
                      (let ((_%e146628146643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146625146641%_))))
                        (let ((_%hd146629146646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146628146643%_)))
                              (_%tl146630146648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146628146643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146630146648%_))
                              (let ((_%e146631146651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146630146648%_))))
                                (let ((_%hd146632146654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146631146651%_)))
                                      (_%tl146633146656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146631146651%_))))
                                  ((lambda (_%L146659%_ _%L146660%_)
                                     (let ((_%ctx146673%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L146660%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self146621%_
                                           'modules))
                                        (cons _%ctx146673%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self146621%_
                                                        'modules)))))
                                       (let ((__tmp148462
                                              (lambda ()
                                                (let ((__tmp148463
                                                       (##structure-ref
                                                        _%ctx146673%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146621%_
                                                   __tmp148463)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp148462
                                          gx#current-expander-context
                                          _%ctx146673%_))))
                                   _%tl146633146656%_
                                   _%hd146632146654%_)))
                              (_%g146624146638%_ _%g146625146641%_))))
                      (_%g146624146638%_ _%g146625146641%_)))))
          (_%g146623146676%_ _%stx146622%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls146574146576%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls146574146576%_
              (let ((_%decls146579%_ _%decls146574146576%_))
                (let _%lp146581%_ ((_%rest146583%_ _%decls146579%_))
                  (let* ((_%rest146584146592%_ _%rest146583%_)
                         (_%else146586146600%_ (lambda () '#f))
                         (_%K146588146609%_
                          (lambda (_%decls146603%_ _%decl146604%_)
                            (if (equal? _%decl146604%_ '(not safe))
                                '#t
                                (if (equal? _%decl146604%_ '(safe))
                                    '#f
                                    (_%lp146581%_ _%decls146603%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146584146592%_))
                        (let ((_%hd146589146612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146584146592%_)))
                              (_%tl146590146614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146584146592%_))))
                          (let* ((_%decl146617%_ _%hd146589146612%_)
                                 (_%decls146619%_ _%tl146590146614%_))
                            (_%K146588146609%_
                             _%decls146619%_
                             _%decl146617%_)))
                        (_%else146586146600%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id146568%_ _%syntax?146569%_)
        (let ((_%eid146571%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id146568%_))
                '1
                gx#binding::t
                '#f))
              (_%ht146572%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid146571%_))
              '#!void
              (let ((__tmp148464
                     (let ((__tmp148465
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid146571%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp148465 _%syntax?146569%_))))
                (declare (not safe))
                (hash-put! _%ht146572%_ _%eid146571%_ __tmp148464))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id146566%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id146566%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key146521%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key146521%_))
            _%key146521%_
            (if (uninterned-symbol? _%key146521%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key146521%_))
                (let* ((_%key146525146532%_ _%key146521%_)
                       (_%E146527146536%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key146525146532%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K146528146554%_
                        (lambda (_%mark146539%_ _%eid146540%_)
                          (let ((_%$e146542%_
                                 (##structure-ref
                                  _%mark146539%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e146542%_
                                ((lambda (_%ht146545%_)
                                   (let ((_%$e146547%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht146545%_
                                             _%eid146540%_))))
                                     (if _%$e146547%_
                                         ((lambda (_%id146550%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id146550%_))
                                                _%id146550%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id146550%_))))
                                          _%$e146547%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid146540%_))))
                                 _%$e146542%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid146540%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key146525146532%_))
                      (let ((_%hd146529146557%_
                             (let ()
                               (declare (not safe))
                               (##car _%key146525146532%_)))
                            (_%tl146530146559%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key146525146532%_))))
                        (let* ((_%eid146562%_ _%hd146529146557%_)
                               (_%mark146564%_ _%tl146530146559%_))
                          (_%K146528146554%_ _%mark146564%_ _%eid146562%_)))
                      (_%E146527146536%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self146518%_ _%stx146519%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self146365%_ _%stx146366%_)
        (letrec ((_%simplify146368%_
                  (lambda (_%body146416%_)
                    (let _%lp146418%_ ((_%rest146420%_ _%body146416%_)
                                       (_%r146421%_ '()))
                      (let* ((_%rest146422146430%_ _%rest146420%_)
                             (_%else146424146438%_
                              (lambda () (reverse _%r146421%_)))
                             (_%K146426146506%_
                              (lambda (_%rest146441%_ _%hd146442%_)
                                (let* ((_%hd146443146459%_ _%hd146442%_)
                                       (_%else146447146467%_
                                        (lambda ()
                                          (_%lp146418%_
                                           _%rest146441%_
                                           (cons _%hd146442%_ _%r146421%_)))))
                                  (let ((_%K146455146496%_
                                         (lambda (_%exprs146494%_)
                                           (_%lp146418%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest146441%_
                                               _%exprs146494%_))
                                            _%r146421%_)))
                                        (_%K146450146480%_
                                         (lambda ()
                                           (if (null? _%rest146441%_)
                                               (_%lp146418%_
                                                _%rest146441%_
                                                (cons _%hd146442%_
                                                      _%r146421%_))
                                               (_%lp146418%_
                                                _%rest146441%_
                                                _%r146421%_))))
                                        (_%K146449146472%_
                                         (lambda ()
                                           (if (null? _%rest146441%_)
                                               (_%lp146418%_
                                                _%rest146441%_
                                                (cons _%hd146442%_
                                                      _%r146421%_))
                                               (_%lp146418%_
                                                _%rest146441%_
                                                _%r146421%_)))))
                                    (let ((_%try-match146446146475%_
                                           (lambda ()
                                             (if (symbol? _%hd146443146459%_)
                                                 (_%K146449146472%_)
                                                 (_%else146447146467%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd146443146459%_))
                                          (let ((_%tl146457146501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd146443146459%_)))
                                                (_%hd146456146499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd146443146459%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd146456146499%_
                                                         'begin))
                                                (let ((_%exprs146504%_
                                                       _%tl146457146501%_))
                                                  (_%K146455146496%_
                                                   _%exprs146504%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd146456146499%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl146457146501%_))
                                                        (let ((_%tl146454146488%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl146457146501%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl146454146488%_))
                      (_%K146450146480%_)
                      (_%try-match146446146475%_)))
                (_%try-match146446146475%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match146446146475%_))))
                                          (_%try-match146446146475%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest146422146430%_))
                            (let ((_%hd146427146509%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest146422146430%_)))
                                  (_%tl146428146511%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest146422146430%_))))
                              (let* ((_%hd146514%_ _%hd146427146509%_)
                                     (_%rest146516%_ _%tl146428146511%_))
                                (_%K146426146506%_
                                 _%rest146516%_
                                 _%hd146514%_)))
                            (_%else146424146438%_)))))))
          (let* ((_%g146370146380%_
                  (lambda (_%g146371146377%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146371146377%_))))
                 (_%g146369146413%_
                  (lambda (_%g146371146383%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146371146383%_))
                        (let ((_%e146373146385%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146371146383%_))))
                          (let ((_%hd146374146388%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146373146385%_)))
                                (_%tl146375146390%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146373146385%_))))
                            ((lambda (_%L146393%_)
                               (let* ((_%body146408%_
                                       (map (lambda (_%g146403146405%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self146365%_
                                                 _%g146403146405%_)))
                                            _%L146393%_))
                                      (_%body146410%_
                                       (_%simplify146368%_ _%body146408%_)))
                                 (if (let ((__tmp148466
                                            (length _%body146410%_)))
                                       (declare (not safe))
                                       (##fx= __tmp148466 '1))
                                     (car _%body146410%_)
                                     (cons 'begin _%body146410%_))))
                             _%tl146375146390%_)))
                        (_%g146370146380%_ _%g146371146383%_)))))
            (_%g146369146413%_ _%stx146366%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self146326%_ _%stx146327%_)
        (let* ((_%g146329146339%_
                (lambda (_%g146330146336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146330146336%_))))
               (_%g146328146362%_
                (lambda (_%g146330146342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146330146342%_))
                      (let ((_%e146332146344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146330146342%_))))
                        (let ((_%hd146333146347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146332146344%_)))
                              (_%tl146334146349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146332146344%_))))
                          ((lambda (_%L146352%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L146352%_))))
                           _%tl146334146349%_)))
                      (_%g146329146339%_ _%g146330146342%_)))))
          (_%g146328146362%_ _%stx146327%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self146090%_ _%stx146091%_)
        (let* ((_%__stx147056147057%_ _%stx146091%_)
               (_%g146095146147%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147056147057%_)))))
          (let ((_%__kont147058147059%_
                 (lambda (_%L146308%_ _%L146309%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self146090%_ _%L146308%_))))
                (_%__kont147060147061%_
                 (lambda (_%L146256%_ _%L146257%_ _%L146258%_)
                   (if (let ((__tmp148467
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L146258%_))))
                         (declare (not safe))
                         (##memq __tmp148467 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self146090%_ _%L146256%_)))))
                (_%__kont147064147065%_
                 (lambda (_%L146176%_ _%L146177%_)
                   (let ((_%decls146192%_ (map gx#syntax->datum _%L146177%_)))
                     (let ((__tmp148470
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls146192%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146090%_
                                                   _%L146176%_))
                                                '())))))
                           (__tmp148468
                            (let ((__tmp148469
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp148469 _%decls146192%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp148470
                        gxc#current-compile-decls
                        __tmp148468))))))
            (let* ((_%__match147111147112%_
                    (lambda (_%e146111146200%_
                             _%hd146112146203%_
                             _%tl146113146205%_
                             _%e146114146208%_
                             _%hd146115146211%_
                             _%tl146116146213%_
                             _%e146117146216%_
                             _%hd146118146219%_
                             _%tl146119146221%_
                             _%__splice147062147063%_
                             _%target146120146224%_
                             _%tl146122146226%_)
                      (letrec ((_%loop146123146229%_
                                (lambda (_%hd146121146232%_
                                         _%param146127146234%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146121146232%_))
                                      (let ((_%e146124146237%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146121146232%_))))
                                        (let ((_%lp-tl146126146242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146124146237%_)))
                                              (_%lp-hd146125146240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146124146237%_))))
                                          (_%loop146123146229%_
                                           _%lp-tl146126146242%_
                                           (cons _%lp-hd146125146240%_
                                                 _%param146127146234%_))))
                                      (let ((_%param146128146245%_
                                             (reverse _%param146127146234%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146116146213%_))
                                            (let ((_%e146129146248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146116146213%_))))
                                              (let ((_%tl146131146253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146129146248%_)))
                                                    (_%hd146130146251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146129146248%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146131146253%_))
                                                    (let ((_%L146256%_
                                                           _%hd146130146251%_)
                                                          (_%L146257%_
                                                           _%param146128146245%_)
                                                          (_%L146258%_
                                                           _%hd146118146219%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L146258%_))
                       (not (let ((__tmp148471
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L146258%_))))
                              (declare (not safe))
                              (##memq __tmp148471 gxc#gambit-annotations))))
                  (_%__kont147060147061%_ _%L146256%_ _%L146257%_ _%L146258%_)
                  (_%__kont147064147065%_
                   _%hd146130146251%_
                   _%hd146115146211%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146095146147%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146095146147%_))))))))
                        (_%loop146123146229%_ _%target146120146224%_ '()))))
                   (_%__match147085147086%_
                    (lambda (_%e146099146284%_
                             _%hd146100146287%_
                             _%tl146101146289%_
                             _%e146102146292%_
                             _%hd146103146295%_
                             _%tl146104146297%_
                             _%e146105146300%_
                             _%hd146106146303%_
                             _%tl146107146305%_)
                      (let ((_%L146308%_ _%hd146106146303%_)
                            (_%L146309%_ _%hd146103146295%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L146309%_))
                            (_%__kont147058147059%_ _%L146308%_ _%L146309%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd146103146295%_))
                                (let ((_%e146117146216%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd146103146295%_))))
                                  (let ((_%tl146119146221%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146117146216%_)))
                                        (_%hd146118146219%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146117146216%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl146119146221%_))
                                        (let ((_%__splice147062147063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl146119146221%_
                                                  '0))))
                                          (let ((_%tl146122146226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147062147063%_
                                                    '1)))
                                                (_%target146120146224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147062147063%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146122146226%_))
                                                (_%__match147111147112%_
                                                 _%e146099146284%_
                                                 _%hd146100146287%_
                                                 _%tl146101146289%_
                                                 _%e146102146292%_
                                                 _%hd146103146295%_
                                                 _%tl146104146297%_
                                                 _%e146117146216%_
                                                 _%hd146118146219%_
                                                 _%tl146119146221%_
                                                 _%__splice147062147063%_
                                                 _%target146120146224%_
                                                 _%tl146122146226%_)
                                                (_%__kont147064147065%_
                                                 _%hd146106146303%_
                                                 _%hd146103146295%_))))
                                        (_%__kont147064147065%_
                                         _%hd146106146303%_
                                         _%hd146103146295%_))))
                                (_%__kont147064147065%_
                                 _%hd146106146303%_
                                 _%hd146103146295%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147056147057%_))
                  (let ((_%e146099146284%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147056147057%_))))
                    (let ((_%tl146101146289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146099146284%_)))
                          (_%hd146100146287%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146099146284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146101146289%_))
                          (let ((_%e146102146292%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146101146289%_))))
                            (let ((_%tl146104146297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146102146292%_)))
                                  (_%hd146103146295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146102146292%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146104146297%_))
                                  (let ((_%e146105146300%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146104146297%_))))
                                    (let ((_%tl146107146305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146105146300%_)))
                                          (_%hd146106146303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146105146300%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146107146305%_))
                                          (_%__match147085147086%_
                                           _%e146099146284%_
                                           _%hd146100146287%_
                                           _%tl146101146289%_
                                           _%e146102146292%_
                                           _%hd146103146295%_
                                           _%tl146104146297%_
                                           _%e146105146300%_
                                           _%hd146106146303%_
                                           _%tl146107146305%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146103146295%_))
                                              (let ((_%e146117146216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146103146295%_))))
                                                (let ((_%tl146119146221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146117146216%_)))
                                                      (_%hd146118146219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146117146216%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl146119146221%_))
                                                      (let ((_%__splice147062147063%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl146119146221%_ '0))))
                (let ((_%tl146122146226%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147062147063%_ '1)))
                      (_%target146120146224%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147062147063%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146122146226%_))
                      (_%__match147111147112%_
                       _%e146099146284%_
                       _%hd146100146287%_
                       _%tl146101146289%_
                       _%e146102146292%_
                       _%hd146103146295%_
                       _%tl146104146297%_
                       _%e146117146216%_
                       _%hd146118146219%_
                       _%tl146119146221%_
                       _%__splice147062147063%_
                       _%target146120146224%_
                       _%tl146122146226%_)
                      (let () (declare (not safe)) (_%g146095146147%_)))))
              (let () (declare (not safe)) (_%g146095146147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146095146147%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146103146295%_))
                                      (let ((_%e146117146216%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146103146295%_))))
                                        (let ((_%tl146119146221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146117146216%_)))
                                              (_%hd146118146219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146117146216%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl146119146221%_))
                                              (let ((_%__splice147062147063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl146119146221%_
                                                        '0))))
                                                (let ((_%tl146122146226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147062147063%_
                                                          '1)))
                                                      (_%target146120146224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147062147063%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146122146226%_))
                                                      (_%__match147111147112%_
                                                       _%e146099146284%_
                                                       _%hd146100146287%_
                                                       _%tl146101146289%_
                                                       _%e146102146292%_
                                                       _%hd146103146295%_
                                                       _%tl146104146297%_
                                                       _%e146117146216%_
                                                       _%hd146118146219%_
                                                       _%tl146119146221%_
                                                       _%__splice147062147063%_
                                                       _%target146120146224%_
                                                       _%tl146122146226%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g146095146147%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146095146147%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146095146147%_))))))
                          (let () (declare (not safe)) (_%g146095146147%_)))))
                  (let () (declare (not safe)) (_%g146095146147%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self146049%_ _%stx146050%_)
        (let* ((_%g146052146062%_
                (lambda (_%g146053146059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146053146059%_))))
               (_%g146051146087%_
                (lambda (_%g146053146065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146053146065%_))
                      (let ((_%e146055146067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146053146065%_))))
                        (let ((_%hd146056146070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146055146067%_)))
                              (_%tl146057146072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146055146067%_))))
                          ((lambda (_%L146075%_)
                             (let ((_%decls146085%_
                                    (map gx#syntax->datum _%L146075%_)))
                               (let ((__tmp148472
                                      (let ((__tmp148473
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp148473
                                         _%decls146085%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp148472))
                               (cons 'declare _%decls146085%_)))
                           _%tl146057146072%_)))
                      (_%g146052146062%_ _%g146053146065%_)))))
          (_%g146051146087%_ _%stx146050%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self145795%_ _%stx145796%_)
        (let* ((_%g145798145815%_
                (lambda (_%g145799145812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145799145812%_))))
               (_%g145797146046%_
                (lambda (_%g145799145818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145799145818%_))
                      (let ((_%e145802145820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145799145818%_))))
                        (let ((_%hd145803145823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145802145820%_)))
                              (_%tl145804145825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145802145820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145804145825%_))
                              (let ((_%e145805145828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145804145825%_))))
                                (let ((_%hd145806145831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145805145828%_)))
                                      (_%tl145807145833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145805145828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145807145833%_))
                                      (let ((_%e145808145836%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145807145833%_))))
                                        (let ((_%hd145809145839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145808145836%_)))
                                              (_%tl145810145841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145808145836%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145810145841%_))
                                              ((lambda (_%L145844%_
                                                        _%L145845%_)
                                                 (let* ((_%__stx147164147165%_
                                                         _%L145845%_)
                                                        (_%g145862145876%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx147164147165%_)))))
                                                   (let ((_%__kont147166147167%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self145795%_
                                                               _%L145844%_))))
                                                         (_%__kont147168147169%_
                                                          (lambda (_%L146008%_)
                                                            (let ((_%eid146017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L146008%_))))
                      (let ((_%lambda-expr146018146020%_
                             (gxc#apply-find-lambda-expression _%L145844%_)))
                        (if _%lambda-expr146018146020%_
                            (let* ((_%lambda-expr146023%_
                                    _%lambda-expr146018146020%_)
                                   (__tmp148474
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp148474
                               _%lambda-expr146023%_
                               _%eid146017%_))
                            '#f))
                      (cons 'define
                            (cons _%eid146017%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self145795%_
                                           _%L145844%_))
                                        '()))))))
                 (_%__kont147170147171%_
                  (lambda ()
                    (let* ((_%tmp145883%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body145992%_
                            (let _%lp145885%_ ((_%rest145887%_ _%L145845%_)
                                               (_%k145888%_ '0)
                                               (_%r145889%_ '()))
                              (let* ((_%__stx147134147135%_ _%rest145887%_)
                                     (_%g145894145911%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx147134147135%_)))))
                                (let ((_%__kont147136147137%_
                                       (lambda (_%L145979%_)
                                         (_%lp145885%_
                                          _%L145979%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k145888%_ '1))
                                          _%r145889%_)))
                                      (_%__kont147138147139%_
                                       (lambda (_%L145952%_ _%L145953%_)
                                         (_%lp145885%_
                                          _%L145952%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k145888%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L145953%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp145883%_
                           _%k145888%_
                           _%L145952%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r145889%_))))
                                      (_%__kont147140147141%_
                                       (lambda (_%L145923%_)
                                         (let ((__tmp148475
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L145923%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp145883%_
                                 _%k145888%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp148475
                                            _%r145889%_))))
                                      (_%__kont147142147143%_
                                       (lambda () (reverse _%r145889%_))))
                                  (let ((_%g145892145939%_
                                         (lambda ()
                                           (let ((_%L145923%_
                                                  _%__stx147134147135%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L145923%_))
                                                 (_%__kont147140147141%_
                                                  _%L145923%_)
                                                 (_%__kont147142147143%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147134147135%_))
                                        (let ((_%e145897145968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147134147135%_))))
                                          (let ((_%tl145899145973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145897145968%_)))
                                                (_%hd145898145971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145897145968%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd145898145971%_))
                                                (let ((_%e145900145976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145898145971%_))))
                                                  (if (equal? _%e145900145976%_
                                                              '#f)
                                                      (_%__kont147136147137%_
                                                       _%tl145899145973%_)
                                                      (_%__kont147138147139%_
                                                       _%tl145899145973%_
                                                       _%hd145898145971%_)))
                                                (_%__kont147138147139%_
                                                 _%tl145899145973%_
                                                 _%hd145898145971%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g145892145939%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp145883%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145795%_
                                                       _%L145844%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp145883%_
                                         _%L145845%_
                                         _%L145844%_)
                                        _%body145992%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx147164147165%_))
                                                         (let ((_%e145864146030%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx147164147165%_))))
                   (let ((_%tl145866146035%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e145864146030%_)))
                         (_%hd145865146033%_
                          (let ()
                            (declare (not safe))
                            (##car _%e145864146030%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd145865146033%_))
                         (let ((_%e145867146038%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd145865146033%_))))
                           (if (equal? _%e145867146038%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl145866146035%_))
                                   (_%__kont147166147167%_)
                                   (_%__kont147170147171%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl145866146035%_))
                                   (_%__kont147168147169%_ _%hd145865146033%_)
                                   (_%__kont147170147171%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145866146035%_))
                             (_%__kont147168147169%_ _%hd145865146033%_)
                             (_%__kont147170147171%_)))))
                 (_%__kont147170147171%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd145809145839%_
                                               _%hd145806145831%_)
                                              (_%g145798145815%_
                                               _%g145799145818%_))))
                                      (_%g145798145815%_ _%g145799145818%_))))
                              (_%g145798145815%_ _%g145799145818%_))))
                      (_%g145798145815%_ _%g145799145818%_)))))
          (_%g145797146046%_ _%stx145796%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals145770%_ _%hd145771%_ _%expr145772%_)
        (let ((_%$e145774%_ (gxc#apply-count-values _%expr145772%_)))
          (if _%$e145774%_
              ((lambda (_%count145777%_)
                 (let ((_%len145779%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd145771%_)))
                       (_%cmp145780%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd145771%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len145779%_ '0))
                           (_%cmp145780%_ _%count145777%_ _%len145779%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr145772%_
                          _%hd145771%_)))))
               _%$e145774%_)
              (let* ((_%len145786%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd145771%_)))
                     (_%cmp145788%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd145771%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg145790%_
                      (let ((__tmp148477
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd145771%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp148476 (number->string _%len145786%_)))
                        (declare (not safe))
                        (##string-append __tmp148477 __tmp148476 '" values")))
                     (_%count145792%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd145771%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len145786%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count145792%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals145770%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp145788%_
                                (cons _%count145792%_
                                      (cons _%len145786%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp145788%_
                                                        (cons _%count145792%_
                                                              (cons _%len145786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg145790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count145792%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var145765%_)
        (letrec ((_%generate-inline145767%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var145765%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var145765%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline145767%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline145767%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var145758%_ _%i145759%_ _%rest145760%_)
        (letrec ((_%generate-inline145762%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i145759%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest145760%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var145758%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var145758%_
                                                      (cons '0 '())))
                                          (cons _%var145758%_ '()))))
                        (cons '##vector-ref
                              (cons _%var145758%_ (cons _%i145759%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline145762%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline145762%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var145752%_ _%i145753%_)
        (if (let () (declare (not safe)) (##fx= _%i145753%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var145752%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var145752%_ '()))
                                  (cons (cons 'list (cons _%var145752%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var145752%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var145752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var145752%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i145753%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var145752%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var145752%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var145752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var145752%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var145752%_ '()))
                                (cons _%i145753%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var145752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i145753%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self145684%_ _%stx145685%_)
        (let* ((_%g145687145704%_
                (lambda (_%g145688145701%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145688145701%_))))
               (_%g145686145749%_
                (lambda (_%g145688145707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145688145707%_))
                      (let ((_%e145691145709%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145688145707%_))))
                        (let ((_%hd145692145712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145691145709%_)))
                              (_%tl145693145714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145691145709%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145693145714%_))
                              (let ((_%e145694145717%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145693145714%_))))
                                (let ((_%hd145695145720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145694145717%_)))
                                      (_%tl145696145722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145694145717%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145696145722%_))
                                      (let ((_%e145697145725%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145696145722%_))))
                                        (let ((_%hd145698145728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145697145725%_)))
                                              (_%tl145699145730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145697145725%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145699145730%_))
                                              ((lambda (_%L145733%_
                                                        _%L145734%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self145684%_
                                                  _%L145734%_
                                                  _%L145733%_))
                                               _%hd145698145728%_
                                               _%hd145695145720%_)
                                              (_%g145687145704%_
                                               _%g145688145707%_))))
                                      (_%g145687145704%_ _%g145688145707%_))))
                              (_%g145687145704%_ _%g145688145707%_))))
                      (_%g145687145704%_ _%g145688145707%_)))))
          (_%g145686145749%_ _%stx145685%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self145643%_ _%hd145644%_ _%body145645%_)
        (let* ((_%hd145647%_ (gxc#generate-runtime-lambda-head _%hd145644%_))
               (_%body145649%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self145643%_ _%body145645%_)))
               (_%body145681%_
                (let* ((_%body145650145658%_ _%body145649%_)
                       (_%else145652145666%_
                        (lambda () (cons _%body145649%_ '())))
                       (_%K145654145671%_
                        (lambda (_%exprs145669%_) _%exprs145669%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body145650145658%_))
                      (let ((_%hd145655145674%_
                             (let ()
                               (declare (not safe))
                               (##car _%body145650145658%_)))
                            (_%tl145656145676%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body145650145658%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd145655145674%_ 'begin))
                            (let ((_%exprs145679%_ _%tl145656145676%_))
                              (_%K145654145671%_ _%exprs145679%_))
                            (_%else145652145666%_)))
                      (_%else145652145666%_)))))
          (cons 'lambda (cons _%hd145647%_ _%body145681%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd145641%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd145641%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self144180%_ _%stx144181%_)
        (letrec ((_%dispatch-case?144183%_
                  (lambda (_%hd144871%_ _%body144872%_)
                    (let* ((_%form144874%_
                            (cons _%hd144871%_ (cons _%body144872%_ '())))
                           (_%__stx147196147197%_ _%form144874%_)
                           (_%g144879145036%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147196147197%_)))))
                      (let ((_%__kont147198147199%_
                             (lambda (_%L145561%_ _%L145562%_ _%L145563%_)
                               '#t))
                            (_%__kont147204147205%_
                             (lambda (_%L145349%_
                                      _%L145350%_
                                      _%L145351%_
                                      _%L145352%_
                                      _%L145353%_
                                      _%L145354%_)
                               '#t))
                            (_%__kont147210147211%_
                             (lambda (_%L145144%_
                                      _%L145145%_
                                      _%L145146%_
                                      _%L145147%_)
                               '#t))
                            (_%__kont147212147213%_ (lambda () '#f)))
                        (let* ((_%__match147337147338%_
                                (lambda (_%e144996145048%_
                                         _%hd144997145051%_
                                         _%tl144998145053%_
                                         _%e144999145056%_
                                         _%hd145000145059%_
                                         _%tl145001145061%_
                                         _%e145002145064%_
                                         _%hd145003145067%_
                                         _%tl145004145069%_
                                         _%e145005145072%_
                                         _%hd145006145075%_
                                         _%tl145007145077%_
                                         _%e145008145080%_
                                         _%hd145009145083%_
                                         _%tl145010145085%_
                                         _%e145011145088%_
                                         _%hd145012145091%_
                                         _%tl145013145093%_
                                         _%e145014145096%_
                                         _%hd145015145099%_
                                         _%tl145016145101%_
                                         _%e145017145104%_
                                         _%hd145018145107%_
                                         _%tl145019145109%_
                                         _%e145020145112%_
                                         _%hd145021145115%_
                                         _%tl145022145117%_
                                         _%e145023145120%_
                                         _%hd145024145123%_
                                         _%tl145025145125%_
                                         _%e145026145128%_
                                         _%hd145027145131%_
                                         _%tl145028145133%_
                                         _%e145029145136%_
                                         _%hd145030145139%_
                                         _%tl145031145141%_)
                                  (let ((_%L145144%_ _%hd145030145139%_)
                                        (_%L145145%_ _%hd145021145115%_)
                                        (_%L145146%_ _%hd145012145091%_)
                                        (_%L145147%_ _%hd144997145051%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L145147%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L145146%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L145147%_
                                                _%L145144%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L145145%_
                                                     _%L145147%_))))
                                        (_%__kont147210147211%_
                                         _%L145144%_
                                         _%L145145%_
                                         _%L145146%_
                                         _%L145147%_)
                                        (_%__kont147212147213%_)))))
                               (_%__match147309147310%_
                                (lambda (_%e144996145048%_
                                         _%hd144997145051%_
                                         _%tl144998145053%_
                                         _%e144999145056%_
                                         _%hd145000145059%_
                                         _%tl145001145061%_
                                         _%e145002145064%_
                                         _%hd145003145067%_
                                         _%tl145004145069%_
                                         _%e145005145072%_
                                         _%hd145006145075%_
                                         _%tl145007145077%_
                                         _%e145008145080%_
                                         _%hd145009145083%_
                                         _%tl145010145085%_
                                         _%e145011145088%_
                                         _%hd145012145091%_
                                         _%tl145013145093%_
                                         _%e145014145096%_
                                         _%hd145015145099%_
                                         _%tl145016145101%_
                                         _%e145017145104%_
                                         _%hd145018145107%_
                                         _%tl145019145109%_
                                         _%e145020145112%_
                                         _%hd145021145115%_
                                         _%tl145022145117%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145016145101%_))
                                      (let ((_%e145023145120%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145016145101%_))))
                                        (let ((_%tl145025145125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145023145120%_)))
                                              (_%hd145024145123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145023145120%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145024145123%_))
                                              (let ((_%e145026145128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145024145123%_))))
                                                (let ((_%tl145028145133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145026145128%_)))
                                                      (_%hd145027145131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145026145128%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd145027145131%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd145027145131%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145028145133%_))
                      (let ((_%e145029145136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145028145133%_))))
                        (let ((_%tl145031145141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145029145136%_)))
                              (_%hd145030145139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145029145136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145031145141%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl145025145125%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145001145061%_))
                                      (_%__match147337147338%_
                                       _%e144996145048%_
                                       _%hd144997145051%_
                                       _%tl144998145053%_
                                       _%e144999145056%_
                                       _%hd145000145059%_
                                       _%tl145001145061%_
                                       _%e145002145064%_
                                       _%hd145003145067%_
                                       _%tl145004145069%_
                                       _%e145005145072%_
                                       _%hd145006145075%_
                                       _%tl145007145077%_
                                       _%e145008145080%_
                                       _%hd145009145083%_
                                       _%tl145010145085%_
                                       _%e145011145088%_
                                       _%hd145012145091%_
                                       _%tl145013145093%_
                                       _%e145014145096%_
                                       _%hd145015145099%_
                                       _%tl145016145101%_
                                       _%e145017145104%_
                                       _%hd145018145107%_
                                       _%tl145019145109%_
                                       _%e145020145112%_
                                       _%hd145021145115%_
                                       _%tl145022145117%_
                                       _%e145023145120%_
                                       _%hd145024145123%_
                                       _%tl145025145125%_
                                       _%e145026145128%_
                                       _%hd145027145131%_
                                       _%tl145028145133%_
                                       _%e145029145136%_
                                       _%hd145030145139%_
                                       _%tl145031145141%_)
                                      (_%__kont147212147213%_))
                                  (_%__kont147212147213%_))
                              (_%__kont147212147213%_))))
                      (_%__kont147212147213%_))
                  (_%__kont147212147213%_))
              (_%__kont147212147213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147212147213%_))))
                                      (_%__kont147212147213%_))))
                               (_%__match147239147240%_
                                (lambda (_%e144932145189%_
                                         _%hd144933145192%_
                                         _%tl144934145194%_
                                         _%__splice147206147207%_
                                         _%target144935145197%_
                                         _%tl144937145199%_)
                                  (letrec ((_%loop144938145202%_
                                            (lambda (_%hd144936145205%_
                                                     _%arg144942145207%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144936145205%_))
                                                  (let ((_%e144939145210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144936145205%_))))
                                                    (let ((_%lp-tl144941145215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144939145210%_)))
                                                          (_%lp-hd144940145213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144939145210%_))))
                                                      (_%loop144938145202%_
                                                       _%lp-tl144941145215%_
                                                       (cons _%lp-hd144940145213%_
                                                             _%arg144942145207%_))))
                                                  (let ((_%arg144943145218%_
                                                         (reverse _%arg144942145207%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144934145194%_))
                                                        (let ((_%e144944145221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144934145194%_))))
                  (let ((_%tl144946145226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144944145221%_)))
                        (_%hd144945145224%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144944145221%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144945145224%_))
                        (let ((_%e144947145229%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144945145224%_))))
                          (let ((_%tl144949145234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144947145229%_)))
                                (_%hd144948145232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144947145229%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144948145232%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144948145232%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144949145234%_))
                                        (let ((_%e144950145237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144949145234%_))))
                                          (let ((_%tl144952145242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144950145237%_)))
                                                (_%hd144951145240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144950145237%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144951145240%_))
                                                (let ((_%e144953145245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144951145240%_))))
                                                  (let ((_%tl144955145250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144953145245%_)))
                                                        (_%hd144954145248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144953145245%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144954145248%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144954145248%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144955145250%_))
                        (let ((_%e144956145253%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144955145250%_))))
                          (let ((_%tl144958145258%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144956145253%_)))
                                (_%hd144957145256%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144956145253%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144958145258%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl144952145242%_))
                                    (let ((_%e144959145261%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl144952145242%_))))
                                      (let ((_%tl144961145266%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144959145261%_)))
                                            (_%hd144960145264%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144959145261%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd144960145264%_))
                                            (let ((_%e144962145269%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd144960145264%_))))
                                              (let ((_%tl144964145274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144962145269%_)))
                                                    (_%hd144963145272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144962145269%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd144963145272%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd144963145272%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144964145274%_))
                                                            (let ((_%e144965145277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144964145274%_))))
                      (let ((_%tl144967145282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144965145277%_)))
                            (_%hd144966145280%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144965145277%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144967145282%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144961145266%_))
                                (if (let ((__tmp148478
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl144961145266%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp148478 '1))
                                    (let ((_%__splice147208147209%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144961145266%_
                                              '1))))
                                      (let ((_%tl144970145287%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147208147209%_
                                                '1)))
                                            (_%target144968145285%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147208147209%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144970145287%_))
                                            (let ((_%e144977145290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144970145287%_))))
                                              (let ((_%tl144979145295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144977145290%_)))
                                                    (_%hd144978145293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144977145290%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd144978145293%_))
                                                    (let ((_%e144980145298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd144978145293%_))))
                                                      (let ((_%tl144982145303%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144980145298%_)))
                    (_%hd144981145301%_
                     (let () (declare (not safe)) (##car _%e144980145298%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd144981145301%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd144981145301%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl144982145303%_))
                            (let ((_%e144983145306%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl144982145303%_))))
                              (let ((_%tl144985145311%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144983145306%_)))
                                    (_%hd144984145309%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144983145306%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl144985145311%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144979145295%_))
                                        (letrec ((_%loop144971145314%_
                                                  (lambda (_%hd144969145317%_
                                                           _%xarg144975145319%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd144969145317%_))
                                                        (let ((_%e144972145322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd144969145317%_))))
                  (let ((_%lp-tl144974145327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144972145322%_)))
                        (_%lp-hd144973145325%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144972145322%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd144973145325%_))
                        (let ((_%e144986145330%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd144973145325%_))))
                          (let ((_%tl144988145335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144986145330%_)))
                                (_%hd144987145333%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144986145330%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144987145333%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd144987145333%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144988145335%_))
                                        (let ((_%e144989145338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144988145335%_))))
                                          (let ((_%tl144991145343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144989145338%_)))
                                                (_%hd144990145341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144989145338%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144991145343%_))
                                                (_%loop144971145314%_
                                                 _%lp-tl144974145327%_
                                                 (cons _%hd144990145341%_
                                                       _%xarg144975145319%_))
                                                (_%__match147309147310%_
                                                 _%e144932145189%_
                                                 _%hd144933145192%_
                                                 _%tl144934145194%_
                                                 _%e144944145221%_
                                                 _%hd144945145224%_
                                                 _%tl144946145226%_
                                                 _%e144947145229%_
                                                 _%hd144948145232%_
                                                 _%tl144949145234%_
                                                 _%e144950145237%_
                                                 _%hd144951145240%_
                                                 _%tl144952145242%_
                                                 _%e144953145245%_
                                                 _%hd144954145248%_
                                                 _%tl144955145250%_
                                                 _%e144956145253%_
                                                 _%hd144957145256%_
                                                 _%tl144958145258%_
                                                 _%e144959145261%_
                                                 _%hd144960145264%_
                                                 _%tl144961145266%_
                                                 _%e144962145269%_
                                                 _%hd144963145272%_
                                                 _%tl144964145274%_
                                                 _%e144965145277%_
                                                 _%hd144966145280%_
                                                 _%tl144967145282%_))))
                                        (_%__match147309147310%_
                                         _%e144932145189%_
                                         _%hd144933145192%_
                                         _%tl144934145194%_
                                         _%e144944145221%_
                                         _%hd144945145224%_
                                         _%tl144946145226%_
                                         _%e144947145229%_
                                         _%hd144948145232%_
                                         _%tl144949145234%_
                                         _%e144950145237%_
                                         _%hd144951145240%_
                                         _%tl144952145242%_
                                         _%e144953145245%_
                                         _%hd144954145248%_
                                         _%tl144955145250%_
                                         _%e144956145253%_
                                         _%hd144957145256%_
                                         _%tl144958145258%_
                                         _%e144959145261%_
                                         _%hd144960145264%_
                                         _%tl144961145266%_
                                         _%e144962145269%_
                                         _%hd144963145272%_
                                         _%tl144964145274%_
                                         _%e144965145277%_
                                         _%hd144966145280%_
                                         _%tl144967145282%_))
                                    (_%__match147309147310%_
                                     _%e144932145189%_
                                     _%hd144933145192%_
                                     _%tl144934145194%_
                                     _%e144944145221%_
                                     _%hd144945145224%_
                                     _%tl144946145226%_
                                     _%e144947145229%_
                                     _%hd144948145232%_
                                     _%tl144949145234%_
                                     _%e144950145237%_
                                     _%hd144951145240%_
                                     _%tl144952145242%_
                                     _%e144953145245%_
                                     _%hd144954145248%_
                                     _%tl144955145250%_
                                     _%e144956145253%_
                                     _%hd144957145256%_
                                     _%tl144958145258%_
                                     _%e144959145261%_
                                     _%hd144960145264%_
                                     _%tl144961145266%_
                                     _%e144962145269%_
                                     _%hd144963145272%_
                                     _%tl144964145274%_
                                     _%e144965145277%_
                                     _%hd144966145280%_
                                     _%tl144967145282%_))
                                (_%__match147309147310%_
                                 _%e144932145189%_
                                 _%hd144933145192%_
                                 _%tl144934145194%_
                                 _%e144944145221%_
                                 _%hd144945145224%_
                                 _%tl144946145226%_
                                 _%e144947145229%_
                                 _%hd144948145232%_
                                 _%tl144949145234%_
                                 _%e144950145237%_
                                 _%hd144951145240%_
                                 _%tl144952145242%_
                                 _%e144953145245%_
                                 _%hd144954145248%_
                                 _%tl144955145250%_
                                 _%e144956145253%_
                                 _%hd144957145256%_
                                 _%tl144958145258%_
                                 _%e144959145261%_
                                 _%hd144960145264%_
                                 _%tl144961145266%_
                                 _%e144962145269%_
                                 _%hd144963145272%_
                                 _%tl144964145274%_
                                 _%e144965145277%_
                                 _%hd144966145280%_
                                 _%tl144967145282%_))))
                        (_%__match147309147310%_
                         _%e144932145189%_
                         _%hd144933145192%_
                         _%tl144934145194%_
                         _%e144944145221%_
                         _%hd144945145224%_
                         _%tl144946145226%_
                         _%e144947145229%_
                         _%hd144948145232%_
                         _%tl144949145234%_
                         _%e144950145237%_
                         _%hd144951145240%_
                         _%tl144952145242%_
                         _%e144953145245%_
                         _%hd144954145248%_
                         _%tl144955145250%_
                         _%e144956145253%_
                         _%hd144957145256%_
                         _%tl144958145258%_
                         _%e144959145261%_
                         _%hd144960145264%_
                         _%tl144961145266%_
                         _%e144962145269%_
                         _%hd144963145272%_
                         _%tl144964145274%_
                         _%e144965145277%_
                         _%hd144966145280%_
                         _%tl144967145282%_))))
                (let ((_%xarg144976145346%_ (reverse _%xarg144975145319%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144946145226%_))
                      (let ((_%L145349%_ _%hd144984145309%_)
                            (_%L145350%_ _%xarg144976145346%_)
                            (_%L145351%_ _%hd144966145280%_)
                            (_%L145352%_ _%hd144957145256%_)
                            (_%L145353%_ _%tl144937145199%_)
                            (_%L145354%_ _%arg144943145218%_))
                        (if (and (let ((__tmp148479
                                        (let ((__tmp148480
                                               (lambda (_%g145397145400%_
                                                        _%g145398145402%_)
                                                 (cons _%g145397145400%_
                                                       _%g145398145402%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp148480
                                           '()
                                           _%L145354%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp148479))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L145353%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L145352%_
                                    'apply))
                                 (let ((__tmp148483
                                        (length (let ((__tmp148484
                                                       (lambda (_%g145404145407%_
                                                                _%g145405145409%_)
                                                         (cons _%g145404145407%_
                                                               _%g145405145409%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp148484
                                                   '()
                                                   _%L145354%_))))
                                       (__tmp148481
                                        (length (let ((__tmp148482
                                                       (lambda (_%g145411145414%_
                                                                _%g145412145416%_)
                                                         (cons _%g145411145414%_
                                                               _%g145412145416%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp148482
                                                   '()
                                                   _%L145350%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp148483 __tmp148481))
                                 (let ((__tmp148487
                                        (let ((__tmp148488
                                               (lambda (_%g145418145421%_
                                                        _%g145419145423%_)
                                                 (cons _%g145418145421%_
                                                       _%g145419145423%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp148488
                                           '()
                                           _%L145354%_)))
                                       (__tmp148485
                                        (let ((__tmp148486
                                               (lambda (_%g145425145428%_
                                                        _%g145426145430%_)
                                                 (cons _%g145425145428%_
                                                       _%g145426145430%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp148486
                                           '()
                                           _%L145350%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp148487
                                    __tmp148485))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L145353%_
                                    _%L145349%_))
                                 (not (let ((__tmp148492
                                             (lambda (_%g145432145434%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g145432145434%_
                                                  _%L145351%_))))
                                            (__tmp148489
                                             (let ((__tmp148491
                                                    (lambda (_%g145436145439%_
                                                             _%g145437145441%_)
                                                      (cons _%g145436145439%_
                                                            _%g145437145441%_)))
                                                   (__tmp148490
                                                    (cons _%L145353%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp148491
                                                __tmp148490
                                                _%L145354%_))))
                                        (declare (not safe))
                                        (__find __tmp148492 __tmp148489))))
                            (_%__kont147204147205%_
                             _%L145349%_
                             _%L145350%_
                             _%L145351%_
                             _%L145352%_
                             _%L145353%_
                             _%L145354%_)
                            (_%__match147309147310%_
                             _%e144932145189%_
                             _%hd144933145192%_
                             _%tl144934145194%_
                             _%e144944145221%_
                             _%hd144945145224%_
                             _%tl144946145226%_
                             _%e144947145229%_
                             _%hd144948145232%_
                             _%tl144949145234%_
                             _%e144950145237%_
                             _%hd144951145240%_
                             _%tl144952145242%_
                             _%e144953145245%_
                             _%hd144954145248%_
                             _%tl144955145250%_
                             _%e144956145253%_
                             _%hd144957145256%_
                             _%tl144958145258%_
                             _%e144959145261%_
                             _%hd144960145264%_
                             _%tl144961145266%_
                             _%e144962145269%_
                             _%hd144963145272%_
                             _%tl144964145274%_
                             _%e144965145277%_
                             _%hd144966145280%_
                             _%tl144967145282%_)))
                      (_%__match147309147310%_
                       _%e144932145189%_
                       _%hd144933145192%_
                       _%tl144934145194%_
                       _%e144944145221%_
                       _%hd144945145224%_
                       _%tl144946145226%_
                       _%e144947145229%_
                       _%hd144948145232%_
                       _%tl144949145234%_
                       _%e144950145237%_
                       _%hd144951145240%_
                       _%tl144952145242%_
                       _%e144953145245%_
                       _%hd144954145248%_
                       _%tl144955145250%_
                       _%e144956145253%_
                       _%hd144957145256%_
                       _%tl144958145258%_
                       _%e144959145261%_
                       _%hd144960145264%_
                       _%tl144961145266%_
                       _%e144962145269%_
                       _%hd144963145272%_
                       _%tl144964145274%_
                       _%e144965145277%_
                       _%hd144966145280%_
                       _%tl144967145282%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop144971145314%_
                                           _%target144968145285%_
                                           '()))
                                        (_%__match147309147310%_
                                         _%e144932145189%_
                                         _%hd144933145192%_
                                         _%tl144934145194%_
                                         _%e144944145221%_
                                         _%hd144945145224%_
                                         _%tl144946145226%_
                                         _%e144947145229%_
                                         _%hd144948145232%_
                                         _%tl144949145234%_
                                         _%e144950145237%_
                                         _%hd144951145240%_
                                         _%tl144952145242%_
                                         _%e144953145245%_
                                         _%hd144954145248%_
                                         _%tl144955145250%_
                                         _%e144956145253%_
                                         _%hd144957145256%_
                                         _%tl144958145258%_
                                         _%e144959145261%_
                                         _%hd144960145264%_
                                         _%tl144961145266%_
                                         _%e144962145269%_
                                         _%hd144963145272%_
                                         _%tl144964145274%_
                                         _%e144965145277%_
                                         _%hd144966145280%_
                                         _%tl144967145282%_))
                                    (_%__match147309147310%_
                                     _%e144932145189%_
                                     _%hd144933145192%_
                                     _%tl144934145194%_
                                     _%e144944145221%_
                                     _%hd144945145224%_
                                     _%tl144946145226%_
                                     _%e144947145229%_
                                     _%hd144948145232%_
                                     _%tl144949145234%_
                                     _%e144950145237%_
                                     _%hd144951145240%_
                                     _%tl144952145242%_
                                     _%e144953145245%_
                                     _%hd144954145248%_
                                     _%tl144955145250%_
                                     _%e144956145253%_
                                     _%hd144957145256%_
                                     _%tl144958145258%_
                                     _%e144959145261%_
                                     _%hd144960145264%_
                                     _%tl144961145266%_
                                     _%e144962145269%_
                                     _%hd144963145272%_
                                     _%tl144964145274%_
                                     _%e144965145277%_
                                     _%hd144966145280%_
                                     _%tl144967145282%_))))
                            (_%__match147309147310%_
                             _%e144932145189%_
                             _%hd144933145192%_
                             _%tl144934145194%_
                             _%e144944145221%_
                             _%hd144945145224%_
                             _%tl144946145226%_
                             _%e144947145229%_
                             _%hd144948145232%_
                             _%tl144949145234%_
                             _%e144950145237%_
                             _%hd144951145240%_
                             _%tl144952145242%_
                             _%e144953145245%_
                             _%hd144954145248%_
                             _%tl144955145250%_
                             _%e144956145253%_
                             _%hd144957145256%_
                             _%tl144958145258%_
                             _%e144959145261%_
                             _%hd144960145264%_
                             _%tl144961145266%_
                             _%e144962145269%_
                             _%hd144963145272%_
                             _%tl144964145274%_
                             _%e144965145277%_
                             _%hd144966145280%_
                             _%tl144967145282%_))
                        (_%__match147309147310%_
                         _%e144932145189%_
                         _%hd144933145192%_
                         _%tl144934145194%_
                         _%e144944145221%_
                         _%hd144945145224%_
                         _%tl144946145226%_
                         _%e144947145229%_
                         _%hd144948145232%_
                         _%tl144949145234%_
                         _%e144950145237%_
                         _%hd144951145240%_
                         _%tl144952145242%_
                         _%e144953145245%_
                         _%hd144954145248%_
                         _%tl144955145250%_
                         _%e144956145253%_
                         _%hd144957145256%_
                         _%tl144958145258%_
                         _%e144959145261%_
                         _%hd144960145264%_
                         _%tl144961145266%_
                         _%e144962145269%_
                         _%hd144963145272%_
                         _%tl144964145274%_
                         _%e144965145277%_
                         _%hd144966145280%_
                         _%tl144967145282%_))
                    (_%__match147309147310%_
                     _%e144932145189%_
                     _%hd144933145192%_
                     _%tl144934145194%_
                     _%e144944145221%_
                     _%hd144945145224%_
                     _%tl144946145226%_
                     _%e144947145229%_
                     _%hd144948145232%_
                     _%tl144949145234%_
                     _%e144950145237%_
                     _%hd144951145240%_
                     _%tl144952145242%_
                     _%e144953145245%_
                     _%hd144954145248%_
                     _%tl144955145250%_
                     _%e144956145253%_
                     _%hd144957145256%_
                     _%tl144958145258%_
                     _%e144959145261%_
                     _%hd144960145264%_
                     _%tl144961145266%_
                     _%e144962145269%_
                     _%hd144963145272%_
                     _%tl144964145274%_
                     _%e144965145277%_
                     _%hd144966145280%_
                     _%tl144967145282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match147309147310%_
                                                     _%e144932145189%_
                                                     _%hd144933145192%_
                                                     _%tl144934145194%_
                                                     _%e144944145221%_
                                                     _%hd144945145224%_
                                                     _%tl144946145226%_
                                                     _%e144947145229%_
                                                     _%hd144948145232%_
                                                     _%tl144949145234%_
                                                     _%e144950145237%_
                                                     _%hd144951145240%_
                                                     _%tl144952145242%_
                                                     _%e144953145245%_
                                                     _%hd144954145248%_
                                                     _%tl144955145250%_
                                                     _%e144956145253%_
                                                     _%hd144957145256%_
                                                     _%tl144958145258%_
                                                     _%e144959145261%_
                                                     _%hd144960145264%_
                                                     _%tl144961145266%_
                                                     _%e144962145269%_
                                                     _%hd144963145272%_
                                                     _%tl144964145274%_
                                                     _%e144965145277%_
                                                     _%hd144966145280%_
                                                     _%tl144967145282%_))))
                                            (_%__match147309147310%_
                                             _%e144932145189%_
                                             _%hd144933145192%_
                                             _%tl144934145194%_
                                             _%e144944145221%_
                                             _%hd144945145224%_
                                             _%tl144946145226%_
                                             _%e144947145229%_
                                             _%hd144948145232%_
                                             _%tl144949145234%_
                                             _%e144950145237%_
                                             _%hd144951145240%_
                                             _%tl144952145242%_
                                             _%e144953145245%_
                                             _%hd144954145248%_
                                             _%tl144955145250%_
                                             _%e144956145253%_
                                             _%hd144957145256%_
                                             _%tl144958145258%_
                                             _%e144959145261%_
                                             _%hd144960145264%_
                                             _%tl144961145266%_
                                             _%e144962145269%_
                                             _%hd144963145272%_
                                             _%tl144964145274%_
                                             _%e144965145277%_
                                             _%hd144966145280%_
                                             _%tl144967145282%_))))
                                    (_%__match147309147310%_
                                     _%e144932145189%_
                                     _%hd144933145192%_
                                     _%tl144934145194%_
                                     _%e144944145221%_
                                     _%hd144945145224%_
                                     _%tl144946145226%_
                                     _%e144947145229%_
                                     _%hd144948145232%_
                                     _%tl144949145234%_
                                     _%e144950145237%_
                                     _%hd144951145240%_
                                     _%tl144952145242%_
                                     _%e144953145245%_
                                     _%hd144954145248%_
                                     _%tl144955145250%_
                                     _%e144956145253%_
                                     _%hd144957145256%_
                                     _%tl144958145258%_
                                     _%e144959145261%_
                                     _%hd144960145264%_
                                     _%tl144961145266%_
                                     _%e144962145269%_
                                     _%hd144963145272%_
                                     _%tl144964145274%_
                                     _%e144965145277%_
                                     _%hd144966145280%_
                                     _%tl144967145282%_))
                                (_%__match147309147310%_
                                 _%e144932145189%_
                                 _%hd144933145192%_
                                 _%tl144934145194%_
                                 _%e144944145221%_
                                 _%hd144945145224%_
                                 _%tl144946145226%_
                                 _%e144947145229%_
                                 _%hd144948145232%_
                                 _%tl144949145234%_
                                 _%e144950145237%_
                                 _%hd144951145240%_
                                 _%tl144952145242%_
                                 _%e144953145245%_
                                 _%hd144954145248%_
                                 _%tl144955145250%_
                                 _%e144956145253%_
                                 _%hd144957145256%_
                                 _%tl144958145258%_
                                 _%e144959145261%_
                                 _%hd144960145264%_
                                 _%tl144961145266%_
                                 _%e144962145269%_
                                 _%hd144963145272%_
                                 _%tl144964145274%_
                                 _%e144965145277%_
                                 _%hd144966145280%_
                                 _%tl144967145282%_))
                            (_%__kont147212147213%_))))
                    (_%__kont147212147213%_))
                (_%__kont147212147213%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147212147213%_))))
                                            (_%__kont147212147213%_))))
                                    (_%__kont147212147213%_))
                                (_%__kont147212147213%_))))
                        (_%__kont147212147213%_))
                    (_%__kont147212147213%_))
                (_%__kont147212147213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont147212147213%_))))
                                        (_%__kont147212147213%_))
                                    (_%__kont147212147213%_))
                                (_%__kont147212147213%_))))
                        (_%__kont147212147213%_))))
                (_%__kont147212147213%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144938145202%_
                                     _%target144935145197%_
                                     '()))))
                               (_%__match147227147228%_
                                (lambda (_%e144884145449%_
                                         _%hd144885145452%_
                                         _%tl144886145454%_
                                         _%__splice147200147201%_
                                         _%target144887145457%_
                                         _%tl144889145459%_)
                                  (letrec ((_%loop144890145462%_
                                            (lambda (_%hd144888145465%_
                                                     _%arg144894145467%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144888145465%_))
                                                  (let ((_%e144891145470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144888145465%_))))
                                                    (let ((_%lp-tl144893145475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144891145470%_)))
                                                          (_%lp-hd144892145473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144891145470%_))))
                                                      (_%loop144890145462%_
                                                       _%lp-tl144893145475%_
                                                       (cons _%lp-hd144892145473%_
                                                             _%arg144894145467%_))))
                                                  (let ((_%arg144895145478%_
                                                         (reverse _%arg144894145467%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144886145454%_))
                                                        (let ((_%e144896145481%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144886145454%_))))
                  (let ((_%tl144898145486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144896145481%_)))
                        (_%hd144897145484%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144896145481%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144897145484%_))
                        (let ((_%e144899145489%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144897145484%_))))
                          (let ((_%tl144901145494%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144899145489%_)))
                                (_%hd144900145492%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144899145489%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144900145492%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144900145492%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144901145494%_))
                                        (let ((_%e144902145497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144901145494%_))))
                                          (let ((_%tl144904145502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144902145497%_)))
                                                (_%hd144903145500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144902145497%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144903145500%_))
                                                (let ((_%e144905145505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144903145500%_))))
                                                  (let ((_%tl144907145510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144905145505%_)))
                                                        (_%hd144906145508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144905145505%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144906145508%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144906145508%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144907145510%_))
                        (let ((_%e144908145513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144907145510%_))))
                          (let ((_%tl144910145518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144908145513%_)))
                                (_%hd144909145516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144908145513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144910145518%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl144904145502%_))
                                    (let ((_%__splice147202147203%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144904145502%_
                                              '0))))
                                      (let ((_%tl144913145523%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147202147203%_
                                                '1)))
                                            (_%target144911145521%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147202147203%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl144913145523%_))
                                            (letrec ((_%loop144914145526%_
                                                      (lambda (_%hd144912145529%_
                                                               _%xarg144918145531%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd144912145529%_))
                                                            (let ((_%e144915145534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd144912145529%_))))
                      (let ((_%lp-tl144917145539%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144915145534%_)))
                            (_%lp-hd144916145537%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144915145534%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd144916145537%_))
                            (let ((_%e144920145542%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd144916145537%_))))
                              (let ((_%tl144922145547%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144920145542%_)))
                                    (_%hd144921145545%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144920145542%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144921145545%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd144921145545%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144922145547%_))
                                            (let ((_%e144923145550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144922145547%_))))
                                              (let ((_%tl144925145555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144923145550%_)))
                                                    (_%hd144924145553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144923145550%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144925145555%_))
                                                    (_%loop144914145526%_
                                                     _%lp-tl144917145539%_
                                                     (cons _%hd144924145553%_
                                                           _%xarg144918145531%_))
                                                    (_%__match147239147240%_
                                                     _%e144884145449%_
                                                     _%hd144885145452%_
                                                     _%tl144886145454%_
                                                     _%__splice147200147201%_
                                                     _%target144887145457%_
                                                     _%tl144889145459%_))))
                                            (_%__match147239147240%_
                                             _%e144884145449%_
                                             _%hd144885145452%_
                                             _%tl144886145454%_
                                             _%__splice147200147201%_
                                             _%target144887145457%_
                                             _%tl144889145459%_))
                                        (_%__match147239147240%_
                                         _%e144884145449%_
                                         _%hd144885145452%_
                                         _%tl144886145454%_
                                         _%__splice147200147201%_
                                         _%target144887145457%_
                                         _%tl144889145459%_))
                                    (_%__match147239147240%_
                                     _%e144884145449%_
                                     _%hd144885145452%_
                                     _%tl144886145454%_
                                     _%__splice147200147201%_
                                     _%target144887145457%_
                                     _%tl144889145459%_))))
                            (_%__match147239147240%_
                             _%e144884145449%_
                             _%hd144885145452%_
                             _%tl144886145454%_
                             _%__splice147200147201%_
                             _%target144887145457%_
                             _%tl144889145459%_))))
                    (let ((_%xarg144919145558%_
                           (reverse _%xarg144918145531%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144898145486%_))
                          (let ((_%L145561%_ _%xarg144919145558%_)
                                (_%L145562%_ _%hd144909145516%_)
                                (_%L145563%_ _%arg144895145478%_))
                            (if (and (let ((__tmp148493
                                            (let ((__tmp148494
                                                   (lambda (_%g145591145594%_
                                                            _%g145592145596%_)
                                                     (cons _%g145591145594%_
                                                           _%g145592145596%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148494
                                               '()
                                               _%L145563%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp148493))
                                     (let ((__tmp148497
                                            (length (let ((__tmp148498
                                                           (lambda (_%g145598145601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g145599145603%_)
                     (cons _%g145598145601%_ _%g145599145603%_))))
              (declare (not safe))
              (__foldr1 __tmp148498 '() _%L145563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp148495
                                            (length (let ((__tmp148496
                                                           (lambda (_%g145605145608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g145606145610%_)
                     (cons _%g145605145608%_ _%g145606145610%_))))
              (declare (not safe))
              (__foldr1 __tmp148496 '() _%L145561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp148497 __tmp148495))
                                     (let ((__tmp148501
                                            (let ((__tmp148502
                                                   (lambda (_%g145612145615%_
                                                            _%g145613145617%_)
                                                     (cons _%g145612145615%_
                                                           _%g145613145617%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148502
                                               '()
                                               _%L145563%_)))
                                           (__tmp148499
                                            (let ((__tmp148500
                                                   (lambda (_%g145619145622%_
                                                            _%g145620145624%_)
                                                     (cons _%g145619145622%_
                                                           _%g145620145624%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148500
                                               '()
                                               _%L145561%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp148501
                                        __tmp148499))
                                     (not (let ((__tmp148505
                                                 (lambda (_%g145626145628%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g145626145628%_
                                                      _%L145562%_))))
                                                (__tmp148503
                                                 (let ((__tmp148504
                                                        (lambda (_%g145630145633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g145631145635%_)
                  (cons _%g145630145633%_ _%g145631145635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp148504
                                                    '()
                                                    _%L145563%_))))
                                            (declare (not safe))
                                            (__find __tmp148505 __tmp148503))))
                                (_%__kont147198147199%_
                                 _%L145561%_
                                 _%L145562%_
                                 _%L145563%_)
                                (_%__match147239147240%_
                                 _%e144884145449%_
                                 _%hd144885145452%_
                                 _%tl144886145454%_
                                 _%__splice147200147201%_
                                 _%target144887145457%_
                                 _%tl144889145459%_)))
                          (_%__match147239147240%_
                           _%e144884145449%_
                           _%hd144885145452%_
                           _%tl144886145454%_
                           _%__splice147200147201%_
                           _%target144887145457%_
                           _%tl144889145459%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop144914145526%_
                                               _%target144911145521%_
                                               '()))
                                            (_%__match147239147240%_
                                             _%e144884145449%_
                                             _%hd144885145452%_
                                             _%tl144886145454%_
                                             _%__splice147200147201%_
                                             _%target144887145457%_
                                             _%tl144889145459%_))))
                                    (_%__match147239147240%_
                                     _%e144884145449%_
                                     _%hd144885145452%_
                                     _%tl144886145454%_
                                     _%__splice147200147201%_
                                     _%target144887145457%_
                                     _%tl144889145459%_))
                                (_%__match147239147240%_
                                 _%e144884145449%_
                                 _%hd144885145452%_
                                 _%tl144886145454%_
                                 _%__splice147200147201%_
                                 _%target144887145457%_
                                 _%tl144889145459%_))))
                        (_%__match147239147240%_
                         _%e144884145449%_
                         _%hd144885145452%_
                         _%tl144886145454%_
                         _%__splice147200147201%_
                         _%target144887145457%_
                         _%tl144889145459%_))
                    (_%__match147239147240%_
                     _%e144884145449%_
                     _%hd144885145452%_
                     _%tl144886145454%_
                     _%__splice147200147201%_
                     _%target144887145457%_
                     _%tl144889145459%_))
                (_%__match147239147240%_
                 _%e144884145449%_
                 _%hd144885145452%_
                 _%tl144886145454%_
                 _%__splice147200147201%_
                 _%target144887145457%_
                 _%tl144889145459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147239147240%_
                                                 _%e144884145449%_
                                                 _%hd144885145452%_
                                                 _%tl144886145454%_
                                                 _%__splice147200147201%_
                                                 _%target144887145457%_
                                                 _%tl144889145459%_))))
                                        (_%__match147239147240%_
                                         _%e144884145449%_
                                         _%hd144885145452%_
                                         _%tl144886145454%_
                                         _%__splice147200147201%_
                                         _%target144887145457%_
                                         _%tl144889145459%_))
                                    (_%__match147239147240%_
                                     _%e144884145449%_
                                     _%hd144885145452%_
                                     _%tl144886145454%_
                                     _%__splice147200147201%_
                                     _%target144887145457%_
                                     _%tl144889145459%_))
                                (_%__match147239147240%_
                                 _%e144884145449%_
                                 _%hd144885145452%_
                                 _%tl144886145454%_
                                 _%__splice147200147201%_
                                 _%target144887145457%_
                                 _%tl144889145459%_))))
                        (_%__match147239147240%_
                         _%e144884145449%_
                         _%hd144885145452%_
                         _%tl144886145454%_
                         _%__splice147200147201%_
                         _%target144887145457%_
                         _%tl144889145459%_))))
                (_%__match147239147240%_
                 _%e144884145449%_
                 _%hd144885145452%_
                 _%tl144886145454%_
                 _%__splice147200147201%_
                 _%target144887145457%_
                 _%tl144889145459%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144890145462%_
                                     _%target144887145457%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147196147197%_))
                              (let ((_%e144884145449%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147196147197%_))))
                                (let ((_%tl144886145454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144884145449%_)))
                                      (_%hd144885145452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144884145449%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144885145452%_))
                                      (let ((_%__splice147200147201%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144885145452%_
                                                '0))))
                                        (let ((_%tl144889145459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147200147201%_
                                                  '1)))
                                              (_%target144887145457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147200147201%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144889145459%_))
                                              (_%__match147227147228%_
                                               _%e144884145449%_
                                               _%hd144885145452%_
                                               _%tl144886145454%_
                                               _%__splice147200147201%_
                                               _%target144887145457%_
                                               _%tl144889145459%_)
                                              (_%__match147239147240%_
                                               _%e144884145449%_
                                               _%hd144885145452%_
                                               _%tl144886145454%_
                                               _%__splice147200147201%_
                                               _%target144887145457%_
                                               _%tl144889145459%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144886145454%_))
                                          (let ((_%e144999145056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144886145454%_))))
                                            (let ((_%tl145001145061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144999145056%_)))
                                                  (_%hd145000145059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144999145056%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145000145059%_))
                                                  (let ((_%e145002145064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145000145059%_))))
                                                    (let ((_%tl145004145069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145002145064%_)))
                                                          (_%hd145003145067%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145002145064%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145003145067%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145003145067%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145004145069%_))
                          (let ((_%e145005145072%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145004145069%_))))
                            (let ((_%tl145007145077%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145005145072%_)))
                                  (_%hd145006145075%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145005145072%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145006145075%_))
                                  (let ((_%e145008145080%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145006145075%_))))
                                    (let ((_%tl145010145085%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145008145080%_)))
                                          (_%hd145009145083%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145008145080%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145009145083%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145009145083%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145010145085%_))
                                                  (let ((_%e145011145088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145010145085%_))))
                                                    (let ((_%tl145013145093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145011145088%_)))
                                                          (_%hd145012145091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145011145088%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145013145093%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145007145077%_))
                      (let ((_%e145014145096%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145007145077%_))))
                        (let ((_%tl145016145101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145014145096%_)))
                              (_%hd145015145099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145014145096%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145015145099%_))
                              (let ((_%e145017145104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145015145099%_))))
                                (let ((_%tl145019145109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145017145104%_)))
                                      (_%hd145018145107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145017145104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145018145107%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145018145107%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145019145109%_))
                                              (let ((_%e145020145112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145019145109%_))))
                                                (let ((_%tl145022145117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145020145112%_)))
                                                      (_%hd145021145115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145020145112%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145022145117%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145016145101%_))
                                                          (let ((_%e145023145120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145016145101%_))))
                    (let ((_%tl145025145125%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145023145120%_)))
                          (_%hd145024145123%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145023145120%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd145024145123%_))
                          (let ((_%e145026145128%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd145024145123%_))))
                            (let ((_%tl145028145133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145026145128%_)))
                                  (_%hd145027145131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145026145128%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd145027145131%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd145027145131%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145028145133%_))
                                          (let ((_%e145029145136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145028145133%_))))
                                            (let ((_%tl145031145141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145029145136%_)))
                                                  (_%hd145030145139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145029145136%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145031145141%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145025145125%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145001145061%_))
                                                          (_%__match147337147338%_
                                                           _%e144884145449%_
                                                           _%hd144885145452%_
                                                           _%tl144886145454%_
                                                           _%e144999145056%_
                                                           _%hd145000145059%_
                                                           _%tl145001145061%_
                                                           _%e145002145064%_
                                                           _%hd145003145067%_
                                                           _%tl145004145069%_
                                                           _%e145005145072%_
                                                           _%hd145006145075%_
                                                           _%tl145007145077%_
                                                           _%e145008145080%_
                                                           _%hd145009145083%_
                                                           _%tl145010145085%_
                                                           _%e145011145088%_
                                                           _%hd145012145091%_
                                                           _%tl145013145093%_
                                                           _%e145014145096%_
                                                           _%hd145015145099%_
                                                           _%tl145016145101%_
                                                           _%e145017145104%_
                                                           _%hd145018145107%_
                                                           _%tl145019145109%_
                                                           _%e145020145112%_
                                                           _%hd145021145115%_
                                                           _%tl145022145117%_
                                                           _%e145023145120%_
                                                           _%hd145024145123%_
                                                           _%tl145025145125%_
                                                           _%e145026145128%_
                                                           _%hd145027145131%_
                                                           _%tl145028145133%_
                                                           _%e145029145136%_
                                                           _%hd145030145139%_
                                                           _%tl145031145141%_)
                                                          (_%__kont147212147213%_))
                                                      (_%__kont147212147213%_))
                                                  (_%__kont147212147213%_))))
                                          (_%__kont147212147213%_))
                                      (_%__kont147212147213%_))
                                  (_%__kont147212147213%_))))
                          (_%__kont147212147213%_))))
                  (_%__kont147212147213%_))
              (_%__kont147212147213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147212147213%_))
                                          (_%__kont147212147213%_))
                                      (_%__kont147212147213%_))))
                              (_%__kont147212147213%_))))
                      (_%__kont147212147213%_))
                  (_%__kont147212147213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147212147213%_))
                                              (_%__kont147212147213%_))
                                          (_%__kont147212147213%_))))
                                  (_%__kont147212147213%_))))
                          (_%__kont147212147213%_))
                      (_%__kont147212147213%_))
                  (_%__kont147212147213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147212147213%_))))
                                          (_%__kont147212147213%_)))))
                              (_%__kont147212147213%_)))))))
                 (_%dispatch-case-e144184%_
                  (lambda (_%hd144335%_ _%body144336%_)
                    (let* ((_%form144338%_
                            (cons _%hd144335%_ (cons _%body144336%_ '())))
                           (_%__stx147340147341%_ _%form144338%_)
                           (_%g144342144466%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147340147341%_)))))
                      (let ((_%__kont147342147343%_
                             (lambda (_%L144837%_ _%L144838%_ _%L144839%_)
                               (let ((__tmp148506
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L144838%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144180%_
                                  __tmp148506))))
                            (_%__kont147348147349%_
                             (lambda (_%L144685%_
                                      _%L144686%_
                                      _%L144687%_
                                      _%L144688%_)
                               (let ((__tmp148507
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L144685%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144180%_
                                  __tmp148507))))
                            (_%__kont147352147353%_
                             (lambda (_%L144551%_ _%L144552%_ _%L144553%_)
                               (let ((__tmp148508
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L144551%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144180%_
                                  __tmp148508)))))
                        (let* ((_%__match147449147450%_
                                (lambda (_%e144432144471%_
                                         _%hd144433144474%_
                                         _%tl144434144476%_
                                         _%e144435144479%_
                                         _%hd144436144482%_
                                         _%tl144437144484%_
                                         _%e144438144487%_
                                         _%hd144439144490%_
                                         _%tl144440144492%_
                                         _%e144441144495%_
                                         _%hd144442144498%_
                                         _%tl144443144500%_
                                         _%e144444144503%_
                                         _%hd144445144506%_
                                         _%tl144446144508%_
                                         _%e144447144511%_
                                         _%hd144448144514%_
                                         _%tl144449144516%_
                                         _%e144450144519%_
                                         _%hd144451144522%_
                                         _%tl144452144524%_
                                         _%e144453144527%_
                                         _%hd144454144530%_
                                         _%tl144455144532%_
                                         _%e144456144535%_
                                         _%hd144457144538%_
                                         _%tl144458144540%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144452144524%_))
                                      (let ((_%e144459144543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144452144524%_))))
                                        (let ((_%tl144461144548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144459144543%_)))
                                              (_%hd144460144546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144459144543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144461144548%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl144437144484%_))
                                                  (_%__kont147352147353%_
                                                   _%hd144457144538%_
                                                   _%hd144448144514%_
                                                   _%hd144433144474%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144342144466%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144342144466%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144342144466%_)))))
                               (_%__match147379147380%_
                                (lambda (_%e144393144589%_
                                         _%hd144394144592%_
                                         _%tl144395144594%_
                                         _%__splice147350147351%_
                                         _%target144396144597%_
                                         _%tl144398144599%_)
                                  (letrec ((_%loop144399144602%_
                                            (lambda (_%hd144397144605%_
                                                     _%arg144403144607%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144397144605%_))
                                                  (let ((_%e144400144610%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144397144605%_))))
                                                    (let ((_%lp-tl144402144615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144400144610%_)))
                                                          (_%lp-hd144401144613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144400144610%_))))
                                                      (_%loop144399144602%_
                                                       _%lp-tl144402144615%_
                                                       (cons _%lp-hd144401144613%_
                                                             _%arg144403144607%_))))
                                                  (let ((_%arg144404144618%_
                                                         (reverse _%arg144403144607%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144395144594%_))
                                                        (let ((_%e144405144621%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144395144594%_))))
                  (let ((_%tl144407144626%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144405144621%_)))
                        (_%hd144406144624%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144405144621%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144406144624%_))
                        (let ((_%e144408144629%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144406144624%_))))
                          (let ((_%tl144410144634%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144408144629%_)))
                                (_%hd144409144632%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144408144629%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144409144632%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144409144632%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144410144634%_))
                                        (let ((_%e144411144637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144410144634%_))))
                                          (let ((_%tl144413144642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144411144637%_)))
                                                (_%hd144412144640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144411144637%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144412144640%_))
                                                (let ((_%e144414144645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144412144640%_))))
                                                  (let ((_%tl144416144650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144414144645%_)))
                                                        (_%hd144415144648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144414144645%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144415144648%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144415144648%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144416144650%_))
                        (let ((_%e144417144653%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144416144650%_))))
                          (let ((_%tl144419144658%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144417144653%_)))
                                (_%hd144418144656%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144417144653%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144419144658%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl144413144642%_))
                                    (let ((_%e144420144661%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl144413144642%_))))
                                      (let ((_%tl144422144666%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144420144661%_)))
                                            (_%hd144421144664%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144420144661%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd144421144664%_))
                                            (let ((_%e144423144669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd144421144664%_))))
                                              (let ((_%tl144425144674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144423144669%_)))
                                                    (_%hd144424144672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144423144669%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd144424144672%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd144424144672%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144425144674%_))
                                                            (let ((_%e144426144677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144425144674%_))))
                      (let ((_%tl144428144682%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144426144677%_)))
                            (_%hd144427144680%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144426144677%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144428144682%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144407144626%_))
                                (_%__kont147348147349%_
                                 _%hd144427144680%_
                                 _%hd144418144656%_
                                 _%tl144398144599%_
                                 _%arg144404144618%_)
                                (_%__match147449147450%_
                                 _%e144393144589%_
                                 _%hd144394144592%_
                                 _%tl144395144594%_
                                 _%e144405144621%_
                                 _%hd144406144624%_
                                 _%tl144407144626%_
                                 _%e144408144629%_
                                 _%hd144409144632%_
                                 _%tl144410144634%_
                                 _%e144411144637%_
                                 _%hd144412144640%_
                                 _%tl144413144642%_
                                 _%e144414144645%_
                                 _%hd144415144648%_
                                 _%tl144416144650%_
                                 _%e144417144653%_
                                 _%hd144418144656%_
                                 _%tl144419144658%_
                                 _%e144420144661%_
                                 _%hd144421144664%_
                                 _%tl144422144666%_
                                 _%e144423144669%_
                                 _%hd144424144672%_
                                 _%tl144425144674%_
                                 _%e144426144677%_
                                 _%hd144427144680%_
                                 _%tl144428144682%_))
                            (let ()
                              (declare (not safe))
                              (_%g144342144466%_)))))
                    (let () (declare (not safe)) (_%g144342144466%_)))
                (let () (declare (not safe)) (_%g144342144466%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144342144466%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144342144466%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144342144466%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144342144466%_)))))
                        (let () (declare (not safe)) (_%g144342144466%_)))
                    (let () (declare (not safe)) (_%g144342144466%_)))
                (let () (declare (not safe)) (_%g144342144466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g144342144466%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144342144466%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144342144466%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144342144466%_)))))
                        (let () (declare (not safe)) (_%g144342144466%_)))))
                (let () (declare (not safe)) (_%g144342144466%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144399144602%_
                                     _%target144396144597%_
                                     '()))))
                               (_%__match147367147368%_
                                (lambda (_%e144347144725%_
                                         _%hd144348144728%_
                                         _%tl144349144730%_
                                         _%__splice147344147345%_
                                         _%target144350144733%_
                                         _%tl144352144735%_)
                                  (letrec ((_%loop144353144738%_
                                            (lambda (_%hd144351144741%_
                                                     _%arg144357144743%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144351144741%_))
                                                  (let ((_%e144354144746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144351144741%_))))
                                                    (let ((_%lp-tl144356144751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144354144746%_)))
                                                          (_%lp-hd144355144749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144354144746%_))))
                                                      (_%loop144353144738%_
                                                       _%lp-tl144356144751%_
                                                       (cons _%lp-hd144355144749%_
                                                             _%arg144357144743%_))))
                                                  (let ((_%arg144358144754%_
                                                         (reverse _%arg144357144743%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144349144730%_))
                                                        (let ((_%e144359144757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144349144730%_))))
                  (let ((_%tl144361144762%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144359144757%_)))
                        (_%hd144360144760%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144359144757%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144360144760%_))
                        (let ((_%e144362144765%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144360144760%_))))
                          (let ((_%tl144364144770%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144362144765%_)))
                                (_%hd144363144768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144362144765%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144363144768%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144363144768%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144364144770%_))
                                        (let ((_%e144365144773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144364144770%_))))
                                          (let ((_%tl144367144778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144365144773%_)))
                                                (_%hd144366144776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144365144773%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144366144776%_))
                                                (let ((_%e144368144781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144366144776%_))))
                                                  (let ((_%tl144370144786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144368144781%_)))
                                                        (_%hd144369144784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144368144781%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144369144784%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144369144784%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144370144786%_))
                        (let ((_%e144371144789%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144370144786%_))))
                          (let ((_%tl144373144794%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144371144789%_)))
                                (_%hd144372144792%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144371144789%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144373144794%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl144367144778%_))
                                    (let ((_%__splice147346147347%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144367144778%_
                                              '0))))
                                      (let ((_%tl144376144799%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147346147347%_
                                                '1)))
                                            (_%target144374144797%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147346147347%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl144376144799%_))
                                            (letrec ((_%loop144377144802%_
                                                      (lambda (_%hd144375144805%_
                                                               _%xarg144381144807%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd144375144805%_))
                                                            (let ((_%e144378144810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd144375144805%_))))
                      (let ((_%lp-tl144380144815%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144378144810%_)))
                            (_%lp-hd144379144813%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144378144810%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd144379144813%_))
                            (let ((_%e144383144818%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd144379144813%_))))
                              (let ((_%tl144385144823%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144383144818%_)))
                                    (_%hd144384144821%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144383144818%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144384144821%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd144384144821%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144385144823%_))
                                            (let ((_%e144386144826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144385144823%_))))
                                              (let ((_%tl144388144831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144386144826%_)))
                                                    (_%hd144387144829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144386144826%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144388144831%_))
                                                    (_%loop144377144802%_
                                                     _%lp-tl144380144815%_
                                                     (cons _%hd144387144829%_
                                                           _%xarg144381144807%_))
                                                    (_%__match147379147380%_
                                                     _%e144347144725%_
                                                     _%hd144348144728%_
                                                     _%tl144349144730%_
                                                     _%__splice147344147345%_
                                                     _%target144350144733%_
                                                     _%tl144352144735%_))))
                                            (_%__match147379147380%_
                                             _%e144347144725%_
                                             _%hd144348144728%_
                                             _%tl144349144730%_
                                             _%__splice147344147345%_
                                             _%target144350144733%_
                                             _%tl144352144735%_))
                                        (_%__match147379147380%_
                                         _%e144347144725%_
                                         _%hd144348144728%_
                                         _%tl144349144730%_
                                         _%__splice147344147345%_
                                         _%target144350144733%_
                                         _%tl144352144735%_))
                                    (_%__match147379147380%_
                                     _%e144347144725%_
                                     _%hd144348144728%_
                                     _%tl144349144730%_
                                     _%__splice147344147345%_
                                     _%target144350144733%_
                                     _%tl144352144735%_))))
                            (_%__match147379147380%_
                             _%e144347144725%_
                             _%hd144348144728%_
                             _%tl144349144730%_
                             _%__splice147344147345%_
                             _%target144350144733%_
                             _%tl144352144735%_))))
                    (let ((_%xarg144382144834%_
                           (reverse _%xarg144381144807%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144361144762%_))
                          (_%__kont147342147343%_
                           _%xarg144382144834%_
                           _%hd144372144792%_
                           _%arg144358144754%_)
                          (_%__match147379147380%_
                           _%e144347144725%_
                           _%hd144348144728%_
                           _%tl144349144730%_
                           _%__splice147344147345%_
                           _%target144350144733%_
                           _%tl144352144735%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop144377144802%_
                                               _%target144374144797%_
                                               '()))
                                            (_%__match147379147380%_
                                             _%e144347144725%_
                                             _%hd144348144728%_
                                             _%tl144349144730%_
                                             _%__splice147344147345%_
                                             _%target144350144733%_
                                             _%tl144352144735%_))))
                                    (_%__match147379147380%_
                                     _%e144347144725%_
                                     _%hd144348144728%_
                                     _%tl144349144730%_
                                     _%__splice147344147345%_
                                     _%target144350144733%_
                                     _%tl144352144735%_))
                                (_%__match147379147380%_
                                 _%e144347144725%_
                                 _%hd144348144728%_
                                 _%tl144349144730%_
                                 _%__splice147344147345%_
                                 _%target144350144733%_
                                 _%tl144352144735%_))))
                        (_%__match147379147380%_
                         _%e144347144725%_
                         _%hd144348144728%_
                         _%tl144349144730%_
                         _%__splice147344147345%_
                         _%target144350144733%_
                         _%tl144352144735%_))
                    (_%__match147379147380%_
                     _%e144347144725%_
                     _%hd144348144728%_
                     _%tl144349144730%_
                     _%__splice147344147345%_
                     _%target144350144733%_
                     _%tl144352144735%_))
                (_%__match147379147380%_
                 _%e144347144725%_
                 _%hd144348144728%_
                 _%tl144349144730%_
                 _%__splice147344147345%_
                 _%target144350144733%_
                 _%tl144352144735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147379147380%_
                                                 _%e144347144725%_
                                                 _%hd144348144728%_
                                                 _%tl144349144730%_
                                                 _%__splice147344147345%_
                                                 _%target144350144733%_
                                                 _%tl144352144735%_))))
                                        (_%__match147379147380%_
                                         _%e144347144725%_
                                         _%hd144348144728%_
                                         _%tl144349144730%_
                                         _%__splice147344147345%_
                                         _%target144350144733%_
                                         _%tl144352144735%_))
                                    (_%__match147379147380%_
                                     _%e144347144725%_
                                     _%hd144348144728%_
                                     _%tl144349144730%_
                                     _%__splice147344147345%_
                                     _%target144350144733%_
                                     _%tl144352144735%_))
                                (_%__match147379147380%_
                                 _%e144347144725%_
                                 _%hd144348144728%_
                                 _%tl144349144730%_
                                 _%__splice147344147345%_
                                 _%target144350144733%_
                                 _%tl144352144735%_))))
                        (_%__match147379147380%_
                         _%e144347144725%_
                         _%hd144348144728%_
                         _%tl144349144730%_
                         _%__splice147344147345%_
                         _%target144350144733%_
                         _%tl144352144735%_))))
                (_%__match147379147380%_
                 _%e144347144725%_
                 _%hd144348144728%_
                 _%tl144349144730%_
                 _%__splice147344147345%_
                 _%target144350144733%_
                 _%tl144352144735%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144353144738%_
                                     _%target144350144733%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147340147341%_))
                              (let ((_%e144347144725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147340147341%_))))
                                (let ((_%tl144349144730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144347144725%_)))
                                      (_%hd144348144728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144347144725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144348144728%_))
                                      (let ((_%__splice147344147345%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144348144728%_
                                                '0))))
                                        (let ((_%tl144352144735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147344147345%_
                                                  '1)))
                                              (_%target144350144733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147344147345%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144352144735%_))
                                              (_%__match147367147368%_
                                               _%e144347144725%_
                                               _%hd144348144728%_
                                               _%tl144349144730%_
                                               _%__splice147344147345%_
                                               _%target144350144733%_
                                               _%tl144352144735%_)
                                              (_%__match147379147380%_
                                               _%e144347144725%_
                                               _%hd144348144728%_
                                               _%tl144349144730%_
                                               _%__splice147344147345%_
                                               _%target144350144733%_
                                               _%tl144352144735%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144349144730%_))
                                          (let ((_%e144435144479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144349144730%_))))
                                            (let ((_%tl144437144484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144435144479%_)))
                                                  (_%hd144436144482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144435144479%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144436144482%_))
                                                  (let ((_%e144438144487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144436144482%_))))
                                                    (let ((_%tl144440144492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144438144487%_)))
                                                          (_%hd144439144490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144438144487%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd144439144490%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd144439144490%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144440144492%_))
                          (let ((_%e144441144495%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144440144492%_))))
                            (let ((_%tl144443144500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144441144495%_)))
                                  (_%hd144442144498%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144441144495%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd144442144498%_))
                                  (let ((_%e144444144503%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd144442144498%_))))
                                    (let ((_%tl144446144508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144444144503%_)))
                                          (_%hd144445144506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144444144503%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd144445144506%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd144445144506%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl144446144508%_))
                                                  (let ((_%e144447144511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl144446144508%_))))
                                                    (let ((_%tl144449144516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144447144511%_)))
                                                          (_%hd144448144514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144447144511%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144449144516%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144443144500%_))
                      (let ((_%e144450144519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144443144500%_))))
                        (let ((_%tl144452144524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144450144519%_)))
                              (_%hd144451144522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144450144519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd144451144522%_))
                              (let ((_%e144453144527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd144451144522%_))))
                                (let ((_%tl144455144532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144453144527%_)))
                                      (_%hd144454144530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144453144527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd144454144530%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd144454144530%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144455144532%_))
                                              (let ((_%e144456144535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl144455144532%_))))
                                                (let ((_%tl144458144540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144456144535%_)))
                                                      (_%hd144457144538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144456144535%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144458144540%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl144452144524%_))
                                                          (let ((_%e144459144543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl144452144524%_))))
                    (let ((_%tl144461144548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144459144543%_)))
                          (_%hd144460144546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144459144543%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144461144548%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl144437144484%_))
                              (_%__kont147352147353%_
                               _%hd144457144538%_
                               _%hd144448144514%_
                               _%hd144348144728%_)
                              (let ()
                                (declare (not safe))
                                (_%g144342144466%_)))
                          (let () (declare (not safe)) (_%g144342144466%_)))))
                  (let () (declare (not safe)) (_%g144342144466%_)))
              (let () (declare (not safe)) (_%g144342144466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144342144466%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144342144466%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144342144466%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144342144466%_)))))
                      (let () (declare (not safe)) (_%g144342144466%_)))
                  (let () (declare (not safe)) (_%g144342144466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144342144466%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144342144466%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144342144466%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g144342144466%_)))))
                          (let () (declare (not safe)) (_%g144342144466%_)))
                      (let () (declare (not safe)) (_%g144342144466%_)))
                  (let () (declare (not safe)) (_%g144342144466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144342144466%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144342144466%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g144342144466%_))))))))
                 (_%generate1144185%_
                  (lambda (_%args144320%_
                           _%arglen144321%_
                           _%hd144322%_
                           _%body144323%_)
                    (let* ((_%len144325%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd144322%_)))
                           (_%condition144330%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd144322%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen144321%_
                                                (cons _%len144325%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen144321%_ (cons _%len144325%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len144325%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen144321%_
                                                    (cons _%len144325%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen144321%_ (cons _%len144325%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch144332%_
                            (if (_%dispatch-case?144183%_
                                 _%hd144322%_
                                 _%body144323%_)
                                (_%dispatch-case-e144184%_
                                 _%hd144322%_
                                 _%body144323%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self144180%_
                                 _%hd144322%_
                                 _%body144323%_))))
                      (cons _%condition144330%_
                            (cons (cons 'apply
                                        (cons _%dispatch144332%_
                                              (cons _%args144320%_ '())))
                                  '()))))))
          (let* ((_%g144187144215%_
                  (lambda (_%g144188144212%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144188144212%_))))
                 (_%g144186144317%_
                  (lambda (_%g144188144218%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144188144218%_))
                        (let ((_%e144191144220%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144188144218%_))))
                          (let ((_%hd144192144223%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144191144220%_)))
                                (_%tl144193144225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144191144220%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144193144225%_))
                                (let ((_g148509_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl144193144225%_
                                          '0))))
                                  (begin
                                    (let ((_g148510_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g148509_)
                                                 (##vector-length _g148509_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g148510_ 2)))
                                          (error "Context expects 2 values"
                                                 _g148510_)))
                                    (let ((_%target144194144228%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g148509_ 0)))
                                          (_%tl144196144230%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g148509_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144196144230%_))
                                          (letrec ((_%loop144197144233%_
                                                    (lambda (_%hd144195144236%_
                                                             _%body144201144238%_
                                                             _%hd144202144240%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd144195144236%_))
                                                          (let ((_%e144198144243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd144195144236%_))))
                    (let ((_%lp-hd144199144246%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144198144243%_)))
                          (_%lp-tl144200144248%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144198144243%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd144199144246%_))
                          (let ((_%e144205144251%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd144199144246%_))))
                            (let ((_%hd144206144254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144205144251%_)))
                                  (_%tl144207144256%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144205144251%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144207144256%_))
                                  (let ((_%e144208144259%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144207144256%_))))
                                    (let ((_%hd144209144262%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144208144259%_)))
                                          (_%tl144210144264%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144208144259%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144210144264%_))
                                          (_%loop144197144233%_
                                           _%lp-tl144200144248%_
                                           (cons _%hd144209144262%_
                                                 _%body144201144238%_)
                                           (cons _%hd144206144254%_
                                                 _%hd144202144240%_))
                                          (_%g144187144215%_
                                           _%g144188144218%_))))
                                  (_%g144187144215%_ _%g144188144218%_))))
                          (_%g144187144215%_ _%g144188144218%_))))
                  (let ((_%body144203144267%_ (reverse _%body144201144238%_))
                        (_%hd144204144269%_ (reverse _%hd144202144240%_)))
                    ((lambda (_%L144272%_ _%L144273%_)
                       (let ((_%args144292%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen144293%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name144294%_
                              (let ((_%$e144289%_
                                     (let ((__tmp148511
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp148511 _%stx144181%_))))
                                (if _%$e144289%_
                                    _%$e144289%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args144292%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen144293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args144292%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args144292%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp148515
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name144294%_
                                                                (cons _%args144292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp148512
                                  (map (lambda (_%g144295144298%_
                                                _%g144296144300%_)
                                         (_%generate1144185%_
                                          _%args144292%_
                                          _%arglen144293%_
                                          _%g144295144298%_
                                          _%g144296144300%_))
                                       (let ((__tmp148513
                                              (lambda (_%g144302144305%_
                                                       _%g144303144307%_)
                                                (cons _%g144302144305%_
                                                      _%g144303144307%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp148513
                                          '()
                                          _%L144273%_))
                                       (let ((__tmp148514
                                              (lambda (_%g144309144312%_
                                                       _%g144310144314%_)
                                                (cons _%g144309144312%_
                                                      _%g144310144314%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp148514
                                          '()
                                          _%L144272%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp148515 __tmp148512)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body144203144267%_
                     _%hd144204144269%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop144197144233%_
                                             _%target144194144228%_
                                             '()
                                             '()))
                                          (_%g144187144215%_
                                           _%g144188144218%_)))))
                                (_%g144187144215%_ _%g144188144218%_))))
                        (_%g144187144215%_ _%g144188144218%_)))))
            (_%g144186144317%_ _%stx144181%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self143417%_ _%stx143418%_ _%compiled-body?143419%_)
        (letrec ((_%generate-simple143421%_
                  (lambda (_%hd144165%_ _%body144166%_)
                    (_%coalesce-boolean143422%_
                     (_%simplify-let143423%_
                      (gxc#generate-runtime-simple-let
                       _%self143417%_
                       'let
                       _%hd144165%_
                       _%body144166%_
                       _%compiled-body?143419%_)))))
                 (_%coalesce-boolean143422%_
                  (lambda (_%code144026%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code144027144053%_ _%code144026%_)
                               (_%else144029144061%_
                                (lambda () _%code144026%_))
                               (_%K144031144098%_
                                (lambda (_%expr2144064%_
                                         _%expr1144065%_
                                         _%id144066%_)
                                  (let* ((_%expr2144067144075%_
                                          _%expr2144064%_)
                                         (_%else144069144083%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1144065%_
                                                        (cons _%expr2144064%_
                                                              '())))))
                                         (_%K144071144088%_
                                          (lambda (_%exprs144086%_)
                                            (cons 'or
                                                  (cons _%expr1144065%_
                                                        _%exprs144086%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2144067144075%_))
                                        (let ((_%hd144072144091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2144067144075%_)))
                                              (_%tl144073144093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2144067144075%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144072144091%_ 'or))
                                              (let ((_%exprs144096%_
                                                     _%tl144073144093%_))
                                                (_%K144071144088%_
                                                 _%exprs144096%_))
                                              (_%else144069144083%_)))
                                        (_%else144069144083%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code144027144053%_))
                              (let ((_%hd144032144101%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code144027144053%_)))
                                    (_%tl144033144103%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code144027144053%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd144032144101%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl144033144103%_))
                                        (let ((_%hd144034144106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl144033144103%_)))
                                              (_%tl144035144108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl144033144103%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd144034144106%_))
                                              (let ((_%hd144046144111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd144034144106%_)))
                                                    (_%tl144047144113%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd144034144106%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd144046144111%_))
                                                    (let ((_%hd144048144116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd144046144111%_)))
                                                          (_%tl144049144118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd144046144111%_))))
                                                      (let ((_%id144121%_
                                                             _%hd144048144116%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl144049144118%_))
                                                            (let ((_%hd144050144123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl144049144118%_)))
                          (_%tl144051144125%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144049144118%_))))
                      (let ((_%expr1144128%_ _%hd144050144123%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl144051144125%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl144047144113%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl144035144108%_))
                                    (let ((_%hd144036144130%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl144035144108%_)))
                                          (_%tl144037144132%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl144035144108%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd144036144130%_))
                                          (let ((_%hd144038144135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd144036144130%_)))
                                                (_%tl144039144137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd144036144130%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd144038144135%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl144039144137%_))
                                                    (let ((_%hd144040144140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl144039144137%_)))
                                                          (_%tl144041144142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl144039144137%_))))
                                                      (if ((lambda (_%g144144144146%_)
                                                             (eq? _%g144144144146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id144121%_))
                   _%hd144040144140%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl144041144142%_))
                      (let ((_%hd144042144149%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl144041144142%_)))
                            (_%tl144043144151%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl144041144142%_))))
                        (if ((lambda (_%g144153144155%_)
                               (eq? _%g144153144155%_ _%id144121%_))
                             _%hd144042144149%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl144043144151%_))
                                (let ((_%hd144044144158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144043144151%_)))
                                      (_%tl144045144160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144043144151%_))))
                                  (let ((_%expr2144163%_ _%hd144044144158%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl144045144160%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl144037144132%_))
                                            (_%K144031144098%_
                                             _%expr2144163%_
                                             _%expr1144128%_
                                             _%id144121%_)
                                            (_%else144029144061%_))
                                        (_%else144029144061%_))))
                                (_%else144029144061%_))
                            (_%else144029144061%_)))
                      (_%else144029144061%_))
                  (_%else144029144061%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144029144061%_))
                                                (_%else144029144061%_)))
                                          (_%else144029144061%_)))
                                    (_%else144029144061%_))
                                (_%else144029144061%_))
                            (_%else144029144061%_))))
                    (_%else144029144061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144029144061%_)))
                                              (_%else144029144061%_)))
                                        (_%else144029144061%_))
                                    (_%else144029144061%_)))
                              (_%else144029144061%_)))
                        _%code144026%_)))
                 (_%simplify-let143423%_
                  (lambda (_%code143725%_)
                    (let* ((_%code143726143798%_ _%code143725%_)
                           (_%else143731143806%_ (lambda () _%code143725%_)))
                      (let ((_%K143790144006%_
                             (lambda (_%expr144004%_) _%expr144004%_))
                            (_%K143773143952%_
                             (lambda (_%body143948%_
                                      _%expr143949%_
                                      _%id143950%_)
                               (cons 'let
                                     (cons (cons (cons _%id143950%_
                                                       (cons _%expr143949%_
                                                             '()))
                                                 '())
                                           _%body143948%_))))
                            (_%K143750143876%_
                             (lambda (_%body143870%_
                                      _%expr2143871%_
                                      _%id2143872%_
                                      _%expr1143873%_
                                      _%id1143874%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1143874%_
                                                       (cons _%expr1143873%_
                                                             '()))
                                                 (cons (cons _%id2143872%_
                                                             (cons _%expr2143871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body143870%_))))
                            (_%K143733143815%_
                             (lambda (_%body143810%_
                                      _%bind143811%_
                                      _%expr1143812%_
                                      _%id1143813%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1143813%_
                                                       (cons _%expr1143812%_
                                                             '()))
                                                 _%bind143811%_)
                                           _%body143810%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code143726143798%_))
                            (let ((_%tl143792144011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code143726143798%_)))
                                  (_%hd143791144009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code143726143798%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143791144009%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl143792144011%_))
                                      (let ((_%tl143794144016%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl143792144011%_)))
                                            (_%hd143793144014%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl143792144011%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd143793144014%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl143794144016%_))
                                                (let ((_%tl143796144021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl143794144016%_)))
                                                      (_%hd143795144019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl143794144016%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl143796144021%_))
                                                      (let ((_%expr144024%_
                                                             _%hd143795144019%_))
                                                        (_%K143790144006%_
                                                         _%expr144024%_))
                                                      (_%else143731143806%_)))
                                                (_%else143731143806%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd143793144014%_))
                                                (let ((_%tl143785143967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd143793144014%_)))
                                                      (_%hd143784143965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd143793144014%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd143784143965%_))
                                                      (let ((_%tl143787143972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd143784143965%_)))
                    (_%hd143786143970%_
                     (let () (declare (not safe)) (##car _%hd143784143965%_))))
                (if (let () (declare (not safe)) (##pair? _%tl143787143972%_))
                    (let ((_%tl143789143979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl143787143972%_)))
                          (_%hd143788143977%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl143787143972%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl143789143979%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl143785143967%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl143794144016%_))
                                  (let ((_%tl143779143986%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl143794144016%_)))
                                        (_%hd143778143984%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl143794144016%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd143778143984%_))
                                        (let ((_%tl143781143991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd143778143984%_)))
                                              (_%hd143780143989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd143778143984%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd143780143989%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl143781143991%_))
                                                  (let ((_%tl143783143996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl143781143991%_)))
                                                        (_%hd143782143994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl143781143991%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd143782143994%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl143779143986%_))
                                                            (let ((_%id143975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd143786143970%_)
                          (_%expr143982%_ _%hd143788143977%_)
                          (_%body143999%_ _%tl143783143996%_))
                      (_%K143773143952%_
                       _%body143999%_
                       _%expr143982%_
                       _%id143975%_))
                    (_%else143731143806%_))
                (if (let () (declare (not safe)) (##pair? _%hd143782143994%_))
                    (let ((_%tl143762143925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd143782143994%_)))
                          (_%hd143761143923%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd143782143994%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd143761143923%_))
                          (let ((_%tl143764143930%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd143761143923%_)))
                                (_%hd143763143928%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd143761143923%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl143764143930%_))
                                (let ((_%tl143766143937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl143764143930%_)))
                                      (_%hd143765143935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl143764143930%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl143766143937%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl143762143925%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl143779143986%_))
                                              (let ((_%id1143899%_
                                                     _%hd143786143970%_)
                                                    (_%expr1143906%_
                                                     _%hd143788143977%_)
                                                    (_%id2143933%_
                                                     _%hd143763143928%_)
                                                    (_%expr2143940%_
                                                     _%hd143765143935%_)
                                                    (_%body143942%_
                                                     _%tl143783143996%_))
                                                (_%K143750143876%_
                                                 _%body143942%_
                                                 _%expr2143940%_
                                                 _%id2143933%_
                                                 _%expr1143906%_
                                                 _%id1143899%_))
                                              (_%else143731143806%_))
                                          (_%else143731143806%_))
                                      (_%else143731143806%_)))
                                (_%else143731143806%_)))
                          (_%else143731143806%_)))
                    (_%else143731143806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else143731143806%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd143780143989%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl143781143991%_))
                                                      (let ((_%tl143743143859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl143781143991%_)))
                    (_%hd143742143857%_
                     (let () (declare (not safe)) (##car _%tl143781143991%_))))
                (if (let () (declare (not safe)) (##null? _%tl143779143986%_))
                    (let ((_%id1143838%_ _%hd143786143970%_)
                          (_%expr1143845%_ _%hd143788143977%_)
                          (_%bind143862%_ _%hd143742143857%_)
                          (_%body143864%_ _%tl143743143859%_))
                      (_%K143733143815%_
                       _%body143864%_
                       _%bind143862%_
                       _%expr1143845%_
                       _%id1143838%_))
                    (_%else143731143806%_)))
              (_%else143731143806%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else143731143806%_))))
                                        (_%else143731143806%_)))
                                  (_%else143731143806%_))
                              (_%else143731143806%_))
                          (_%else143731143806%_)))
                    (_%else143731143806%_)))
              (_%else143731143806%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else143731143806%_))))
                                      (_%else143731143806%_))
                                  (_%else143731143806%_)))
                            (_%else143731143806%_))))))
                 (_%generate-values143424%_
                  (lambda (_%hd143538%_ _%body143539%_)
                    (let _%lp143541%_ ((_%rest143543%_ _%hd143538%_)
                                       (_%bind143544%_ '())
                                       (_%check143545%_ '())
                                       (_%post143546%_ '()))
                      (let* ((_%__stx147669147670%_ _%rest143543%_)
                             (_%g143549143560%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx147669147670%_)))))
                        (let ((_%__kont147671147672%_
                               (lambda (_%L143587%_ _%L143588%_)
                                 (let* ((_%__stx147625147626%_ _%L143588%_)
                                        (_%g143603143628%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx147625147626%_)))))
                                   (let ((_%__kont147627147628%_
                                          (lambda (_%L143701%_ _%L143702%_)
                                            (let ((_%eid143716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L143702%_)))
                                                  (_%expr143717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143417%_
                                                      _%L143701%_))))
                                              (_%lp143541%_
                                               _%L143587%_
                                               (cons (cons _%eid143716%_
                                                           (cons _%expr143717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143544%_)
                                               _%check143545%_
                                               _%post143546%_))))
                                         (_%__kont147629147630%_
                                          (lambda (_%L143649%_ _%L143650%_)
                                            (let* ((_%vals143663%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values143665%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals143663%_
                                                     _%L143650%_
                                                     _%L143649%_))
                                                   (_%refs143667%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals143663%_
                                                     _%L143650%_))
                                                   (_%expr143669%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143417%_
                                                       _%L143649%_))))
                                              (_%lp143541%_
                                               _%L143587%_
                                               (cons (cons _%vals143663%_
                                                           (cons _%expr143669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143544%_)
                                               (cons _%check-values143665%_
                                                     _%check143545%_)
                                               (cons _%refs143667%_
                                                     _%post143546%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx147625147626%_))
                                         (let ((_%e143607143677%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx147625147626%_))))
                                           (let ((_%tl143609143682%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143607143677%_)))
                                                 (_%hd143608143680%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143607143677%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd143608143680%_))
                                                 (let ((_%e143610143685%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd143608143680%_))))
                                                   (let ((_%tl143612143690%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e143610143685%_)))
                                                         (_%hd143611143688%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e143610143685%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl143612143690%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143609143682%_))
                     (let ((_%e143613143693%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143609143682%_))))
                       (let ((_%tl143615143698%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143613143693%_)))
                             (_%hd143614143696%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143613143693%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143615143698%_))
                             (_%__kont147627147628%_
                              _%hd143614143696%_
                              _%hd143611143688%_)
                             (let ()
                               (declare (not safe))
                               (_%g143603143628%_)))))
                     (let () (declare (not safe)) (_%g143603143628%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl143609143682%_))
                     (let ((_%e143621143641%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143609143682%_))))
                       (let ((_%tl143623143646%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143621143641%_)))
                             (_%hd143622143644%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143621143641%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143623143646%_))
                             (_%__kont147629147630%_
                              _%hd143622143644%_
                              _%hd143608143680%_)
                             (let ()
                               (declare (not safe))
                               (_%g143603143628%_)))))
                     (let () (declare (not safe)) (_%g143603143628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl143609143682%_))
                                                     (let ((_%e143621143641%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl143609143682%_))))
                                                       (let ((_%tl143623143646%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e143621143641%_)))
                     (_%hd143622143644%_
                      (let () (declare (not safe)) (##car _%e143621143641%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl143623143646%_))
                     (_%__kont147629147630%_
                      _%hd143622143644%_
                      _%hd143608143680%_)
                     (let () (declare (not safe)) (_%g143603143628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g143603143628%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g143603143628%_)))))))
                              (_%__kont147673147674%_
                               (lambda ()
                                 (let* ((_%body143567%_
                                         (if _%compiled-body?143419%_
                                             _%body143539%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self143417%_
                                                _%body143539%_))))
                                        (_%body143569%_
                                         (_%generate-values-post143425%_
                                          _%post143546%_
                                          _%body143567%_))
                                        (_%body143571%_
                                         (_%generate-values-check143426%_
                                          _%check143545%_
                                          _%body143569%_)))
                                   (cons 'let
                                         (cons (reverse _%bind143544%_)
                                               (cons _%body143571%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147669147670%_))
                              (let ((_%e143553143579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147669147670%_))))
                                (let ((_%tl143555143584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143553143579%_)))
                                      (_%hd143554143582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143553143579%_))))
                                  (_%__kont147671147672%_
                                   _%tl143555143584%_
                                   _%hd143554143582%_)))
                              (_%__kont147673147674%_)))))))
                 (_%generate-values-post143425%_
                  (lambda (_%post143497%_ _%body143498%_)
                    (let _%lp143500%_ ((_%rest143502%_ _%post143497%_)
                                       (_%body143503%_ _%body143498%_))
                      (let* ((_%rest143504143512%_ _%rest143502%_)
                             (_%else143506143520%_ (lambda () _%body143503%_))
                             (_%K143508143526%_
                              (lambda (_%rest143523%_ _%bind143524%_)
                                (_%lp143500%_
                                 _%rest143523%_
                                 (cons 'let
                                       (cons _%bind143524%_
                                             (cons _%body143503%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143504143512%_))
                            (let ((_%hd143509143529%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143504143512%_)))
                                  (_%tl143510143531%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143504143512%_))))
                              (let* ((_%bind143534%_ _%hd143509143529%_)
                                     (_%rest143536%_ _%tl143510143531%_))
                                (_%K143508143526%_
                                 _%rest143536%_
                                 _%bind143534%_)))
                            (_%else143506143520%_))))))
                 (_%generate-values-check143426%_
                  (lambda (_%check143494%_ _%body143495%_)
                    (cons 'begin
                          (let ((__tmp148517 (cons _%body143495%_ '()))
                                (__tmp148516 (reverse _%check143494%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp148517 __tmp148516))))))
          (let* ((_%g143428143445%_
                  (lambda (_%g143429143442%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143429143442%_))))
                 (_%g143427143491%_
                  (lambda (_%g143429143448%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143429143448%_))
                        (let ((_%e143432143450%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143429143448%_))))
                          (let ((_%hd143433143453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143432143450%_)))
                                (_%tl143434143455%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143432143450%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143434143455%_))
                                (let ((_%e143435143458%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143434143455%_))))
                                  (let ((_%hd143436143461%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143435143458%_)))
                                        (_%tl143437143463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143435143458%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143437143463%_))
                                        (let ((_%e143438143466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143437143463%_))))
                                          (let ((_%hd143439143469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143438143466%_)))
                                                (_%tl143440143471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143438143466%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143440143471%_))
                                                ((lambda (_%L143474%_
                                                          _%L143475%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143475%_)
                                                       (_%generate-simple143421%_
                                                        _%L143475%_
                                                        _%L143474%_)
                                                       (_%generate-values143424%_
                                                        _%L143475%_
                                                        _%L143474%_)))
                                                 _%hd143439143469%_
                                                 _%hd143436143461%_)
                                                (_%g143428143445%_
                                                 _%g143429143448%_))))
                                        (_%g143428143445%_
                                         _%g143429143448%_))))
                                (_%g143428143445%_ _%g143429143448%_))))
                        (_%g143428143445%_ _%g143429143448%_)))))
            (_%g143427143491%_ _%stx143418%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self144171%_ _%stx144172%_)
        (let ((_%compiled-body?144174%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self144171%_
           _%stx144172%_
           _%compiled-body?144174%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g148519_
        (let ((_g148518_ (let () (declare (not safe)) (##length _g148519_))))
          (cond ((let () (declare (not safe)) (##fx= _g148518_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g148519_))
                ((let () (declare (not safe)) (##fx= _g148518_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g148519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g148519_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals143311%_ _%hd143312%_)
        (let _%lp143314%_ ((_%rest143316%_ _%hd143312%_)
                           (_%k143317%_ '0)
                           (_%r143318%_ '()))
          (let* ((_%__stx147683147684%_ _%rest143316%_)
                 (_%g143323143340%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx147683147684%_)))))
            (let ((_%__kont147685147686%_
                   (lambda (_%L143403%_)
                     (_%lp143314%_
                      _%L143403%_
                      (let () (declare (not safe)) (##fx+ _%k143317%_ '1))
                      _%r143318%_)))
                  (_%__kont147687147688%_
                   (lambda (_%L143376%_ _%L143377%_)
                     (_%lp143314%_
                      _%L143376%_
                      (let () (declare (not safe)) (##fx+ _%k143317%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L143377%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals143311%_
                                         _%k143317%_
                                         _%L143376%_)
                                        '()))
                            _%r143318%_))))
                  (_%__kont147689147690%_
                   (lambda (_%L143352%_)
                     (let ((__tmp148520
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L143352%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals143311%_
                                               _%k143317%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp148520 _%r143318%_))))
                  (_%__kont147691147692%_ (lambda () (reverse _%r143318%_))))
              (let ((_%g143321143363%_
                     (lambda ()
                       (let ((_%L143352%_ _%__stx147683147684%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L143352%_))
                             (_%__kont147689147690%_ _%L143352%_)
                             (_%__kont147691147692%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx147683147684%_))
                    (let ((_%e143326143392%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx147683147684%_))))
                      (let ((_%tl143328143397%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143326143392%_)))
                            (_%hd143327143395%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143326143392%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd143327143395%_))
                            (let ((_%e143329143400%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd143327143395%_))))
                              (if (equal? _%e143329143400%_ '#f)
                                  (_%__kont147685147686%_ _%tl143328143397%_)
                                  (_%__kont147687147688%_
                                   _%tl143328143397%_
                                   _%hd143327143395%_)))
                            (_%__kont147687147688%_
                             _%tl143328143397%_
                             _%hd143327143395%_))))
                    (let () (declare (not safe)) (_%g143321143363%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self142990%_ _%stx142991%_ _%compiled-body?142992%_)
        (letrec ((_%generate-simple142994%_
                  (lambda (_%hd143296%_ _%body143297%_)
                    (gxc#generate-runtime-simple-let
                     _%self142990%_
                     'letrec
                     _%hd143296%_
                     _%body143297%_
                     _%compiled-body?142992%_)))
                 (_%generate-values142995%_
                  (lambda (_%hd143075%_ _%body143076%_)
                    (let _%lp143078%_ ((_%rest143080%_ _%hd143075%_)
                                       (_%bind143081%_ '())
                                       (_%check143082%_ '())
                                       (_%post143083%_ '()))
                      (let* ((_%__stx147757147758%_ _%rest143080%_)
                             (_%g143086143097%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx147757147758%_)))))
                        (let ((_%__kont147759147760%_
                               (lambda (_%L143124%_ _%L143125%_)
                                 (let* ((_%__stx147713147714%_ _%L143125%_)
                                        (_%g143140143165%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx147713147714%_)))))
                                   (let ((_%__kont147715147716%_
                                          (lambda (_%L143272%_ _%L143273%_)
                                            (let ((_%eid143287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L143273%_)))
                                                  (_%expr143288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142990%_
                                                      _%L143272%_))))
                                              (_%lp143078%_
                                               _%L143124%_
                                               (cons (cons _%eid143287%_
                                                           (cons _%expr143288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143081%_)
                                               _%check143082%_
                                               _%post143083%_))))
                                         (_%__kont147717147718%_
                                          (lambda (_%L143186%_ _%L143187%_)
                                            (let* ((_%vals143200%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values143202%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals143200%_
                                                     _%L143187%_
                                                     _%L143186%_))
                                                   (_%refs143204%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals143200%_
                                                     _%L143187%_))
                                                   (_%expr143206%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142990%_
                                                       _%L143186%_))))
                                              (_%lp143078%_
                                               _%L143124%_
                                               (let ((__tmp148522
                                                      (cons (cons _%vals143200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr143206%_ '()))
                    _%bind143081%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp148521
                                                      (map (lambda (_%e143208143210%_)
                                                             (let* ((_%g143212143221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e143208143210%_)
                            (_%E143214143225%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g143212143221%_
                                        '([eid _])))
                               '#!void))
                            (_%K143215143230%_
                             (lambda (_%eid143228%_)
                               (cons _%eid143228%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g143212143221%_))
                           (let ((_%hd143216143233%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g143212143221%_)))
                                 (_%tl143217143235%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g143212143221%_))))
                             (let ((_%eid143238%_ _%hd143216143233%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl143217143235%_))
                                   (let ((_%tl143219143240%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl143217143235%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl143219143240%_))
                                         (_%K143215143230%_ _%eid143238%_)
                                         (_%E143214143225%_)))
                                   (_%E143214143225%_))))
                           (_%E143214143225%_))))
                   _%refs143204%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp148522
                                                  __tmp148521))
                                               (cons _%check-values143202%_
                                                     _%check143082%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs143204%_
                                                  _%post143083%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx147713147714%_))
                                         (let ((_%e143144143248%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx147713147714%_))))
                                           (let ((_%tl143146143253%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143144143248%_)))
                                                 (_%hd143145143251%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143144143248%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd143145143251%_))
                                                 (let ((_%e143147143256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd143145143251%_))))
                                                   (let ((_%tl143149143261%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e143147143256%_)))
                                                         (_%hd143148143259%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e143147143256%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl143149143261%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143146143253%_))
                     (let ((_%e143150143264%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143146143253%_))))
                       (let ((_%tl143152143269%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143150143264%_)))
                             (_%hd143151143267%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143150143264%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143152143269%_))
                             (_%__kont147715147716%_
                              _%hd143151143267%_
                              _%hd143148143259%_)
                             (let ()
                               (declare (not safe))
                               (_%g143140143165%_)))))
                     (let () (declare (not safe)) (_%g143140143165%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl143146143253%_))
                     (let ((_%e143158143178%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143146143253%_))))
                       (let ((_%tl143160143183%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143158143178%_)))
                             (_%hd143159143181%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143158143178%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143160143183%_))
                             (_%__kont147717147718%_
                              _%hd143159143181%_
                              _%hd143145143251%_)
                             (let ()
                               (declare (not safe))
                               (_%g143140143165%_)))))
                     (let () (declare (not safe)) (_%g143140143165%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl143146143253%_))
                                                     (let ((_%e143158143178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl143146143253%_))))
                                                       (let ((_%tl143160143183%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e143158143178%_)))
                     (_%hd143159143181%_
                      (let () (declare (not safe)) (##car _%e143158143178%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl143160143183%_))
                     (_%__kont147717147718%_
                      _%hd143159143181%_
                      _%hd143145143251%_)
                     (let () (declare (not safe)) (_%g143140143165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g143140143165%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g143140143165%_)))))))
                              (_%__kont147761147762%_
                               (lambda ()
                                 (let* ((_%body143104%_
                                         (if _%compiled-body?142992%_
                                             _%body143076%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142990%_
                                                _%body143076%_))))
                                        (_%body143106%_
                                         (_%generate-values-post142997%_
                                          _%post143083%_
                                          _%body143104%_))
                                        (_%body143108%_
                                         (_%generate-values-check142996%_
                                          _%check143082%_
                                          _%body143106%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind143081%_)
                                               (cons _%body143108%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147757147758%_))
                              (let ((_%e143090143116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147757147758%_))))
                                (let ((_%tl143092143121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143090143116%_)))
                                      (_%hd143091143119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143090143116%_))))
                                  (_%__kont147759147760%_
                                   _%tl143092143121%_
                                   _%hd143091143119%_)))
                              (_%__kont147761147762%_)))))))
                 (_%generate-values-check142996%_
                  (lambda (_%check143072%_ _%body143073%_)
                    (cons 'begin
                          (let ((__tmp148524 (cons _%body143073%_ '()))
                                (__tmp148523 (reverse _%check143072%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp148524 __tmp148523)))))
                 (_%generate-values-post142997%_
                  (lambda (_%post143065%_ _%body143066%_)
                    (cons 'begin
                          (let ((__tmp148528 (cons _%body143066%_ '()))
                                (__tmp148525
                                 (let ((__tmp148527
                                        (lambda (_%g143067143069%_)
                                          (cons 'set! _%g143067143069%_)))
                                       (__tmp148526 (reverse _%post143065%_)))
                                   (declare (not safe))
                                   (##map __tmp148527 __tmp148526))))
                            (declare (not safe))
                            (__foldr1 cons __tmp148528 __tmp148525))))))
          (let* ((_%g142999143016%_
                  (lambda (_%g143000143013%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143000143013%_))))
                 (_%g142998143062%_
                  (lambda (_%g143000143019%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143000143019%_))
                        (let ((_%e143003143021%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143000143019%_))))
                          (let ((_%hd143004143024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143003143021%_)))
                                (_%tl143005143026%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143003143021%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143005143026%_))
                                (let ((_%e143006143029%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143005143026%_))))
                                  (let ((_%hd143007143032%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143006143029%_)))
                                        (_%tl143008143034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143006143029%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143008143034%_))
                                        (let ((_%e143009143037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143008143034%_))))
                                          (let ((_%hd143010143040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143009143037%_)))
                                                (_%tl143011143042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143009143037%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143011143042%_))
                                                ((lambda (_%L143045%_
                                                          _%L143046%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143046%_)
                                                       (_%generate-simple142994%_
                                                        _%L143046%_
                                                        _%L143045%_)
                                                       (_%generate-values142995%_
                                                        _%L143046%_
                                                        _%L143045%_)))
                                                 _%hd143010143040%_
                                                 _%hd143007143032%_)
                                                (_%g142999143016%_
                                                 _%g143000143019%_))))
                                        (_%g142999143016%_
                                         _%g143000143019%_))))
                                (_%g142999143016%_ _%g143000143019%_))))
                        (_%g142999143016%_ _%g143000143019%_)))))
            (_%g142998143062%_ _%stx142991%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self143302%_ _%stx143303%_)
        (let ((_%compiled-body?143305%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self143302%_
           _%stx143303%_
           _%compiled-body?143305%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g148530_
        (let ((_g148529_ (let () (declare (not safe)) (##length _g148530_))))
          (cond ((let () (declare (not safe)) (##fx= _g148529_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g148530_))
                ((let () (declare (not safe)) (##fx= _g148529_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g148530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g148530_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self142571%_ _%stx142572%_)
        (letrec ((_%generate-values142574%_
                  (lambda (_%hd142817%_ _%body142818%_)
                    (let _%lp142820%_ ((_%rest142822%_ _%hd142817%_)
                                       (_%bind142823%_ '()))
                      (let* ((_%rest142824142832%_ _%rest142822%_)
                             (_%else142826142843%_
                              (lambda ()
                                (let ((_%bind142840%_ (reverse _%bind142823%_))
                                      (_%body142841%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self142571%_
                                          _%body142818%_))))
                                  (cons 'letrec*
                                        (cons _%bind142840%_
                                              (cons _%body142841%_ '()))))))
                             (_%K142828142977%_
                              (lambda (_%rest142846%_ _%hd-bind142847%_)
                                (let* ((_%__stx147771147772%_
                                        _%hd-bind142847%_)
                                       (_%g142850142875%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx147771147772%_)))))
                                  (let ((_%__kont147773147774%_
                                         (lambda (_%L142956%_ _%L142957%_)
                                           (let ((_%eid142971%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L142957%_)))
                                                 (_%expr142972%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self142571%_
                                                     _%L142956%_))))
                                             (_%lp142820%_
                                              _%rest142846%_
                                              (cons (cons _%eid142971%_
                                                          (cons _%expr142972%_
                                                                '()))
                                                    _%bind142823%_)))))
                                        (_%__kont147775147776%_
                                         (lambda (_%L142896%_ _%L142897%_)
                                           (let* ((_%vals142916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp142918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values142920%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp142918%_
                                                    _%L142897%_
                                                    _%L142896%_))
                                                  (_%refs142922%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals142916%_
                                                    _%L142897%_))
                                                  (_%expr142924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142571%_
                                                      _%L142896%_))))
                                             (_%lp142820%_
                                              _%rest142846%_
                                              (let ((__tmp148531
                                                     (cons (cons _%vals142916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp142918%_
                                                       (cons _%expr142924%_
                                                             '()))
                                                 '())
                                           (cons _%check-values142920%_
                                                 (cons _%tmp142918%_ '()))))
                               '()))
                   _%bind142823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp148531
                                                 _%refs142922%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147771147772%_))
                                        (let ((_%e142854142932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147771147772%_))))
                                          (let ((_%tl142856142937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142854142932%_)))
                                                (_%hd142855142935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142854142932%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142855142935%_))
                                                (let ((_%e142857142940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142855142935%_))))
                                                  (let ((_%tl142859142945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142857142940%_)))
                                                        (_%hd142858142943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142857142940%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142859142945%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142856142937%_))
                                                            (let ((_%e142860142948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142856142937%_))))
                      (let ((_%tl142862142953%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142860142948%_)))
                            (_%hd142861142951%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142860142948%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142862142953%_))
                            (_%__kont147773147774%_
                             _%hd142861142951%_
                             _%hd142858142943%_)
                            (let ()
                              (declare (not safe))
                              (_%g142850142875%_)))))
                    (let () (declare (not safe)) (_%g142850142875%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl142856142937%_))
                    (let ((_%e142868142888%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142856142937%_))))
                      (let ((_%tl142870142893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142868142888%_)))
                            (_%hd142869142891%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142868142888%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142870142893%_))
                            (_%__kont147775147776%_
                             _%hd142869142891%_
                             _%hd142855142935%_)
                            (let ()
                              (declare (not safe))
                              (_%g142850142875%_)))))
                    (let () (declare (not safe)) (_%g142850142875%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl142856142937%_))
                                                    (let ((_%e142868142888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl142856142937%_))))
                                                      (let ((_%tl142870142893%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142868142888%_)))
                    (_%hd142869142891%_
                     (let () (declare (not safe)) (##car _%e142868142888%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl142870142893%_))
                    (_%__kont147775147776%_
                     _%hd142869142891%_
                     _%hd142855142935%_)
                    (let () (declare (not safe)) (_%g142850142875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142850142875%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142850142875%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142824142832%_))
                            (let ((_%hd142829142980%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142824142832%_)))
                                  (_%tl142830142982%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142824142832%_))))
                              (let* ((_%hd-bind142985%_ _%hd142829142980%_)
                                     (_%rest142987%_ _%tl142830142982%_))
                                (_%K142828142977%_
                                 _%rest142987%_
                                 _%hd-bind142985%_)))
                            (_%else142826142843%_))))))
                 (_%generate-letrec?142575%_
                  (lambda (_%hd142707%_)
                    (let _%lp142709%_ ((_%rest142711%_ _%hd142707%_))
                      (let* ((_%rest142712142720%_ _%rest142711%_)
                             (_%else142714142728%_ (lambda () '#t))
                             (_%K142716142805%_
                              (lambda (_%rest142731%_ _%hd-bind142732%_)
                                (let* ((_%g142734142751%_
                                        (lambda (_%g142735142748%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g142735142748%_))))
                                       (_%g142733142802%_
                                        (lambda (_%g142735142754%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g142735142754%_))
                                              (let ((_%e142738142756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g142735142754%_))))
                                                (let ((_%hd142739142759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142738142756%_)))
                                                      (_%tl142740142761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142738142756%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd142739142759%_))
                                                      (let ((_%e142741142764%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd142739142759%_))))
                (let ((_%hd142742142767%_
                       (let () (declare (not safe)) (##car _%e142741142764%_)))
                      (_%tl142743142769%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142741142764%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142743142769%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142740142761%_))
                          (let ((_%e142744142772%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142740142761%_))))
                            (let ((_%hd142745142775%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142744142772%_)))
                                  (_%tl142746142777%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142744142772%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142746142777%_))
                                  ((lambda (_%L142780%_ _%L142781%_)
                                     (if (_%is-lambda-expr?142576%_
                                          _%L142780%_)
                                         (_%lp142709%_ _%rest142731%_)
                                         '#f))
                                   _%hd142745142775%_
                                   _%hd142742142767%_)
                                  (_%g142734142751%_ _%g142735142754%_))))
                          (_%g142734142751%_ _%g142735142754%_))
                      (_%g142734142751%_ _%g142735142754%_))))
              (_%g142734142751%_ _%g142735142754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142734142751%_
                                               _%g142735142754%_)))))
                                  (_%g142733142802%_ _%hd-bind142732%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142712142720%_))
                            (let ((_%hd142717142808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142712142720%_)))
                                  (_%tl142718142810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142712142720%_))))
                              (let* ((_%hd-bind142813%_ _%hd142717142808%_)
                                     (_%rest142815%_ _%tl142718142810%_))
                                (_%K142716142805%_
                                 _%rest142815%_
                                 _%hd-bind142813%_)))
                            (_%else142714142728%_))))))
                 (_%is-lambda-expr?142576%_
                  (lambda (_%expr142644%_)
                    (let* ((_%__stx147815147816%_ _%expr142644%_)
                           (_%g142647142661%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147815147816%_)))))
                      (let ((_%__kont147817147818%_
                             (lambda (_%L142689%_ _%L142690%_) '#t))
                            (_%__kont147819147820%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx147815147816%_))
                            (let ((_%e142651142673%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx147815147816%_))))
                              (let ((_%tl142653142678%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142651142673%_)))
                                    (_%hd142652142676%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142651142673%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142652142676%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd142652142676%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142653142678%_))
                                            (let ((_%e142654142681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142653142678%_))))
                                              (let ((_%tl142656142686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142654142681%_)))
                                                    (_%hd142655142684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142654142681%_))))
                                                (_%__kont147817147818%_
                                                 _%tl142656142686%_
                                                 _%hd142655142684%_)))
                                            (_%__kont147819147820%_))
                                        (_%__kont147819147820%_))
                                    (_%__kont147819147820%_))))
                            (_%__kont147819147820%_)))))))
          (let* ((_%g142578142595%_
                  (lambda (_%g142579142592%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142579142592%_))))
                 (_%g142577142641%_
                  (lambda (_%g142579142598%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142579142598%_))
                        (let ((_%e142582142600%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142579142598%_))))
                          (let ((_%hd142583142603%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142582142600%_)))
                                (_%tl142584142605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142582142600%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142584142605%_))
                                (let ((_%e142585142608%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142584142605%_))))
                                  (let ((_%hd142586142611%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142585142608%_)))
                                        (_%tl142587142613%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142585142608%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142587142613%_))
                                        (let ((_%e142588142616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142587142613%_))))
                                          (let ((_%hd142589142619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142588142616%_)))
                                                (_%tl142590142621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142588142616%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142590142621%_))
                                                ((lambda (_%L142624%_
                                                          _%L142625%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142625%_)
                                                       (if (_%generate-letrec?142575%_
                                                            _%L142625%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self142571%_
                                                            'letrec
                                                            _%L142625%_
                                                            _%L142624%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self142571%_
                                                            'letrec*
                                                            _%L142625%_
                                                            _%L142624%_
                                                            '#f))
                                                       (_%generate-values142574%_
                                                        _%L142625%_
                                                        _%L142624%_)))
                                                 _%hd142589142619%_
                                                 _%hd142586142611%_)
                                                (_%g142578142595%_
                                                 _%g142579142598%_))))
                                        (_%g142578142595%_
                                         _%g142579142598%_))))
                                (_%g142578142595%_ _%g142579142598%_))))
                        (_%g142578142595%_ _%g142579142598%_)))))
            (_%g142577142641%_ _%stx142572%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd142508%_)
        (let _%lp142510%_ ((_%rest142512%_ _%hd142508%_))
          (let* ((_%rest142513142529%_ _%rest142512%_)
                 (_%else142516142537%_ (lambda () '#f)))
            (let ((_%K142519142550%_
                   (lambda (_%rest142548%_) (_%lp142510%_ _%rest142548%_)))
                  (_%K142518142542%_ (lambda () '#t)))
              (let ((_%try-match142515142545%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest142513142529%_))
                           (_%K142518142542%_)
                           (_%else142516142537%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest142513142529%_))
                    (let ((_%tl142521142555%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142513142529%_)))
                          (_%hd142520142553%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142513142529%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142520142553%_))
                          (let ((_%tl142523142560%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142520142553%_)))
                                (_%hd142522142558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142520142553%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd142522142558%_))
                                (let ((_%tl142527142563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd142522142558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142527142563%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl142523142560%_))
                                          (let ((_%tl142525142566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl142523142560%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl142525142566%_))
                                                (let ((_%rest142569%_
                                                       _%tl142521142555%_))
                                                  (_%lp142510%_
                                                   _%rest142569%_))
                                                (_%else142516142537%_)))
                                          (_%else142516142537%_))
                                      (_%else142516142537%_)))
                                (_%else142516142537%_)))
                          (_%else142516142537%_)))
                    (_%try-match142515142545%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self142419%_
               _%form142420%_
               _%hd142421%_
               _%body142422%_
               _%compiled-body?142423%_)
        (letrec ((_%generate1142425%_
                  (lambda (_%bind142464%_)
                    (let* ((_%bind142465142476%_ _%bind142464%_)
                           (_%E142467142480%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind142465142476%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K142468142486%_
                            (lambda (_%expr142483%_ _%id142484%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id142484%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self142419%_
                                             _%expr142483%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind142465142476%_))
                          (let ((_%hd142469142489%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind142465142476%_)))
                                (_%tl142470142491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind142465142476%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd142469142489%_))
                                (let ((_%hd142473142494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd142469142489%_)))
                                      (_%tl142474142496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd142469142489%_))))
                                  (let ((_%id142499%_ _%hd142473142494%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl142474142496%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl142470142491%_))
                                            (let ((_%hd142471142501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl142470142491%_)))
                                                  (_%tl142472142503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl142470142491%_))))
                                              (let ((_%expr142506%_
                                                     _%hd142471142501%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl142472142503%_))
                                                    (_%K142468142486%_
                                                     _%expr142506%_
                                                     _%id142499%_)
                                                    (_%E142467142480%_))))
                                            (_%E142467142480%_))
                                        (_%E142467142480%_))))
                                (_%E142467142480%_)))
                          (_%E142467142480%_))))))
          (let* ((_%bind142427%_ (map _%generate1142425%_ _%hd142421%_))
                 (_%body142429%_
                  (if _%compiled-body?142423%_
                      _%body142422%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self142419%_ _%body142422%_))))
                 (_%body142461%_
                  (let* ((_%body142430142438%_ _%body142429%_)
                         (_%else142432142446%_
                          (lambda () (cons _%body142429%_ '())))
                         (_%K142434142451%_
                          (lambda (_%exprs142449%_) _%exprs142449%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body142430142438%_))
                        (let ((_%hd142435142454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body142430142438%_)))
                              (_%tl142436142456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body142430142438%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd142435142454%_ 'begin))
                              (let ((_%exprs142459%_ _%tl142436142456%_))
                                (_%K142434142451%_ _%exprs142459%_))
                              (_%else142432142446%_)))
                        (_%else142432142446%_)))))
            (cons _%form142420%_ (cons _%bind142427%_ _%body142461%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self142319%_ _%stx142320%_)
        (letrec ((_%generate1142322%_
                  (lambda (_%datum142374%_)
                    (if (or (null? _%datum142374%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum142374%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum142374%_))
                            (eof-object? _%datum142374%_))
                        _%datum142374%_
                        (if (uninterned-symbol? _%datum142374%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum142374%_
                               '#t))
                            (if (pair? _%datum142374%_)
                                (cons (_%generate1142322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum142374%_)))
                                      (_%generate1142322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum142374%_))))
                                (if (box? _%datum142374%_)
                                    (box (_%generate1142322%_
                                          (unbox _%datum142374%_)))
                                    (if (vector? _%datum142374%_)
                                        (vector-map
                                         _%generate1142322%_
                                         _%datum142374%_)
                                        (if (or (s8vector? _%datum142374%_)
                                                (u8vector? _%datum142374%_)
                                                (s16vector? _%datum142374%_)
                                                (u16vector? _%datum142374%_)
                                                (s32vector? _%datum142374%_)
                                                (u32vector? _%datum142374%_)
                                                (s64vector? _%datum142374%_)
                                                (u64vector? _%datum142374%_)
                                                (f32vector? _%datum142374%_)
                                                (f64vector? _%datum142374%_))
                                            _%datum142374%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx142320%_)))))))))))
          (let* ((_%g142324142337%_
                  (lambda (_%g142325142334%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142325142334%_))))
                 (_%g142323142371%_
                  (lambda (_%g142325142340%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142325142340%_))
                        (let ((_%e142327142342%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142325142340%_))))
                          (let ((_%hd142328142345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142327142342%_)))
                                (_%tl142329142347%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142327142342%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142329142347%_))
                                (let ((_%e142330142350%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142329142347%_))))
                                  (let ((_%hd142331142353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142330142350%_)))
                                        (_%tl142332142355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142330142350%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142332142355%_))
                                        ((lambda (_%L142358%_)
                                           (cons 'quote
                                                 (cons (_%generate1142322%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L142358%_)))
                                                       '())))
                                         _%hd142331142353%_)
                                        (_%g142324142337%_
                                         _%g142325142340%_))))
                                (_%g142324142337%_ _%g142325142340%_))))
                        (_%g142324142337%_ _%g142325142340%_)))))
            (_%g142323142371%_ _%stx142320%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self141760%_ _%stx141761%_)
        (letrec ((_%compile-call141763%_
                  (lambda (_%rator142052%_ _%rands142053%_)
                    (let ((_%rator142059%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self141760%_
                              _%rator142052%_)))
                          (_%rands142060%_
                           (map (lambda (_%g142054142056%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self141760%_
                                     _%g142054142056%_)))
                                _%rands142053%_)))
                      (let* ((_%__stx147862147863%_ _%rator142059%_)
                             (_%g142063142115%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx147862147863%_)))))
                        (let ((_%__kont147864147865%_
                               (lambda (_%L142239%_
                                        _%L142240%_
                                        _%L142241%_
                                        _%L142242%_)
                                 (if (let ((__tmp148534
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands142060%_)))
                                           (__tmp148532
                                            (length (let ((__tmp148533
                                                           (lambda (_%g142278142281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142279142283%_)
                     (cons _%g142278142281%_ _%g142279142283%_))))
              (declare (not safe))
              (__foldr1 __tmp148533 '() _%L142241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp148534 __tmp148532))
                                     (let* ((_%id142286%_ _%L142242%_)
                                            (_%args142295%_
                                             (let ((__tmp148535
                                                    (lambda (_%g142287142290%_
                                                             _%g142288142292%_)
                                                      (cons _%g142287142290%_
                                                            _%g142288142292%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp148535
                                                '()
                                                _%L142241%_)))
                                            (_%body142304%_
                                             (let ((__tmp148536
                                                    (lambda (_%g142296142299%_
                                                             _%g142297142301%_)
                                                      (cons _%g142296142299%_
                                                            _%g142297142301%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp148536
                                                '()
                                                _%L142240%_)))
                                            (_%init142306%_
                                             (map list
                                                  _%args142295%_
                                                  _%rands142060%_)))
                                       (cons 'let
                                             (cons _%id142286%_
                                                   (cons _%init142306%_
                                                         _%body142304%_))))
                                     (let ((__tmp148537
                                            (let ((__tmp148538
                                                   (lambda (_%g142308142311%_
                                                            _%g142309142313%_)
                                                     (cons _%g142308142311%_
                                                           _%g142309142313%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148538
                                               '()
                                               _%L142241%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx141761%_
                                        __tmp148537
                                        _%rands142060%_)))))
                              (_%__kont147870147871%_
                               (lambda ()
                                 (cons _%rator142059%_ _%rands142060%_))))
                          (let ((_%__match147929147930%_
                                 (lambda (_%e142069142127%_
                                          _%hd142070142130%_
                                          _%tl142071142132%_
                                          _%e142072142135%_
                                          _%hd142073142138%_
                                          _%tl142074142140%_
                                          _%e142075142143%_
                                          _%hd142076142146%_
                                          _%tl142077142148%_
                                          _%e142078142151%_
                                          _%hd142079142154%_
                                          _%tl142080142156%_
                                          _%e142081142159%_
                                          _%hd142082142162%_
                                          _%tl142083142164%_
                                          _%e142084142167%_
                                          _%hd142085142170%_
                                          _%tl142086142172%_
                                          _%e142087142175%_
                                          _%hd142088142178%_
                                          _%tl142089142180%_
                                          _%__splice147866147867%_
                                          _%target142090142183%_
                                          _%tl142092142185%_)
                                   (letrec ((_%loop142093142188%_
                                             (lambda (_%hd142091142191%_
                                                      _%arg142097142193%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd142091142191%_))
                                                   (let ((_%e142094142196%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd142091142191%_))))
                                                     (let ((_%lp-tl142096142201%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e142094142196%_)))
                                                           (_%lp-hd142095142199%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e142094142196%_))))
                                                       (_%loop142093142188%_
                                                        _%lp-tl142096142201%_
                                                        (cons _%lp-hd142095142199%_
                                                              _%arg142097142193%_))))
                                                   (let ((_%arg142098142204%_
                                                          (reverse _%arg142097142193%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl142089142180%_))
                                                         (let ((_%__splice147868147869%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl142089142180%_ '0))))
                   (let ((_%tl142101142209%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice147868147869%_ '1)))
                         (_%target142099142207%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice147868147869%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142101142209%_))
                         (letrec ((_%loop142102142212%_
                                   (lambda (_%hd142100142215%_
                                            _%body142106142217%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd142100142215%_))
                                         (let ((_%e142103142220%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd142100142215%_))))
                                           (let ((_%lp-tl142105142225%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142103142220%_)))
                                                 (_%lp-hd142104142223%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142103142220%_))))
                                             (_%loop142102142212%_
                                              _%lp-tl142105142225%_
                                              (cons _%lp-hd142104142223%_
                                                    _%body142106142217%_))))
                                         (let ((_%body142107142228%_
                                                (reverse _%body142106142217%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl142083142164%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl142077142148%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl142074142140%_))
                                                       (let ((_%e142108142231%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl142074142140%_))))
                 (let ((_%tl142110142236%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e142108142231%_)))
                       (_%hd142109142234%_
                        (let ()
                          (declare (not safe))
                          (##car _%e142108142231%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl142110142236%_))
                       (let ((_%L142239%_ _%hd142109142234%_)
                             (_%L142240%_ _%body142107142228%_)
                             (_%L142241%_ _%arg142098142204%_)
                             (_%L142242%_ _%hd142079142154%_))
                         (if (eq? _%L142242%_ _%L142239%_)
                             (_%__kont147864147865%_
                              _%L142239%_
                              _%L142240%_
                              _%L142241%_
                              _%L142242%_)
                             (_%__kont147870147871%_)))
                       (_%__kont147870147871%_))))
               (_%__kont147870147871%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont147870147871%_))
                                               (_%__kont147870147871%_)))))))
                           (_%loop142102142212%_ _%target142099142207%_ '()))
                         (_%__kont147870147871%_))))
                 (_%__kont147870147871%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop142093142188%_
                                      _%target142090142183%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx147862147863%_))
                                (let ((_%e142069142127%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx147862147863%_))))
                                  (let ((_%tl142071142132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142069142127%_)))
                                        (_%hd142070142130%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142069142127%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142070142130%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd142070142130%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142071142132%_))
                                                (let ((_%e142072142135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142071142132%_))))
                                                  (let ((_%tl142074142140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142072142135%_)))
                                                        (_%hd142073142138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142072142135%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142073142138%_))
                                                        (let ((_%e142075142143%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142073142138%_))))
                  (let ((_%tl142077142148%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142075142143%_)))
                        (_%hd142076142146%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142075142143%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142076142146%_))
                        (let ((_%e142078142151%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142076142146%_))))
                          (let ((_%tl142080142156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142078142151%_)))
                                (_%hd142079142154%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142078142151%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142080142156%_))
                                (let ((_%e142081142159%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142080142156%_))))
                                  (let ((_%tl142083142164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142081142159%_)))
                                        (_%hd142082142162%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142081142159%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd142082142162%_))
                                        (let ((_%e142084142167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd142082142162%_))))
                                          (let ((_%tl142086142172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142084142167%_)))
                                                (_%hd142085142170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142084142167%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd142085142170%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd142085142170%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142086142172%_))
                                                        (let ((_%e142087142175%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142086142172%_))))
                  (let ((_%tl142089142180%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142087142175%_)))
                        (_%hd142088142178%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142087142175%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd142088142178%_))
                        (let ((_%__splice147866147867%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd142088142178%_
                                  '0))))
                          (let ((_%tl142092142185%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice147866147867%_ '1)))
                                (_%target142090142183%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice147866147867%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142092142185%_))
                                (_%__match147929147930%_
                                 _%e142069142127%_
                                 _%hd142070142130%_
                                 _%tl142071142132%_
                                 _%e142072142135%_
                                 _%hd142073142138%_
                                 _%tl142074142140%_
                                 _%e142075142143%_
                                 _%hd142076142146%_
                                 _%tl142077142148%_
                                 _%e142078142151%_
                                 _%hd142079142154%_
                                 _%tl142080142156%_
                                 _%e142081142159%_
                                 _%hd142082142162%_
                                 _%tl142083142164%_
                                 _%e142084142167%_
                                 _%hd142085142170%_
                                 _%tl142086142172%_
                                 _%e142087142175%_
                                 _%hd142088142178%_
                                 _%tl142089142180%_
                                 _%__splice147866147867%_
                                 _%target142090142183%_
                                 _%tl142092142185%_)
                                (_%__kont147870147871%_))))
                        (_%__kont147870147871%_))))
                (_%__kont147870147871%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147870147871%_))
                                                (_%__kont147870147871%_))))
                                        (_%__kont147870147871%_))))
                                (_%__kont147870147871%_))))
                        (_%__kont147870147871%_))))
                (_%__kont147870147871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont147870147871%_))
                                            (_%__kont147870147871%_))
                                        (_%__kont147870147871%_))))
                                (_%__kont147870147871%_)))))))))
          (let* ((_%g141765141788%_
                  (lambda (_%g141766141785%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141766141785%_))))
                 (_%g141764142049%_
                  (lambda (_%g141766141791%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141766141791%_))
                        (let ((_%e141769141793%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141766141791%_))))
                          (let ((_%hd141770141796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141769141793%_)))
                                (_%tl141771141798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141769141793%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141771141798%_))
                                (let ((_%e141772141801%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141771141798%_))))
                                  (let ((_%hd141773141804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141772141801%_)))
                                        (_%tl141774141806%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141772141801%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl141774141806%_))
                                        (let ((_g148539_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl141774141806%_
                                                  '0))))
                                          (begin
                                            (let ((_g148540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g148539_)
                                                         (##vector-length
                                                          _g148539_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g148540_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g148540_)))
                                            (let ((_%target141775141809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g148539_
                                                      0)))
                                                  (_%tl141777141811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g148539_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141777141811%_))
                                                  (letrec ((_%loop141778141814%_
                                                            (lambda (_%hd141776141817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand141782141819%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141776141817%_))
                          (let ((_%e141779141822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141776141817%_))))
                            (let ((_%lp-hd141780141825%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141779141822%_)))
                                  (_%lp-tl141781141827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141779141822%_))))
                              (_%loop141778141814%_
                               _%lp-tl141781141827%_
                               (cons _%lp-hd141780141825%_
                                     _%rand141782141819%_))))
                          (let ((_%rand141783141830%_
                                 (reverse _%rand141782141819%_)))
                            ((lambda (_%L141833%_ _%L141834%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call141763%_
                                    _%L141834%_
                                    (let ((__tmp148541
                                           (lambda (_%g141851141854%_
                                                    _%g141852141856%_)
                                             (cons _%g141851141854%_
                                                   _%g141852141856%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp148541 '() _%L141833%_)))
                                   (let* ((_%__stx147978147979%_ _%L141834%_)
                                          (_%g141860141872%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx147978147979%_)))))
                                     (let ((_%__kont147980147981%_
                                            (lambda ()
                                              (let ((_%f141909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141760%_
                                                        _%L141834%_))))
                                                (if (and (let ((__tmp148542
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f141909%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp148542))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f141909%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp141911%_ ((_%rest141914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp148544
                                                (lambda (_%g142031142034%_
                                                         _%g142032142036%_)
                                                  (cons _%g142031142034%_
                                                        _%g142032142036%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp148544
                                            '()
                                            _%L141833%_))))
                               (_%bind141916%_ '())
                               (_%args141917%_ '()))
              (let* ((_%rest141918141926%_ _%rest141914%_)
                     (_%else141920141934%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind141916%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f141909%_
                                                      _%args141917%_)
                                                '()))))))
                     (_%K141922142020%_
                      (lambda (_%rest141937%_ _%e141938%_)
                        (let* ((_%__stx147932147933%_ _%e141938%_)
                               (_%g141943141961%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx147932147933%_)))))
                          (let ((_%__kont147934147935%_
                                 (lambda ()
                                   (_%lp141911%_
                                    _%rest141937%_
                                    _%bind141916%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e141938%_))
                                          _%args141917%_))))
                                (_%__kont147936147937%_
                                 (lambda ()
                                   (_%lp141911%_
                                    _%rest141937%_
                                    _%bind141916%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e141938%_))
                                          _%args141917%_))))
                                (_%__kont147938147939%_
                                 (lambda ()
                                   (let ((_%tmp141968%_
                                          (let ((__tmp148543
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp148543))))
                                     (_%lp141911%_
                                      _%rest141937%_
                                      (cons (cons _%tmp141968%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e141938%_))
                                                        '()))
                                            _%bind141916%_)
                                      (cons _%tmp141968%_ _%args141917%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx147932147933%_))
                                (let ((_%e141945141999%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx147932147933%_))))
                                  (let ((_%tl141947142004%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141945141999%_)))
                                        (_%hd141946142002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141945141999%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd141946142002%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd141946142002%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141947142004%_))
                                                (let ((_%e141948142007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141947142004%_))))
                                                  (let ((_%tl141950142012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141948142007%_)))
                                                        (_%hd141949142010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141948142007%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141950142012%_))
                                                        (_%__kont147934147935%_)
                                                        (_%__kont147938147939%_))))
                                                (_%__kont147938147939%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd141946142002%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141947142004%_))
                                                    (let ((_%e141954141984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141947142004%_))))
                                                      (let ((_%tl141956141989%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141954141984%_)))
                    (_%hd141955141987%_
                     (let () (declare (not safe)) (##car _%e141954141984%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141956141989%_))
                    (_%__kont147936147937%_)
                    (_%__kont147938147939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147938147939%_))
                                                (_%__kont147938147939%_)))
                                        (_%__kont147938147939%_))))
                                (_%__kont147938147939%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141918141926%_))
                    (let ((_%hd141923142023%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141918141926%_)))
                          (_%tl141924142025%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141918141926%_))))
                      (let* ((_%e142028%_ _%hd141923142023%_)
                             (_%rest142030%_ _%tl141924142025%_))
                        (_%K141922142020%_ _%rest142030%_ _%e142028%_)))
                    (_%else141920141934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call141763%_
                                                     _%L141834%_
                                                     (let ((__tmp148545
                                                            (lambda (_%g142038142041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g142039142043%_)
                      (cons _%g142038142041%_ _%g142039142043%_))))
               (declare (not safe))
               (__foldr1 __tmp148545 '() _%L141833%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont147982147983%_
                                            (lambda ()
                                              (_%compile-call141763%_
                                               _%L141834%_
                                               (let ((__tmp148546
                                                      (lambda (_%g141878141881%_
                                                               _%g141879141883%_)
                                                        (cons _%g141878141881%_
                                                              _%g141879141883%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp148546
                                                  '()
                                                  _%L141833%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx147978147979%_))
                                           (let ((_%e141862141891%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx147978147979%_))))
                                             (let ((_%tl141864141896%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141862141891%_)))
                                                   (_%hd141863141894%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141862141891%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141863141894%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd141863141894%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl141864141896%_))
                                                           (let ((_%e141865141899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl141864141896%_))))
                     (let ((_%tl141867141904%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e141865141899%_)))
                           (_%hd141866141902%_
                            (let ()
                              (declare (not safe))
                              (##car _%e141865141899%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl141867141904%_))
                           (_%__kont147980147981%_)
                           (_%__kont147982147983%_))))
                   (_%__kont147982147983%_))
               (_%__kont147982147983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont147982147983%_))))
                                           (_%__kont147982147983%_))))))
                             _%rand141783141830%_
                             _%hd141773141804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop141778141814%_
                                                     _%target141775141809%_
                                                     '()))
                                                  (_%g141765141788%_
                                                   _%g141766141791%_)))))
                                        (_%g141765141788%_
                                         _%g141766141791%_))))
                                (_%g141765141788%_ _%g141766141791%_))))
                        (_%g141765141788%_ _%g141766141791%_)))))
            (_%g141764142049%_ _%stx141761%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self141503%_ _%stx141504%_)
        (let* ((_%__stx148050148051%_ _%stx141504%_)
               (_%g141507141536%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148050148051%_)))))
          (let ((_%__kont148052148053%_
                 (lambda (_%L141604%_ _%L141605%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self141503%_
                        _%stx141504%_)
                       (let ((_%f141627%_
                              (let ((__tmp148547
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L141605%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self141503%_
                                 __tmp148547))))
                         (let _%lp141629%_ ((_%rest141632%_
                                             (reverse (let ((__tmp148549
                                                             (lambda (_%g141749141752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g141750141754%_)
                       (cons _%g141749141752%_ _%g141750141754%_))))
                (declare (not safe))
                (__foldr1 __tmp148549 '() _%L141604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind141634%_ '())
                                            (_%args141635%_ '()))
                           (let* ((_%rest141636141644%_ _%rest141632%_)
                                  (_%else141638141652%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind141634%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f141627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args141635%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K141640141738%_
                                   (lambda (_%rest141655%_ _%e141656%_)
                                     (let* ((_%__stx148004148005%_ _%e141656%_)
                                            (_%g141661141679%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx148004148005%_)))))
                                       (let ((_%__kont148006148007%_
                                              (lambda ()
                                                (_%lp141629%_
                                                 _%rest141655%_
                                                 _%bind141634%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e141656%_))
                                                       _%args141635%_))))
                                             (_%__kont148008148009%_
                                              (lambda ()
                                                (_%lp141629%_
                                                 _%rest141655%_
                                                 _%bind141634%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e141656%_))
                                                       _%args141635%_))))
                                             (_%__kont148010148011%_
                                              (lambda ()
                                                (let ((_%tmp141686%_
                                                       (let ((__tmp148548
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp148548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp141629%_
                                                   _%rest141655%_
                                                   (cons (cons _%tmp141686%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e141656%_))
                             '()))
                 _%bind141634%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp141686%_
                                                         _%args141635%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx148004148005%_))
                                             (let ((_%e141663141717%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx148004148005%_))))
                                               (let ((_%tl141665141722%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e141663141717%_)))
                                                     (_%hd141664141720%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e141663141717%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd141664141720%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd141664141720%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141665141722%_))
                     (let ((_%e141666141725%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141665141722%_))))
                       (let ((_%tl141668141730%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141666141725%_)))
                             (_%hd141667141728%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141666141725%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141668141730%_))
                             (_%__kont148006148007%_)
                             (_%__kont148010148011%_))))
                     (_%__kont148010148011%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd141664141720%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl141665141722%_))
                         (let ((_%e141672141702%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl141665141722%_))))
                           (let ((_%tl141674141707%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e141672141702%_)))
                                 (_%hd141673141705%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e141672141702%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141674141707%_))
                                 (_%__kont148008148009%_)
                                 (_%__kont148010148011%_))))
                         (_%__kont148010148011%_))
                     (_%__kont148010148011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148010148011%_))))
                                             (_%__kont148010148011%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest141636141644%_))
                                 (let ((_%hd141641141741%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest141636141644%_)))
                                       (_%tl141642141743%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest141636141644%_))))
                                   (let* ((_%e141746%_ _%hd141641141741%_)
                                          (_%rest141748%_ _%tl141642141743%_))
                                     (_%K141640141738%_
                                      _%rest141748%_
                                      _%e141746%_)))
                                 (_%else141638141652%_))))))))
                (_%__kont148056148057%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self141503%_ _%stx141504%_))))
            (let ((_%__match148095148096%_
                   (lambda (_%e141511141548%_
                            _%hd141512141551%_
                            _%tl141513141553%_
                            _%e141514141556%_
                            _%hd141515141559%_
                            _%tl141516141561%_
                            _%e141517141564%_
                            _%hd141518141567%_
                            _%tl141519141569%_
                            _%e141520141572%_
                            _%hd141521141575%_
                            _%tl141522141577%_
                            _%__splice148054148055%_
                            _%target141523141580%_
                            _%tl141525141582%_)
                     (letrec ((_%loop141526141585%_
                               (lambda (_%hd141524141588%_
                                        _%rand141530141590%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd141524141588%_))
                                     (let ((_%e141527141593%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd141524141588%_))))
                                       (let ((_%lp-tl141529141598%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e141527141593%_)))
                                             (_%lp-hd141528141596%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e141527141593%_))))
                                         (_%loop141526141585%_
                                          _%lp-tl141529141598%_
                                          (cons _%lp-hd141528141596%_
                                                _%rand141530141590%_))))
                                     (let ((_%rand141531141601%_
                                            (reverse _%rand141530141590%_)))
                                       (_%__kont148052148053%_
                                        _%rand141531141601%_
                                        _%hd141521141575%_))))))
                       (_%loop141526141585%_ _%target141523141580%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148050148051%_))
                  (let ((_%e141511141548%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148050148051%_))))
                    (let ((_%tl141513141553%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141511141548%_)))
                          (_%hd141512141551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141511141548%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141513141553%_))
                          (let ((_%e141514141556%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141513141553%_))))
                            (let ((_%tl141516141561%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141514141556%_)))
                                  (_%hd141515141559%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141514141556%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141515141559%_))
                                  (let ((_%e141517141564%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141515141559%_))))
                                    (let ((_%tl141519141569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141517141564%_)))
                                          (_%hd141518141567%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141517141564%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141518141567%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141518141567%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141519141569%_))
                                                  (let ((_%e141520141572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141519141569%_))))
                                                    (let ((_%tl141522141577%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141520141572%_)))
                                                          (_%hd141521141575%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141520141572%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141522141577%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl141516141561%_))
                      (let ((_%__splice148054148055%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl141516141561%_
                                '0))))
                        (let ((_%tl141525141582%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148054148055%_ '1)))
                              (_%target141523141580%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148054148055%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141525141582%_))
                              (_%__match148095148096%_
                               _%e141511141548%_
                               _%hd141512141551%_
                               _%tl141513141553%_
                               _%e141514141556%_
                               _%hd141515141559%_
                               _%tl141516141561%_
                               _%e141517141564%_
                               _%hd141518141567%_
                               _%tl141519141569%_
                               _%e141520141572%_
                               _%hd141521141575%_
                               _%tl141522141577%_
                               _%__splice148054148055%_
                               _%target141523141580%_
                               _%tl141525141582%_)
                              (_%__kont148056148057%_))))
                      (_%__kont148056148057%_))
                  (_%__kont148056148057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148056148057%_))
                                              (_%__kont148056148057%_))
                                          (_%__kont148056148057%_))))
                                  (_%__kont148056148057%_))))
                          (_%__kont148056148057%_))))
                  (_%__kont148056148057%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self141315%_ _%stx141316%_)
        (letrec ((_%simplify141318%_
                  (lambda (_%code141403%_)
                    (let* ((_%code141404141422%_ _%code141403%_)
                           (_%else141406141430%_ (lambda () _%code141403%_))
                           (_%K141408141466%_
                            (lambda (_%expr141433%_ _%test141434%_)
                              (let* ((_%expr141435141443%_ _%expr141433%_)
                                     (_%else141437141451%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test141434%_
                                                    (cons _%expr141433%_
                                                          '())))))
                                     (_%K141439141456%_
                                      (lambda (_%exprs141454%_)
                                        (cons 'and
                                              (cons _%test141434%_
                                                    _%exprs141454%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr141435141443%_))
                                    (let ((_%hd141440141459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr141435141443%_)))
                                          (_%tl141441141461%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr141435141443%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd141440141459%_ 'and))
                                          (let ((_%exprs141464%_
                                                 _%tl141441141461%_))
                                            (_%K141439141456%_
                                             _%exprs141464%_))
                                          (_%else141437141451%_)))
                                    (_%else141437141451%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code141404141422%_))
                          (let ((_%hd141409141469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code141404141422%_)))
                                (_%tl141410141471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code141404141422%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd141409141469%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141410141471%_))
                                    (let ((_%hd141411141474%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141410141471%_)))
                                          (_%tl141412141476%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141410141471%_))))
                                      (let ((_%test141479%_
                                             _%hd141411141474%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141412141476%_))
                                            (let ((_%hd141413141481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141412141476%_)))
                                                  (_%tl141414141483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141412141476%_))))
                                              (let ((_%expr141486%_
                                                     _%hd141413141481%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141414141483%_))
                                                    (let ((_%hd141415141488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141414141483%_)))
                                                          (_%tl141416141490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141414141483%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd141415141488%_))
                                                          (let ((_%hd141417141493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd141415141488%_)))
                        (_%tl141418141495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd141415141488%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd141417141493%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl141418141495%_))
                            (let ((_%hd141419141498%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl141418141495%_)))
                                  (_%tl141420141500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl141418141495%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141419141498%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141420141500%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl141416141490%_))
                                          (_%K141408141466%_
                                           _%expr141486%_
                                           _%test141479%_)
                                          (_%else141406141430%_))
                                      (_%else141406141430%_))
                                  (_%else141406141430%_)))
                            (_%else141406141430%_))
                        (_%else141406141430%_)))
                  (_%else141406141430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141406141430%_))))
                                            (_%else141406141430%_))))
                                    (_%else141406141430%_))
                                (_%else141406141430%_)))
                          (_%else141406141430%_))))))
          (let* ((_%g141320141341%_
                  (lambda (_%g141321141338%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141321141338%_))))
                 (_%g141319141400%_
                  (lambda (_%g141321141344%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141321141344%_))
                        (let ((_%e141325141346%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141321141344%_))))
                          (let ((_%hd141326141349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141325141346%_)))
                                (_%tl141327141351%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141325141346%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141327141351%_))
                                (let ((_%e141328141354%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141327141351%_))))
                                  (let ((_%hd141329141357%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141328141354%_)))
                                        (_%tl141330141359%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141328141354%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141330141359%_))
                                        (let ((_%e141331141362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141330141359%_))))
                                          (let ((_%hd141332141365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141331141362%_)))
                                                (_%tl141333141367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141331141362%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141333141367%_))
                                                (let ((_%e141334141370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141333141367%_))))
                                                  (let ((_%hd141335141373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141334141370%_)))
                                                        (_%tl141336141375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141334141370%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141336141375%_))
                                                        ((lambda (_%L141378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L141379%_
                          _%L141380%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify141318%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self141315%_
                                       _%L141380%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141315%_
                                             _%L141379%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self141315%_
                                                   _%L141378%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp148550
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141315%_
                                               _%L141380%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp148550
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141315%_
                                            _%L141379%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141315%_
                                                  _%L141378%_))
                                               '()))))))
                 _%hd141335141373%_
                 _%hd141332141365%_
                 _%hd141329141357%_)
                (_%g141320141341%_ _%g141321141344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g141320141341%_
                                                 _%g141321141344%_))))
                                        (_%g141320141341%_
                                         _%g141321141344%_))))
                                (_%g141320141341%_ _%g141321141344%_))))
                        (_%g141320141341%_ _%g141321141344%_)))))
            (_%g141319141400%_ _%stx141316%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self141263%_ _%stx141264%_)
        (let* ((_%g141266141279%_
                (lambda (_%g141267141276%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141267141276%_))))
               (_%g141265141312%_
                (lambda (_%g141267141282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141267141282%_))
                      (let ((_%e141269141284%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141267141282%_))))
                        (let ((_%hd141270141287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141269141284%_)))
                              (_%tl141271141289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141269141284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141271141289%_))
                              (let ((_%e141272141292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141271141289%_))))
                                (let ((_%hd141273141295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141272141292%_)))
                                      (_%tl141274141297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141272141292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141274141297%_))
                                      ((lambda (_%L141300%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L141300%_)))
                                       _%hd141273141295%_)
                                      (_%g141266141279%_ _%g141267141282%_))))
                              (_%g141266141279%_ _%g141267141282%_))))
                      (_%g141266141279%_ _%g141267141282%_)))))
          (_%g141265141312%_ _%stx141264%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self141195%_ _%stx141196%_)
        (let* ((_%g141198141215%_
                (lambda (_%g141199141212%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141199141212%_))))
               (_%g141197141260%_
                (lambda (_%g141199141218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141199141218%_))
                      (let ((_%e141202141220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141199141218%_))))
                        (let ((_%hd141203141223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141202141220%_)))
                              (_%tl141204141225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141202141220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141204141225%_))
                              (let ((_%e141205141228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141204141225%_))))
                                (let ((_%hd141206141231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141205141228%_)))
                                      (_%tl141207141233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141205141228%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141207141233%_))
                                      (let ((_%e141208141236%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141207141233%_))))
                                        (let ((_%hd141209141239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141208141236%_)))
                                              (_%tl141210141241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141208141236%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141210141241%_))
                                              ((lambda (_%L141244%_
                                                        _%L141245%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L141245%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141195%_ _%L141244%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141209141239%_
                                               _%hd141206141231%_)
                                              (_%g141198141215%_
                                               _%g141199141218%_))))
                                      (_%g141198141215%_ _%g141199141218%_))))
                              (_%g141198141215%_ _%g141199141218%_))))
                      (_%g141198141215%_ _%g141199141218%_)))))
          (_%g141197141260%_ _%stx141196%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self141006%_ _%stx141007%_)
        (let* ((_%g141009141026%_
                (lambda (_%g141010141023%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141010141023%_))))
               (_%g141008141192%_
                (lambda (_%g141010141029%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141010141029%_))
                      (let ((_%e141013141031%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141010141029%_))))
                        (let ((_%hd141014141034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141013141031%_)))
                              (_%tl141015141036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141013141031%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141015141036%_))
                              (let ((_%e141016141039%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141015141036%_))))
                                (let ((_%hd141017141042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141016141039%_)))
                                      (_%tl141018141044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141016141039%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141018141044%_))
                                      (let ((_%e141019141047%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141018141044%_))))
                                        (let ((_%hd141020141050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141019141047%_)))
                                              (_%tl141021141052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141019141047%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141021141052%_))
                                              ((lambda (_%L141055%_
                                                        _%L141056%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141006%_ _%L141055%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141006%_ _%L141056%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141071%_ ((_%rest141074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141056%_ (cons _%L141055%_ '())))
                                (_%bind141076%_ '())
                                (_%args141077%_ '()))
               (let* ((_%rest141078141086%_ _%rest141074%_)
                      (_%else141080141094%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141076%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args141077%_)
                                                 '()))))))
                      (_%K141082141180%_
                       (lambda (_%rest141097%_ _%e141098%_)
                         (let* ((_%__stx148098148099%_ _%e141098%_)
                                (_%g141103141121%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148098148099%_)))))
                           (let ((_%__kont148100148101%_
                                  (lambda ()
                                    (_%lp141071%_
                                     _%rest141097%_
                                     _%bind141076%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141098%_))
                                           _%args141077%_))))
                                 (_%__kont148102148103%_
                                  (lambda ()
                                    (_%lp141071%_
                                     _%rest141097%_
                                     _%bind141076%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141098%_))
                                           _%args141077%_))))
                                 (_%__kont148104148105%_
                                  (lambda ()
                                    (let ((_%tmp141128%_
                                           (let ((__tmp148551
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp148551))))
                                      (_%lp141071%_
                                       _%rest141097%_
                                       (cons (cons _%tmp141128%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141098%_))
                                                         '()))
                                             _%bind141076%_)
                                       (cons _%tmp141128%_ _%args141077%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148098148099%_))
                                 (let ((_%e141105141159%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148098148099%_))))
                                   (let ((_%tl141107141164%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141105141159%_)))
                                         (_%hd141106141162%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141105141159%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141106141162%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141106141162%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141107141164%_))
                                                 (let ((_%e141108141167%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141107141164%_))))
                                                   (let ((_%tl141110141172%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141108141167%_)))
                                                         (_%hd141109141170%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141108141167%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141110141172%_))
                                                         (_%__kont148100148101%_)
                                                         (_%__kont148104148105%_))))
                                                 (_%__kont148104148105%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141106141162%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141107141164%_))
                                                     (let ((_%e141114141144%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141107141164%_))))
                                                       (let ((_%tl141116141149%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141114141144%_)))
                     (_%hd141115141147%_
                      (let () (declare (not safe)) (##car _%e141114141144%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141116141149%_))
                     (_%__kont148102148103%_)
                     (_%__kont148104148105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148104148105%_))
                                                 (_%__kont148104148105%_)))
                                         (_%__kont148104148105%_))))
                                 (_%__kont148104148105%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest141078141086%_))
                     (let ((_%hd141083141183%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141078141086%_)))
                           (_%tl141084141185%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141078141086%_))))
                       (let* ((_%e141188%_ _%hd141083141183%_)
                              (_%rest141190%_ _%tl141084141185%_))
                         (_%K141082141180%_ _%rest141190%_ _%e141188%_)))
                     (_%else141080141094%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141020141050%_
                                               _%hd141017141042%_)
                                              (_%g141009141026%_
                                               _%g141010141029%_))))
                                      (_%g141009141026%_ _%g141010141029%_))))
                              (_%g141009141026%_ _%g141010141029%_))))
                      (_%g141009141026%_ _%g141010141029%_)))))
          (_%g141008141192%_ _%stx141007%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self140817%_ _%stx140818%_)
        (let* ((_%g140820140837%_
                (lambda (_%g140821140834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140821140834%_))))
               (_%g140819141003%_
                (lambda (_%g140821140840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140821140840%_))
                      (let ((_%e140824140842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140821140840%_))))
                        (let ((_%hd140825140845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140824140842%_)))
                              (_%tl140826140847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140824140842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140826140847%_))
                              (let ((_%e140827140850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140826140847%_))))
                                (let ((_%hd140828140853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140827140850%_)))
                                      (_%tl140829140855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140827140850%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140829140855%_))
                                      (let ((_%e140830140858%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140829140855%_))))
                                        (let ((_%hd140831140861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140830140858%_)))
                                              (_%tl140832140863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140830140858%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140832140863%_))
                                              ((lambda (_%L140866%_
                                                        _%L140867%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self140817%_ _%L140866%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self140817%_ _%L140867%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp140882%_ ((_%rest140885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L140867%_ (cons _%L140866%_ '())))
                                (_%bind140887%_ '())
                                (_%args140888%_ '()))
               (let* ((_%rest140889140897%_ _%rest140885%_)
                      (_%else140891140905%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind140887%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args140888%_)
                                                 '()))))))
                      (_%K140893140991%_
                       (lambda (_%rest140908%_ _%e140909%_)
                         (let* ((_%__stx148144148145%_ _%e140909%_)
                                (_%g140914140932%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148144148145%_)))))
                           (let ((_%__kont148146148147%_
                                  (lambda ()
                                    (_%lp140882%_
                                     _%rest140908%_
                                     _%bind140887%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140909%_))
                                           _%args140888%_))))
                                 (_%__kont148148148149%_
                                  (lambda ()
                                    (_%lp140882%_
                                     _%rest140908%_
                                     _%bind140887%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140909%_))
                                           _%args140888%_))))
                                 (_%__kont148150148151%_
                                  (lambda ()
                                    (let ((_%tmp140939%_
                                           (let ((__tmp148552
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp148552))))
                                      (_%lp140882%_
                                       _%rest140908%_
                                       (cons (cons _%tmp140939%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e140909%_))
                                                         '()))
                                             _%bind140887%_)
                                       (cons _%tmp140939%_ _%args140888%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148144148145%_))
                                 (let ((_%e140916140970%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148144148145%_))))
                                   (let ((_%tl140918140975%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140916140970%_)))
                                         (_%hd140917140973%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140916140970%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd140917140973%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd140917140973%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl140918140975%_))
                                                 (let ((_%e140919140978%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl140918140975%_))))
                                                   (let ((_%tl140921140983%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140919140978%_)))
                                                         (_%hd140920140981%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140919140978%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140921140983%_))
                                                         (_%__kont148146148147%_)
                                                         (_%__kont148150148151%_))))
                                                 (_%__kont148150148151%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd140917140973%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140918140975%_))
                                                     (let ((_%e140925140955%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140918140975%_))))
                                                       (let ((_%tl140927140960%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140925140955%_)))
                     (_%hd140926140958%_
                      (let () (declare (not safe)) (##car _%e140925140955%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140927140960%_))
                     (_%__kont148148148149%_)
                     (_%__kont148150148151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148150148151%_))
                                                 (_%__kont148150148151%_)))
                                         (_%__kont148150148151%_))))
                                 (_%__kont148150148151%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest140889140897%_))
                     (let ((_%hd140894140994%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest140889140897%_)))
                           (_%tl140895140996%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest140889140897%_))))
                       (let* ((_%e140999%_ _%hd140894140994%_)
                              (_%rest141001%_ _%tl140895140996%_))
                         (_%K140893140991%_ _%rest141001%_ _%e140999%_)))
                     (_%else140891140905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140831140861%_
                                               _%hd140828140853%_)
                                              (_%g140820140837%_
                                               _%g140821140840%_))))
                                      (_%g140820140837%_ _%g140821140840%_))))
                              (_%g140820140837%_ _%g140821140840%_))))
                      (_%g140820140837%_ _%g140821140840%_)))))
          (_%g140819141003%_ _%stx140818%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self140733%_ _%stx140734%_)
        (let* ((_%g140736140757%_
                (lambda (_%g140737140754%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140737140754%_))))
               (_%g140735140814%_
                (lambda (_%g140737140760%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140737140760%_))
                      (let ((_%e140741140762%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140737140760%_))))
                        (let ((_%hd140742140765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140741140762%_)))
                              (_%tl140743140767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140741140762%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140743140767%_))
                              (let ((_%e140744140770%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140743140767%_))))
                                (let ((_%hd140745140773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140744140770%_)))
                                      (_%tl140746140775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140744140770%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140746140775%_))
                                      (let ((_%e140747140778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140746140775%_))))
                                        (let ((_%hd140748140781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140747140778%_)))
                                              (_%tl140749140783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140747140778%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140749140783%_))
                                              (let ((_%e140750140786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140749140783%_))))
                                                (let ((_%hd140751140789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140750140786%_)))
                                                      (_%tl140752140791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140750140786%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140752140791%_))
                                                      ((lambda (_%L140794%_
                                                                _%L140795%_
                                                                _%L140796%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self140733%_ _%L140794%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self140733%_
                                      _%L140795%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140733%_
                                            _%L140796%_))
                                         (cons ''#f '()))))))
               _%hd140751140789%_
               _%hd140748140781%_
               _%hd140745140773%_)
              (_%g140736140757%_ _%g140737140760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140736140757%_
                                               _%g140737140760%_))))
                                      (_%g140736140757%_ _%g140737140760%_))))
                              (_%g140736140757%_ _%g140737140760%_))))
                      (_%g140736140757%_ _%g140737140760%_)))))
          (_%g140735140814%_ _%stx140734%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self140633%_ _%stx140634%_)
        (let* ((_%g140636140661%_
                (lambda (_%g140637140658%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140637140658%_))))
               (_%g140635140730%_
                (lambda (_%g140637140664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140637140664%_))
                      (let ((_%e140642140666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140637140664%_))))
                        (let ((_%hd140643140669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140642140666%_)))
                              (_%tl140644140671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140642140666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140644140671%_))
                              (let ((_%e140645140674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140644140671%_))))
                                (let ((_%hd140646140677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140645140674%_)))
                                      (_%tl140647140679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140645140674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140647140679%_))
                                      (let ((_%e140648140682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140647140679%_))))
                                        (let ((_%hd140649140685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140648140682%_)))
                                              (_%tl140650140687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140648140682%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140650140687%_))
                                              (let ((_%e140651140690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140650140687%_))))
                                                (let ((_%hd140652140693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140651140690%_)))
                                                      (_%tl140653140695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140651140690%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140653140695%_))
                                                      (let ((_%e140654140698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140653140695%_))))
                (let ((_%hd140655140701%_
                       (let () (declare (not safe)) (##car _%e140654140698%_)))
                      (_%tl140656140703%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140654140698%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140656140703%_))
                      ((lambda (_%L140706%_
                                _%L140707%_
                                _%L140708%_
                                _%L140709%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self140633%_
                                        _%L140707%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self140633%_
                                              _%L140706%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self140633%_
                                                    _%L140708%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self140633%_
                                                          _%L140709%_))
                                                       (cons ''#f '())))))))
                       _%hd140655140701%_
                       _%hd140652140693%_
                       _%hd140649140685%_
                       _%hd140646140677%_)
                      (_%g140636140661%_ _%g140637140664%_))))
              (_%g140636140661%_ _%g140637140664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140636140661%_
                                               _%g140637140664%_))))
                                      (_%g140636140661%_ _%g140637140664%_))))
                              (_%g140636140661%_ _%g140637140664%_))))
                      (_%g140636140661%_ _%g140637140664%_)))))
          (_%g140635140730%_ _%stx140634%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self140549%_ _%stx140550%_)
        (let* ((_%g140552140573%_
                (lambda (_%g140553140570%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140553140570%_))))
               (_%g140551140630%_
                (lambda (_%g140553140576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140553140576%_))
                      (let ((_%e140557140578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140553140576%_))))
                        (let ((_%hd140558140581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140557140578%_)))
                              (_%tl140559140583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140557140578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140559140583%_))
                              (let ((_%e140560140586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140559140583%_))))
                                (let ((_%hd140561140589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140560140586%_)))
                                      (_%tl140562140591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140560140586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140562140591%_))
                                      (let ((_%e140563140594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140562140591%_))))
                                        (let ((_%hd140564140597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140563140594%_)))
                                              (_%tl140565140599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140563140594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140565140599%_))
                                              (let ((_%e140566140602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140565140599%_))))
                                                (let ((_%hd140567140605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140566140602%_)))
                                                      (_%tl140568140607%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140566140602%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140568140607%_))
                                                      ((lambda (_%L140610%_
                                                                _%L140611%_
                                                                _%L140612%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self140549%_ _%L140610%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self140549%_
                                      _%L140611%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140549%_
                                            _%L140612%_))
                                         (cons ''#f '()))))))
               _%hd140567140605%_
               _%hd140564140597%_
               _%hd140561140589%_)
              (_%g140552140573%_ _%g140553140576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140552140573%_
                                               _%g140553140576%_))))
                                      (_%g140552140573%_ _%g140553140576%_))))
                              (_%g140552140573%_ _%g140553140576%_))))
                      (_%g140552140573%_ _%g140553140576%_)))))
          (_%g140551140630%_ _%stx140550%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self140449%_ _%stx140450%_)
        (let* ((_%g140452140477%_
                (lambda (_%g140453140474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140453140474%_))))
               (_%g140451140546%_
                (lambda (_%g140453140480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140453140480%_))
                      (let ((_%e140458140482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140453140480%_))))
                        (let ((_%hd140459140485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140458140482%_)))
                              (_%tl140460140487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140458140482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140460140487%_))
                              (let ((_%e140461140490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140460140487%_))))
                                (let ((_%hd140462140493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140461140490%_)))
                                      (_%tl140463140495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140461140490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140463140495%_))
                                      (let ((_%e140464140498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140463140495%_))))
                                        (let ((_%hd140465140501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140464140498%_)))
                                              (_%tl140466140503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140464140498%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140466140503%_))
                                              (let ((_%e140467140506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140466140503%_))))
                                                (let ((_%hd140468140509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140467140506%_)))
                                                      (_%tl140469140511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140467140506%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140469140511%_))
                                                      (let ((_%e140470140514%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140469140511%_))))
                (let ((_%hd140471140517%_
                       (let () (declare (not safe)) (##car _%e140470140514%_)))
                      (_%tl140472140519%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140470140514%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140472140519%_))
                      ((lambda (_%L140522%_
                                _%L140523%_
                                _%L140524%_
                                _%L140525%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self140449%_
                                        _%L140523%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self140449%_
                                              _%L140522%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self140449%_
                                                    _%L140524%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self140449%_
                                                          _%L140525%_))
                                                       (cons ''#f '())))))))
                       _%hd140471140517%_
                       _%hd140468140509%_
                       _%hd140465140501%_
                       _%hd140462140493%_)
                      (_%g140452140477%_ _%g140453140480%_))))
              (_%g140452140477%_ _%g140453140480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140452140477%_
                                               _%g140453140480%_))))
                                      (_%g140452140477%_ _%g140453140480%_))))
                              (_%g140452140477%_ _%g140453140480%_))))
                      (_%g140452140477%_ _%g140453140480%_)))))
          (_%g140451140546%_ _%stx140450%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self140244%_ _%stx140245%_)
        (let* ((_%g140247140268%_
                (lambda (_%g140248140265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140248140265%_))))
               (_%g140246140446%_
                (lambda (_%g140248140271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140248140271%_))
                      (let ((_%e140252140273%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140248140271%_))))
                        (let ((_%hd140253140276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140252140273%_)))
                              (_%tl140254140278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140252140273%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140254140278%_))
                              (let ((_%e140255140281%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140254140278%_))))
                                (let ((_%hd140256140284%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140255140281%_)))
                                      (_%tl140257140286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140255140281%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140257140286%_))
                                      (let ((_%e140258140289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140257140286%_))))
                                        (let ((_%hd140259140292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140258140289%_)))
                                              (_%tl140260140294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140258140289%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140260140294%_))
                                              (let ((_%e140261140297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140260140294%_))))
                                                (let ((_%hd140262140300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140261140297%_)))
                                                      (_%tl140263140302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140261140297%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140263140302%_))
                                                      ((lambda (_%L140305%_
                                                                _%L140306%_
                                                                _%L140307%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self140244%_
                                    _%L140305%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self140244%_
                                          _%L140306%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp140325%_ ((_%rest140328%_
                                         (cons _%L140306%_
                                               (cons _%L140305%_ '())))
                                        (_%bind140330%_ '())
                                        (_%args140331%_ '()))
                       (let* ((_%rest140332140340%_ _%rest140328%_)
                              (_%else140334140348%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind140330%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp148553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp148553 _%args140331%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K140336140434%_
                               (lambda (_%rest140351%_ _%e140352%_)
                                 (let* ((_%__stx148190148191%_ _%e140352%_)
                                        (_%g140357140375%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148190148191%_)))))
                                   (let ((_%__kont148192148193%_
                                          (lambda ()
                                            (_%lp140325%_
                                             _%rest140351%_
                                             _%bind140330%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140352%_))
                                                   _%args140331%_))))
                                         (_%__kont148194148195%_
                                          (lambda ()
                                            (_%lp140325%_
                                             _%rest140351%_
                                             _%bind140330%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140352%_))
                                                   _%args140331%_))))
                                         (_%__kont148196148197%_
                                          (lambda ()
                                            (let ((_%tmp140382%_
                                                   (let ((__tmp148554
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp148554))))
                                              (_%lp140325%_
                                               _%rest140351%_
                                               (cons (cons _%tmp140382%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e140352%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140330%_)
                                               (cons _%tmp140382%_
                                                     _%args140331%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148190148191%_))
                                         (let ((_%e140359140413%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148190148191%_))))
                                           (let ((_%tl140361140418%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140359140413%_)))
                                                 (_%hd140360140416%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140359140413%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd140360140416%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd140360140416%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl140361140418%_))
                                                         (let ((_%e140362140421%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl140361140418%_))))
                   (let ((_%tl140364140426%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e140362140421%_)))
                         (_%hd140363140424%_
                          (let ()
                            (declare (not safe))
                            (##car _%e140362140421%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140364140426%_))
                         (_%__kont148192148193%_)
                         (_%__kont148196148197%_))))
                 (_%__kont148196148197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd140360140416%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140361140418%_))
                     (let ((_%e140368140398%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140361140418%_))))
                       (let ((_%tl140370140403%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140368140398%_)))
                             (_%hd140369140401%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140368140398%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140370140403%_))
                             (_%__kont148194148195%_)
                             (_%__kont148196148197%_))))
                     (_%__kont148196148197%_))
                 (_%__kont148196148197%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148196148197%_))))
                                         (_%__kont148196148197%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest140332140340%_))
                             (let ((_%hd140337140437%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest140332140340%_)))
                                   (_%tl140338140439%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest140332140340%_))))
                               (let* ((_%e140442%_ _%hd140337140437%_)
                                      (_%rest140444%_ _%tl140338140439%_))
                                 (_%K140336140434%_
                                  _%rest140444%_
                                  _%e140442%_)))
                             (_%else140334140348%_))))))
               _%hd140262140300%_
               _%hd140259140292%_
               _%hd140256140284%_)
              (_%g140247140268%_ _%g140248140271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140247140268%_
                                               _%g140248140271%_))))
                                      (_%g140247140268%_ _%g140248140271%_))))
                              (_%g140247140268%_ _%g140248140271%_))))
                      (_%g140247140268%_ _%g140248140271%_)))))
          (_%g140246140446%_ _%stx140245%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self140023%_ _%stx140024%_)
        (let* ((_%g140026140051%_
                (lambda (_%g140027140048%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140027140048%_))))
               (_%g140025140241%_
                (lambda (_%g140027140054%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140027140054%_))
                      (let ((_%e140032140056%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140027140054%_))))
                        (let ((_%hd140033140059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140032140056%_)))
                              (_%tl140034140061%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140032140056%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140034140061%_))
                              (let ((_%e140035140064%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140034140061%_))))
                                (let ((_%hd140036140067%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140035140064%_)))
                                      (_%tl140037140069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140035140064%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140037140069%_))
                                      (let ((_%e140038140072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140037140069%_))))
                                        (let ((_%hd140039140075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140038140072%_)))
                                              (_%tl140040140077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140038140072%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140040140077%_))
                                              (let ((_%e140041140080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140040140077%_))))
                                                (let ((_%hd140042140083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140041140080%_)))
                                                      (_%tl140043140085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140041140080%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140043140085%_))
                                                      (let ((_%e140044140088%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140043140085%_))))
                (let ((_%hd140045140091%_
                       (let () (declare (not safe)) (##car _%e140044140088%_)))
                      (_%tl140046140093%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140044140088%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140046140093%_))
                      ((lambda (_%L140096%_
                                _%L140097%_
                                _%L140098%_
                                _%L140099%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140023%_
                                            _%L140097%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140023%_
                                                  _%L140096%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140023%_
                                                        _%L140098%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp140120%_ ((_%rest140123%_
                                                 (cons _%L140098%_
                                                       (cons _%L140096%_
                                                             (cons _%L140097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind140125%_ '())
                                                (_%args140126%_ '()))
                               (let* ((_%rest140127140135%_ _%rest140123%_)
                                      (_%else140129140143%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind140125%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148555 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp148555 _%args140126%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K140131140229%_
                                       (lambda (_%rest140146%_ _%e140147%_)
                                         (let* ((_%__stx148236148237%_
                                                 _%e140147%_)
                                                (_%g140152140170%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx148236148237%_)))))
                                           (let ((_%__kont148238148239%_
                                                  (lambda ()
                                                    (_%lp140120%_
                                                     _%rest140146%_
                                                     _%bind140125%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140147%_))
                                                           _%args140126%_))))
                                                 (_%__kont148240148241%_
                                                  (lambda ()
                                                    (_%lp140120%_
                                                     _%rest140146%_
                                                     _%bind140125%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140147%_))
                                                           _%args140126%_))))
                                                 (_%__kont148242148243%_
                                                  (lambda ()
                                                    (let ((_%tmp140177%_
                                                           (let ((__tmp148556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp148556))))
              (_%lp140120%_
               _%rest140146%_
               (cons (cons _%tmp140177%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e140147%_))
                                 '()))
                     _%bind140125%_)
               (cons _%tmp140177%_ _%args140126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx148236148237%_))
                                                 (let ((_%e140154140208%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx148236148237%_))))
                                                   (let ((_%tl140156140213%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140154140208%_)))
                                                         (_%hd140155140211%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140154140208%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd140155140211%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd140155140211%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140156140213%_))
                         (let ((_%e140157140216%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140156140213%_))))
                           (let ((_%tl140159140221%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140157140216%_)))
                                 (_%hd140158140219%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140157140216%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140159140221%_))
                                 (_%__kont148238148239%_)
                                 (_%__kont148242148243%_))))
                         (_%__kont148242148243%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd140155140211%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl140156140213%_))
                             (let ((_%e140163140193%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl140156140213%_))))
                               (let ((_%tl140165140198%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e140163140193%_)))
                                     (_%hd140164140196%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e140163140193%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl140165140198%_))
                                     (_%__kont148240148241%_)
                                     (_%__kont148242148243%_))))
                             (_%__kont148242148243%_))
                         (_%__kont148242148243%_)))
                 (_%__kont148242148243%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148242148243%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest140127140135%_))
                                     (let ((_%hd140132140232%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest140127140135%_)))
                                           (_%tl140133140234%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest140127140135%_))))
                                       (let* ((_%e140237%_ _%hd140132140232%_)
                                              (_%rest140239%_
                                               _%tl140133140234%_))
                                         (_%K140131140229%_
                                          _%rest140239%_
                                          _%e140237%_)))
                                     (_%else140129140143%_))))))
                       _%hd140045140091%_
                       _%hd140042140083%_
                       _%hd140039140075%_
                       _%hd140036140067%_)
                      (_%g140026140051%_ _%g140027140054%_))))
              (_%g140026140051%_ _%g140027140054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140026140051%_
                                               _%g140027140054%_))))
                                      (_%g140026140051%_ _%g140027140054%_))))
                              (_%g140026140051%_ _%g140027140054%_))))
                      (_%g140026140051%_ _%g140027140054%_)))))
          (_%g140025140241%_ _%stx140024%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self139862%_ _%stx139863%_)
        (letrec ((_%import-set-template139865%_
                  (lambda (_%in139968%_ _%phi139969%_)
                    (let ((_%iphi139971%_
                           (fx+ _%phi139969%_
                                (##direct-structure-ref
                                 _%in139968%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports139972%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in139968%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp139974%_ ((_%rest139976%_ _%imports139972%_)
                                         (_%r139977%_ '()))
                        (let* ((_%rest139978139986%_ _%rest139976%_)
                               (_%else139980139994%_ (lambda () _%r139977%_))
                               (_%K139982140011%_
                                (lambda (_%rest139997%_ _%in139998%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in139998%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi139971%_))
                                          (_%lp139974%_
                                           _%rest139997%_
                                           (cons _%in139998%_ _%r139977%_))
                                          (_%lp139974%_
                                           _%rest139997%_
                                           _%r139977%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in139998%_
                                             'gx#module-import::t))
                                          (let ((_%iphi140002%_
                                                 (fx+ _%phi139969%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in139998%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi140002%_))
                                                (_%lp139974%_
                                                 _%rest139997%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in139998%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r139977%_))
                                                (_%lp139974%_
                                                 _%rest139997%_
                                                 _%r139977%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in139998%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi140005%_
                                                     (fx+ _%iphi139971%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in139998%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi140005%_))
                                                    (_%lp139974%_
                                                     _%rest139997%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139998%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r139977%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi140005%_))
                                                        (_%lp139974%_
                                                         _%rest139997%_
                                                         (let ((__tmp148557
                                                                (_%import-set-template139865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in139998%_
                         _%iphi139971%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r139977%_ __tmp148557)))
                (_%lp139974%_ _%rest139997%_ _%r139977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp139974%_
                                               _%rest139997%_
                                               _%r139977%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest139978139986%_))
                              (let ((_%hd139983140014%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest139978139986%_)))
                                    (_%tl139984140016%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest139978139986%_))))
                                (let* ((_%in140019%_ _%hd139983140014%_)
                                       (_%rest140021%_ _%tl139984140016%_))
                                  (_%K139982140011%_
                                   _%rest140021%_
                                   _%in140019%_)))
                              (_%else139980139994%_))))))))
          (let* ((_%g139867139877%_
                  (lambda (_%g139868139874%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139868139874%_))))
                 (_%g139866139965%_
                  (lambda (_%g139868139880%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139868139880%_))
                        (let ((_%e139870139882%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139868139880%_))))
                          (let ((_%hd139871139885%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139870139882%_)))
                                (_%tl139872139887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139870139882%_))))
                            ((lambda (_%L139890%_)
                               (let ((_%ht139901%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp139903%_ ((_%rest139905%_
                                                     _%L139890%_)
                                                    (_%loads139906%_ '()))
                                   (letrec ((_%K139908%_
                                             (lambda (_%ctx139958%_
                                                      _%rest139959%_)
                                               (let ((_%id139961%_
                                                      (##structure-ref
                                                       _%ctx139958%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht139901%_
                                                        _%id139961%_))
                                                     (_%lp139903%_
                                                      _%rest139959%_
                                                      _%loads139906%_)
                                                     (let ((_%rt139963%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id139961%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht139901%_
                                                          _%id139961%_
                                                          _%rt139963%_))
                                                       (_%lp139903%_
                                                        _%rest139959%_
                                                        (cons _%rt139963%_
                                                              _%loads139906%_))))))))
                                     (let* ((_%rest139909139917%_
                                             _%rest139905%_)
                                            (_%else139911139929%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp148559
                                                            (lambda (_%g139924139926%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139924139926%_)))
                   (__tmp148558 (reverse _%loads139906%_)))
               (declare (not safe))
               (##map __tmp148559 __tmp148558)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K139913139946%_
                                             (lambda (_%rest139932%_
                                                      _%in139933%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in139933%_
                                                      'gx#module-context::t))
                                                   (_%K139908%_
                                                    _%in139933%_
                                                    _%rest139932%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in139933%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in139933%_
                               '3
                               '#f
                               '#f)))
                   (_%K139908%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in139933%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest139932%_)
                   (_%lp139903%_ _%rest139932%_ _%loads139906%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in139933%_
                      'gx#import-set::t))
                   (let ((_%phi139938%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in139933%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi139938%_)
                         (_%K139908%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in139933%_
                             '1
                             '#f
                             '#f))
                          _%rest139932%_)
                         (if (fxpositive? _%phi139938%_)
                             (let ((_%deps139942%_
                                    (_%import-set-template139865%_
                                     _%in139933%_
                                     '0)))
                               (_%lp139903%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest139932%_
                                   _%deps139942%_))
                                _%loads139906%_))
                             (_%lp139903%_ _%rest139932%_ _%loads139906%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx139863%_
                      _%in139933%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest139909139917%_))
                                           (let ((_%hd139914139949%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest139909139917%_)))
                                                 (_%tl139915139951%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest139909139917%_))))
                                             (let* ((_%in139954%_
                                                     _%hd139914139949%_)
                                                    (_%rest139956%_
                                                     _%tl139915139951%_))
                                               (_%K139913139946%_
                                                _%rest139956%_
                                                _%in139954%_)))
                                           (_%else139911139929%_)))))))
                             _%tl139872139887%_)))
                        (_%g139867139877%_ _%g139868139880%_)))))
            (_%g139866139965%_ _%stx139863%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self139675%_ _%stx139676%_)
        (letrec ((_%add-lift!139678%_
                  (lambda (_%expr139860%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr139860%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote139679%_
                  (lambda (_%id139857%_ _%marks139858%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id139857%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks139858%_
                                                        '()))))))))
                 (_%generate-simple139680%_
                  (lambda (_%stxq139852%_)
                    (let ((_%gid139854%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid139855%_
                           (gxc#generate-runtime-identifier _%stxq139852%_)))
                      (_%add-lift!139678%_
                       (cons 'define
                             (cons _%gid139854%_
                                   (cons (_%generate-syntax-quote139679%_
                                          _%qid139855%_
                                          ''())
                                         '()))))
                      (let ((__tmp148560
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp148560 _%stxq139852%_ _%gid139854%_))
                      _%gid139854%_)))
                 (_%generate-serialized139681%_
                  (lambda (_%stxq139842%_ _%marks139843%_)
                    (let* ((_%mark-refs139845%_
                            (map _%generate-mark139682%_ _%marks139843%_))
                           (_%gid139847%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid139849%_
                            (gxc#generate-runtime-identifier _%stxq139842%_)))
                      (_%add-lift!139678%_
                       (cons 'define
                             (cons _%gid139847%_
                                   (cons (_%generate-syntax-quote139679%_
                                          _%qid139849%_
                                          (cons 'list _%mark-refs139845%_))
                                         '()))))
                      (let ((__tmp148561
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp148561 _%stxq139842%_ _%gid139847%_))
                      _%gid139847%_)))
                 (_%generate-mark139682%_
                  (lambda (_%mark139827%_)
                    (let ((_%$e139829%_
                           (let ((__tmp148562
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp148562 _%mark139827%_))))
                      (if _%$e139829%_
                          _%$e139829%_
                          (let* ((_%gid139833%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr139835%_
                                  (_%serialize-mark139683%_ _%mark139827%_))
                                 (_%ctx139837%_
                                  (let ((__tmp148563
                                         (##structure-ref
                                          _%mark139827%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp148563)))
                                 (_%ctx-ref139839%_
                                  (if (eq? _%ctx139837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref139684%_
                                                               _%ctx139837%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp148564
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp148564
                               _%mark139827%_
                               _%gid139833%_))
                            (_%add-lift!139678%_
                             (cons 'define
                                   (cons _%gid139833%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr139835%_ '()))
                   (cons _%ctx-ref139839%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid139833%_)))))
                 (_%serialize-mark139683%_
                  (lambda (_%mark139774%_)
                    (letrec ((_%quote-e139776%_
                              (lambda (_%sym139825%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym139825%_))
                                    _%sym139825%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym139825%_))))))
                      (let* ((_%mark139777139786%_ _%mark139774%_)
                             (_%E139779139790%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark139777139786%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K139780139802%_
                              (lambda (_%trace139793%_
                                       _%phi139794%_
                                       _%ctx139795%_
                                       _%subst139796%_)
                                (let ((_%subs139798%_
                                       (if _%subst139796%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst139796%_))
                                           '())))
                                  (cons _%phi139794%_
                                        (map (lambda (_%pair139800%_)
                                               (cons (_%quote-e139776%_
                                                      (car _%pair139800%_))
                                                     (_%quote-e139776%_
                                                      (cdr _%pair139800%_))))
                                             _%subs139798%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark139777139786%_
                               'gx#expander-mark::t))
                            (let* ((_%e139781139805%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139777139786%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst139808%_ _%e139781139805%_)
                                   (_%e139782139810%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139777139786%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx139813%_ _%e139782139810%_)
                                   (_%e139783139815%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139777139786%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi139818%_ _%e139783139815%_)
                                   (_%e139784139820%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139777139786%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace139823%_ _%e139784139820%_))
                              (_%K139780139802%_
                               _%trace139823%_
                               _%phi139818%_
                               _%ctx139813%_
                               _%subst139808%_))
                            (_%E139779139790%_))))))
                 (_%context-ref139684%_
                  (lambda (_%ctx139761%_)
                    (if (let ((__tmp148565
                               (##structure-ref
                                _%ctx139761%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp148565
                           'gx#module-context::t))
                        (let ((_%ctx-ref139763%_
                               (_%context-ref-nested139686%_ _%ctx139761%_))
                              (_%ctx-origin139764%_
                               (_%context-ref-origin139685%_ _%ctx139761%_))
                              (_%origin139765%_
                               (_%context-ref-origin139685%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin139765%_ _%ctx-origin139764%_)
                              (let ((_%ref139767%_
                                     (_%context-ref-nested139686%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp139769%_ ((_%ref139771%_
                                                    (cdr _%ref139767%_))
                                                   (_%ctx-ref139772%_
                                                    (cdr _%ctx-ref139763%_)))
                                  (if (and (pair? _%ref139771%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref139771%_))
                                                (car _%ctx-ref139772%_)))
                                      (_%lp139769%_
                                       (cdr _%ref139771%_)
                                       (cdr _%ctx-ref139772%_))
                                      (cons '#f _%ctx-ref139772%_))))
                              _%ctx-ref139763%_))
                        (let ((__tmp148566
                               (##structure-ref
                                _%ctx139761%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp148566)))))
                 (_%context-ref-origin139685%_
                  (lambda (_%ctx139753%_)
                    (let _%lp139755%_ ((_%ctx139757%_ _%ctx139753%_))
                      (let ((_%super139759%_
                             (##structure-ref
                              _%ctx139757%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super139759%_
                               'gx#module-context::t))
                            (_%lp139755%_ _%super139759%_)
                            _%ctx139757%_)))))
                 (_%context-ref-nested139686%_
                  (lambda (_%ctx139744%_)
                    (let _%lp139746%_ ((_%ctx139748%_ _%ctx139744%_)
                                       (_%r139749%_ '()))
                      (let ((_%super139751%_
                             (##structure-ref
                              _%ctx139748%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super139751%_
                               'gx#module-context::t))
                            (_%lp139746%_
                             _%super139751%_
                             (cons (car (##structure-ref
                                         _%ctx139748%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r139749%_))
                            (cons (let ((__tmp148567
                                         (##structure-ref
                                          _%ctx139748%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp148567))
                                  _%r139749%_)))))))
          (let* ((_%g139688139701%_
                  (lambda (_%g139689139698%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139689139698%_))))
                 (_%g139687139741%_
                  (lambda (_%g139689139704%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139689139704%_))
                        (let ((_%e139691139706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139689139704%_))))
                          (let ((_%hd139692139709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139691139706%_)))
                                (_%tl139693139711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139691139706%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139693139711%_))
                                (let ((_%e139694139714%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139693139711%_))))
                                  (let ((_%hd139695139717%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139694139714%_)))
                                        (_%tl139696139719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139694139714%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139696139719%_))
                                        ((lambda (_%L139722%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L139722%_))
                                               (let ((_%$e139735%_
                                                      (let ((__tmp148568
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp148568 _%L139722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e139735%_
                                                     _%$e139735%_
                                                     (let ((_%marks139739%_
                                                            (##direct-structure-ref
                                                             _%L139722%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks139739%_)
                                                           (_%generate-simple139680%_
                                                            _%L139722%_)
                                                           (_%generate-serialized139681%_
                                                            _%L139722%_
                                                            _%marks139739%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L139722%_))))
                                         _%hd139695139717%_)
                                        (_%g139688139701%_
                                         _%g139689139704%_))))
                                (_%g139688139701%_ _%g139689139704%_))))
                        (_%g139688139701%_ _%g139689139704%_)))))
            (_%g139687139741%_ _%stx139676%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self139607%_ _%stx139608%_)
        (let* ((_%g139610139627%_
                (lambda (_%g139611139624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139611139624%_))))
               (_%g139609139672%_
                (lambda (_%g139611139630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139611139630%_))
                      (let ((_%e139614139632%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139611139630%_))))
                        (let ((_%hd139615139635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139614139632%_)))
                              (_%tl139616139637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139614139632%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139616139637%_))
                              (let ((_%e139617139640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139616139637%_))))
                                (let ((_%hd139618139643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139617139640%_)))
                                      (_%tl139619139645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139617139640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139619139645%_))
                                      (let ((_%e139620139648%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139619139645%_))))
                                        (let ((_%hd139621139651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139620139648%_)))
                                              (_%tl139622139653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139620139648%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139622139653%_))
                                              ((lambda (_%L139656%_
                                                        _%L139657%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L139657%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self139607%_ _%L139656%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139621139651%_
                                               _%hd139618139643%_)
                                              (_%g139610139627%_
                                               _%g139611139630%_))))
                                      (_%g139610139627%_ _%g139611139630%_))))
                              (_%g139610139627%_ _%g139611139630%_))))
                      (_%g139610139627%_ _%g139611139630%_)))))
          (_%g139609139672%_ _%stx139608%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self139556%_ _%stx139557%_)
        (let* ((_%g139559139569%_
                (lambda (_%g139560139566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139560139566%_))))
               (_%g139558139604%_
                (lambda (_%g139560139572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139560139572%_))
                      (let ((_%e139562139574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139560139572%_))))
                        (let ((_%hd139563139577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139562139574%_)))
                              (_%tl139564139579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139562139574%_))))
                          ((lambda (_%L139582%_)
                             (let* ((_%c-body139596%_
                                     (map (lambda (_%g139591139593%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self139556%_
                                               _%g139591139593%_)))
                                          _%L139582%_))
                                    (_%c-body139601%_
                                     (let ((__tmp148569
                                            (lambda (_%$obj139598%_)
                                              (not (eq? _%$obj139598%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp148569
                                        _%c-body139596%_))))
                               (cons '%#begin _%c-body139601%_)))
                           _%tl139564139579%_)))
                      (_%g139559139569%_ _%g139560139572%_)))))
          (_%g139558139604%_ _%stx139557%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self139461%_ _%stx139462%_)
        (let* ((_%g139464139474%_
                (lambda (_%g139465139471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139465139471%_))))
               (_%g139463139553%_
                (lambda (_%g139465139477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139465139477%_))
                      (let ((_%e139467139479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139465139477%_))))
                        (let ((_%hd139468139482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139467139479%_)))
                              (_%tl139469139484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139467139479%_))))
                          ((lambda (_%L139487%_)
                             (let* ((_%phi139497%_
                                     (let ((__tmp148570
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp148570 '1)))
                                    (_%block139499%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self139461%_ 'state))
                                      _%phi139497%_))
                                    (_%compiled139502%_
                                     (let ((__tmp148571
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self139461%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L139487%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp148571
                                        gx#current-expander-phi
                                        _%phi139497%_)))
                                    (_%g139505139515%_
                                     (lambda (_%g139506139512%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g139506139512%_))))
                                    (_%g139504139550%_
                                     (lambda (_%g139506139518%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g139506139518%_))
                                           (let ((_%e139508139520%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g139506139518%_))))
                                             (let ((_%hd139509139523%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139508139520%_)))
                                                   (_%tl139510139525%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139508139520%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139509139523%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd139509139523%_))
                                                       ((lambda (_%L139528%_)
                                                          (let ((_%c-body139545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj139542%_)
                                   (not (eq? _%$obj139542%_ '#!void)))
                                 _%L139528%_)))
                    (if _%block139499%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block139499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body139545%_))
                        (if (null? _%c-body139545%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body139545%_)))))
                _%tl139510139525%_)
               (_%g139505139515%_ _%g139506139518%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g139505139515%_
                                                    _%g139506139518%_))))
                                           (_%g139505139515%_
                                            _%g139506139518%_)))))
                               (_%g139504139550%_ _%compiled139502%_)))
                           _%tl139469139484%_)))
                      (_%g139464139474%_ _%g139465139477%_)))))
          (_%g139463139553%_ _%stx139462%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self139392%_ _%stx139393%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139392%_ 'state)))
        (let* ((_%g139395139409%_
                (lambda (_%g139396139406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139396139406%_))))
               (_%g139394139458%_
                (lambda (_%g139396139412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139396139412%_))
                      (let ((_%e139399139414%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139396139412%_))))
                        (let ((_%hd139400139417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139399139414%_)))
                              (_%tl139401139419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139399139414%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139401139419%_))
                              (let ((_%e139402139422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139401139419%_))))
                                (let ((_%hd139403139425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139402139422%_)))
                                      (_%tl139404139427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139402139422%_))))
                                  ((lambda (_%L139430%_ _%L139431%_)
                                     (let ((_%key139444%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L139431%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key139444%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx139393%_
                                              _%L139431%_
                                              _%key139444%_)))
                                       (let* ((_%ctx139446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L139431%_)))
                                              (_%code139449%_
                                               (let ((__tmp148572
                                                      (lambda ()
                                                        (let ((__tmp148573
                                                               (##structure-ref
                                                                _%ctx139446%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self139392%_
                                                           __tmp148573)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp148572
                                                  gx#current-expander-context
                                                  _%ctx139446%_)))
                                              (_%rt139451%_
                                               (let ((__tmp148574
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp148574
                                                  _%ctx139446%_)))
                                              (_%loader139453%_
                                               (if _%rt139451%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt139451%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid139455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L139431%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self139392%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid139455%_
                                                     (cons _%code139449%_
                                                           _%loader139453%_))))))
                                   _%tl139404139427%_
                                   _%hd139403139425%_)))
                              (_%g139395139409%_ _%g139396139412%_))))
                      (_%g139395139409%_ _%g139396139412%_)))))
          (_%g139394139458%_ _%stx139393%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx139379%_ _%context-chain139380%_)
        (let _%lp139382%_ ((_%ctx139384%_ _%ctx139379%_) (_%path139385%_ '()))
          (let ((_%super139387%_
                 (##structure-ref _%ctx139384%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super139387%_ _%context-chain139380%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx139384%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path139385%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super139387%_
                       'gx#module-context::t))
                    (_%lp139382%_
                     _%super139387%_
                     (cons (car (##structure-ref
                                 _%ctx139384%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path139385%_))
                    (cons (let ((__tmp148575
                                 (##structure-ref
                                  _%ctx139384%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp148575))
                          _%path139385%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp139372%_ ((_%ctx139374%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r139375%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx139374%_ 'gx#module-context::t))
              (_%lp139372%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx139374%_ '3 '#f '#f))
               (cons _%ctx139374%_ _%r139375%_))
              _%r139375%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self139135%_ _%stx139136%_)
        (letrec* ((_%context-chain139138%_ (gxc#current-context-chain))
                  (_%make-import-spec139139%_
                   (lambda (_%in139308%_)
                     (let* ((_%in139309139321%_ _%in139308%_)
                            (_%E139311139325%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in139309139321%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K139312139335%_
                             (lambda (_%phi139328%_
                                      _%name139329%_
                                      _%src-name139330%_
                                      _%src-phi139331%_
                                      _%src-key139332%_
                                      _%src-ctx139333%_)
                               (cons _%phi139328%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name139329%_)
                                           (cons _%src-phi139331%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name139330%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in139309139321%_
                              'gx#module-import::t))
                           (let ((_%e139313139338%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in139309139321%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e139313139338%_
                                    'gx#module-export::t))
                                 (let* ((_%e139316139341%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139313139338%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx139344%_ _%e139316139341%_)
                                        (_%e139317139346%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139313139338%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key139349%_ _%e139317139346%_)
                                        (_%e139318139351%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139313139338%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi139354%_ _%e139318139351%_)
                                        (_%e139319139356%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139313139338%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name139359%_ _%e139319139356%_)
                                        (_%e139314139361%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139309139321%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name139364%_ _%e139314139361%_)
                                        (_%e139315139366%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139309139321%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi139369%_ _%e139315139366%_))
                                   (_%K139312139335%_
                                    _%phi139369%_
                                    _%name139364%_
                                    _%src-name139359%_
                                    _%src-phi139354%_
                                    _%src-key139349%_
                                    _%src-ctx139344%_))
                                 (_%E139311139325%_)))
                           (_%E139311139325%_)))))
                  (_%make-import-path139140%_
                   (lambda (_%ctx139306%_)
                     (gxc#generate-meta-import-path
                      _%ctx139306%_
                      _%context-chain139138%_)))
                  (_%make-import-spec-in139141%_
                   (lambda (_%ctx139303%_ _%in139304%_)
                     (cons 'spec:
                           (cons (_%make-import-path139140%_ _%ctx139303%_)
                                 (reverse _%in139304%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self139135%_ 'state)))
          (let* ((_%g139143139153%_
                  (lambda (_%g139144139150%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139144139150%_))))
                 (_%g139142139300%_
                  (lambda (_%g139144139156%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139144139156%_))
                        (let ((_%e139146139158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139144139156%_))))
                          (let ((_%hd139147139161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139146139158%_)))
                                (_%tl139148139163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139146139158%_))))
                            ((lambda (_%L139166%_)
                               (let _%lp139177%_ ((_%rest139179%_ _%L139166%_)
                                                  (_%current-src139180%_ '#f)
                                                  (_%current-in139181%_ '())
                                                  (_%r139182%_ '()))
                                 (let* ((_%rest139183139191%_ _%rest139179%_)
                                        (_%else139185139201%_
                                         (lambda ()
                                           (let ((_%r139199%_
                                                  (if _%current-src139180%_
                                                      (cons (_%make-import-spec-in139141%_
                                                             _%current-src139180%_
                                                             _%current-in139181%_)
                                                            _%r139182%_)
                                                      _%r139182%_)))
                                             (cons '%#import
                                                   (reverse _%r139199%_)))))
                                        (_%K139187139288%_
                                         (lambda (_%rest139204%_ _%in139205%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in139205%_
                                                  'gx#module-import::t))
                                               (let* ((_%in139207139214%_
                                                       _%in139205%_)
                                                      (_%E139209139218%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in139207139214%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K139210139226%_
               (lambda (_%src-ctx139221%_)
                 (if (eq? _%current-src139180%_ _%src-ctx139221%_)
                     (_%lp139177%_
                      _%rest139204%_
                      _%current-src139180%_
                      (cons (_%make-import-spec139139%_ _%in139205%_)
                            _%current-in139181%_)
                      _%r139182%_)
                     (if _%current-src139180%_
                         (_%lp139177%_
                          _%rest139204%_
                          _%src-ctx139221%_
                          (cons (_%make-import-spec139139%_ _%in139205%_) '())
                          (cons (_%make-import-spec-in139141%_
                                 _%current-src139180%_
                                 _%current-in139181%_)
                                _%r139182%_))
                         (_%lp139177%_
                          _%rest139204%_
                          _%src-ctx139221%_
                          (cons (_%make-import-spec139139%_ _%in139205%_) '())
                          _%r139182%_)))))
              (_%e139211139229%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in139207139214%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e139211139229%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139212139232%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e139211139229%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx139235%_ _%e139212139232%_))
               (_%K139210139226%_ _%src-ctx139235%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E139209139218%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in139205%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi139238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139205%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src139240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139205%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in139280%_
                                                           (let* ((_%g139241139250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path139140%_ _%src139240%_))
                          (_%E139244139254%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g139241139250%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K139246139270%_
                            (lambda (_%path139268%_) _%path139268%_))
                           (_%K139245139260%_
                            (lambda (_%path139258%_)
                              (cons 'in: _%path139258%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g139241139250%_))
                           (let ((_%tl139248139275%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139241139250%_)))
                                 (_%hd139247139273%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139241139250%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl139248139275%_))
                                 (let ((_%path139278%_ _%hd139247139273%_))
                                   (_%K139246139270%_ _%path139278%_))
                                 (let ((_%path139263%_ _%g139241139250%_))
                                   (_%K139245139260%_ _%path139263%_))))
                           (let ((_%path139263%_ _%g139241139250%_))
                             (_%K139245139260%_ _%path139263%_))))))
                  (_%r139282%_
                   (if _%current-src139180%_
                       (cons (_%make-import-spec-in139141%_
                              _%current-src139180%_
                              _%current-in139181%_)
                             _%r139182%_)
                       _%r139182%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp139177%_
                                                      _%rest139204%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi139238%_)
                                                                _%src-in139280%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi139238%_
                                    (cons _%src-in139280%_ '()))))
                    _%r139282%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in139205%_
                                                          'gx#module-context::t))
                                                       (let ((_%r139286%_
                                                              (if _%current-src139180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in139141%_
                                 _%current-src139180%_
                                 _%current-in139181%_)
                                _%r139182%_)
                          _%r139182%_)))
                 (_%lp139177%_
                  _%rest139204%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path139140%_ _%in139205%_))
                        _%r139286%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest139183139191%_))
                                       (let ((_%hd139188139291%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139183139191%_)))
                                             (_%tl139189139293%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139183139191%_))))
                                         (let* ((_%in139296%_
                                                 _%hd139188139291%_)
                                                (_%rest139298%_
                                                 _%tl139189139293%_))
                                           (_%K139187139288%_
                                            _%rest139298%_
                                            _%in139296%_)))
                                       (_%else139185139201%_)))))
                             _%tl139148139163%_)))
                        (_%g139143139153%_ _%g139144139156%_)))))
            (_%g139142139300%_ _%stx139136%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self138945%_ _%stx138946%_)
        (letrec* ((_%context-chain138948%_ (gxc#current-context-chain))
                  (_%make-import-path138949%_
                   (lambda (_%ctx139133%_)
                     (gxc#generate-meta-import-path
                      _%ctx139133%_
                      _%context-chain138948%_))))
          (let* ((_%g138951138961%_
                  (lambda (_%g138952138958%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138952138958%_))))
                 (_%g138950139130%_
                  (lambda (_%g138952138964%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138952138964%_))
                        (let ((_%e138954138966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138952138964%_))))
                          (let ((_%hd138955138969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138954138966%_)))
                                (_%tl138956138971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138954138966%_))))
                            ((lambda (_%L138974%_)
                               (let _%lp138985%_ ((_%rest138987%_ _%L138974%_)
                                                  (_%r138988%_ '()))
                                 (let* ((_%rest138989138997%_ _%rest138987%_)
                                        (_%else138991139005%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r138988%_))))
                                        (_%K138993139118%_
                                         (lambda (_%rest139008%_ _%out139009%_)
                                           (let* ((_%out139010139023%_
                                                   _%out139009%_)
                                                  (_%E139013139027%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out139010139023%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K139017139097%_
                                                    (lambda (_%name139093%_
                                                             _%phi139094%_
                                                             _%key139095%_)
                                                      (_%lp138985%_
                                                       _%rest139008%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi139094%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key139095%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name139093%_)
                                             '()))))
                     _%r138988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K139014139077%_
                                                    (lambda (_%phi139031%_
                                                             _%src139032%_)
                                                      (let* ((_%out139072%_
                                                              (if _%src139032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g139033139042%_
                                              (_%make-import-path138949%_
                                               _%src139032%_))
                                             (_%E139036139046%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g139033139042%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K139038139062%_
                                               (lambda (_%path139060%_)
                                                 _%path139060%_))
                                              (_%K139037139052%_
                                               (lambda (_%path139050%_)
                                                 (cons 'in: _%path139050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g139033139042%_))
                                              (let ((_%tl139040139067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g139033139042%_)))
                                                    (_%hd139039139065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g139033139042%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139040139067%_))
                                                    (let ((_%path139070%_
                                                           _%hd139039139065%_))
                                                      (_%K139038139062%_
                                                       _%path139070%_))
                                                    (let ((_%path139055%_
                                                           _%g139033139042%_))
                                                      (_%K139037139052%_
                                                       _%path139055%_))))
                                              (let ((_%path139055%_
                                                     _%g139033139042%_))
                                                (_%K139037139052%_
                                                 _%path139055%_)))))
                                      '()))
                          '#t))
                     (_%out139074%_
                      (if (fxzero? _%phi139031%_)
                          _%out139072%_
                          (cons 'phi:
                                (cons _%phi139031%_
                                      (cons _%out139072%_ '()))))))
                (_%lp138985%_
                 _%rest139008%_
                 (cons _%out139074%_ _%r138988%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match139012139090%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out139010139023%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e139015139080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139010139023%_
                               '1
                               '#f
                               '#f)))
                           (_%e139016139085%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139010139023%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src139083%_ _%e139015139080%_)
                            (_%phi139088%_ _%e139016139085%_))
                        (_%K139014139077%_ _%phi139088%_ _%src139083%_)))
                    (_%E139013139027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out139010139023%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139018139100%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out139010139023%_
                        '1
                        '#f
                        '#f)))
                    (_%e139019139103%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139010139023%_
                        '2
                        '#f
                        '#f)))
                    (_%e139020139108%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139010139023%_
                        '3
                        '#f
                        '#f)))
                    (_%e139021139113%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139010139023%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key139106%_ _%e139019139103%_)
                     (_%phi139111%_ _%e139020139108%_)
                     (_%name139116%_ _%e139021139113%_))
                 (_%K139017139097%_
                  _%name139116%_
                  _%phi139111%_
                  _%key139106%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match139012139090%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138989138997%_))
                                       (let ((_%hd138994139121%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138989138997%_)))
                                             (_%tl138995139123%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138989138997%_))))
                                         (let* ((_%out139126%_
                                                 _%hd138994139121%_)
                                                (_%rest139128%_
                                                 _%tl138995139123%_))
                                           (_%K138993139118%_
                                            _%rest139128%_
                                            _%out139126%_)))
                                       (_%else138991139005%_)))))
                             _%tl138956138971%_)))
                        (_%g138951138961%_ _%g138952138964%_)))))
            (_%g138950139130%_ _%stx138946%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self138906%_ _%stx138907%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138906%_ 'state)))
        (let* ((_%g138909138919%_
                (lambda (_%g138910138916%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138910138916%_))))
               (_%g138908138942%_
                (lambda (_%g138910138922%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138910138922%_))
                      (let ((_%e138912138924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138910138922%_))))
                        (let ((_%hd138913138927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138912138924%_)))
                              (_%tl138914138929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138912138924%_))))
                          ((lambda (_%L138932%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L138932%_)))
                           _%tl138914138929%_)))
                      (_%g138909138919%_ _%g138910138922%_)))))
          (_%g138908138942%_ _%stx138907%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self138777%_ _%stx138778%_)
        (letrec ((_%generate1138780%_
                  (lambda (_%id138901%_ _%eid138902%_)
                    (let ((_%eid138904%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid138902%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid138904%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx138778%_
                             _%eid138904%_)))
                      (cons (gxc#generate-runtime-identifier _%id138901%_)
                            (cons _%eid138904%_ '()))))))
          (let* ((_%g138782138810%_
                  (lambda (_%g138783138807%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138783138807%_))))
                 (_%g138781138898%_
                  (lambda (_%g138783138813%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138783138813%_))
                        (let ((_%e138786138815%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138783138813%_))))
                          (let ((_%hd138787138818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138786138815%_)))
                                (_%tl138788138820%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138786138815%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl138788138820%_))
                                (let ((_g148576_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl138788138820%_
                                          '0))))
                                  (begin
                                    (let ((_g148577_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g148576_)
                                                 (##vector-length _g148576_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g148577_ 2)))
                                          (error "Context expects 2 values"
                                                 _g148577_)))
                                    (let ((_%target138789138823%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g148576_ 0)))
                                          (_%tl138791138825%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g148576_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl138791138825%_))
                                          (letrec ((_%loop138792138828%_
                                                    (lambda (_%hd138790138831%_
                                                             _%eid138796138833%_
                                                             _%id138797138835%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd138790138831%_))
                                                          (let ((_%e138793138838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd138790138831%_))))
                    (let ((_%lp-hd138794138841%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138793138838%_)))
                          (_%lp-tl138795138843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138793138838%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd138794138841%_))
                          (let ((_%e138800138846%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd138794138841%_))))
                            (let ((_%hd138801138849%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138800138846%_)))
                                  (_%tl138802138851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138800138846%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl138802138851%_))
                                  (let ((_%e138803138854%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl138802138851%_))))
                                    (let ((_%hd138804138857%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138803138854%_)))
                                          (_%tl138805138859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138803138854%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl138805138859%_))
                                          (_%loop138792138828%_
                                           _%lp-tl138795138843%_
                                           (cons _%hd138804138857%_
                                                 _%eid138796138833%_)
                                           (cons _%hd138801138849%_
                                                 _%id138797138835%_))
                                          (_%g138782138810%_
                                           _%g138783138813%_))))
                                  (_%g138782138810%_ _%g138783138813%_))))
                          (_%g138782138810%_ _%g138783138813%_))))
                  (let ((_%eid138798138862%_ (reverse _%eid138796138833%_))
                        (_%id138799138864%_ (reverse _%id138797138835%_)))
                    ((lambda (_%L138867%_ _%L138868%_)
                       (cons '%#extern
                             (map _%generate1138780%_
                                  (let ((__tmp148578
                                         (lambda (_%g138883138886%_
                                                  _%g138884138888%_)
                                           (cons _%g138883138886%_
                                                 _%g138884138888%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp148578 '() _%L138868%_))
                                  (let ((__tmp148579
                                         (lambda (_%g138890138893%_
                                                  _%g138891138895%_)
                                           (cons _%g138890138893%_
                                                 _%g138891138895%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp148579 '() _%L138867%_)))))
                     _%eid138798138862%_
                     _%id138799138864%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop138792138828%_
                                             _%target138789138823%_
                                             '()
                                             '()))
                                          (_%g138782138810%_
                                           _%g138783138813%_)))))
                                (_%g138782138810%_ _%g138783138813%_))))
                        (_%g138782138810%_ _%g138783138813%_)))))
            (_%g138781138898%_ _%stx138778%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self138567%_ _%stx138568%_)
        (letrec ((_%generate1138570%_
                  (lambda (_%id138772%_)
                    (let ((_%eid138774%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id138772%_)))
                          (_%ident138775%_
                           (gxc#generate-runtime-identifier _%id138772%_)))
                      (cons '%#define-runtime
                            (cons _%ident138775%_ (cons _%eid138774%_ '()))))))
                 (_%generate*138571%_
                  (lambda (_%all138740%_)
                    (let* ((_%all138741138749%_ _%all138740%_)
                           (_%else138743138757%_
                            (lambda () (cons '%#begin _%all138740%_)))
                           (_%K138745138762%_
                            (lambda (_%one138760%_) _%one138760%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all138741138749%_))
                          (let ((_%hd138746138765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all138741138749%_)))
                                (_%tl138747138767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all138741138749%_))))
                            (let ((_%one138770%_ _%hd138746138765%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl138747138767%_))
                                  (_%K138745138762%_ _%one138770%_)
                                  (_%else138743138757%_))))
                          (_%else138743138757%_))))))
          (let* ((_%g138573138590%_
                  (lambda (_%g138574138587%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138574138587%_))))
                 (_%g138572138737%_
                  (lambda (_%g138574138593%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138574138593%_))
                        (let ((_%e138577138595%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138574138593%_))))
                          (let ((_%hd138578138598%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138577138595%_)))
                                (_%tl138579138600%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138577138595%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138579138600%_))
                                (let ((_%e138580138603%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138579138600%_))))
                                  (let ((_%hd138581138606%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138580138603%_)))
                                        (_%tl138582138608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138580138603%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138582138608%_))
                                        (let ((_%e138583138611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138582138608%_))))
                                          (let ((_%hd138584138614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138583138611%_)))
                                                (_%tl138585138616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138583138611%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138585138616%_))
                                                ((lambda (_%L138619%_
                                                          _%L138620%_)
                                                   (let _%lp138636%_ ((_%rest138638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L138620%_)
                              (_%r138639%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx148315148316%_
                                                             _%rest138638%_)
                                                            (_%g138644138661%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx148315148316%_)))))
               (let ((_%__kont148317148318%_
                      (lambda (_%L138724%_)
                        (_%lp138636%_ _%L138724%_ _%r138639%_)))
                     (_%__kont148319148320%_
                      (lambda (_%L138697%_ _%L138698%_)
                        (_%lp138636%_
                         _%L138697%_
                         (cons (_%generate1138570%_ _%L138698%_)
                               _%r138639%_))))
                     (_%__kont148321148322%_
                      (lambda (_%L138673%_)
                        (_%generate*138571%_
                         (let ((__tmp148580
                                (cons (_%generate1138570%_ _%L138673%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp148580 _%r138639%_)))))
                     (_%__kont148323148324%_
                      (lambda () (_%generate*138571%_ (reverse _%r138639%_)))))
                 (let ((_%g138642138684%_
                        (lambda ()
                          (let ((_%L138673%_ _%__stx148315148316%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L138673%_))
                                (_%__kont148321148322%_ _%L138673%_)
                                (_%__kont148323148324%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx148315148316%_))
                       (let ((_%e138647138713%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx148315148316%_))))
                         (let ((_%tl138649138718%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e138647138713%_)))
                               (_%hd138648138716%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e138647138713%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd138648138716%_))
                               (let ((_%e138650138721%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd138648138716%_))))
                                 (if (equal? _%e138650138721%_ '#f)
                                     (_%__kont148317148318%_
                                      _%tl138649138718%_)
                                     (_%__kont148319148320%_
                                      _%tl138649138718%_
                                      _%hd138648138716%_)))
                               (_%__kont148319148320%_
                                _%tl138649138718%_
                                _%hd138648138716%_))))
                       (let () (declare (not safe)) (_%g138642138684%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd138584138614%_
                                                 _%hd138581138606%_)
                                                (_%g138573138590%_
                                                 _%g138574138593%_))))
                                        (_%g138573138590%_
                                         _%g138574138593%_))))
                                (_%g138573138590%_ _%g138574138593%_))))
                        (_%g138573138590%_ _%g138574138593%_)))))
            (_%g138572138737%_ _%stx138568%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self138464%_ _%stx138465%_)
        (let* ((_%g138467138484%_
                (lambda (_%g138468138481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138468138481%_))))
               (_%g138466138564%_
                (lambda (_%g138468138487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138468138487%_))
                      (let ((_%e138471138489%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138468138487%_))))
                        (let ((_%hd138472138492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138471138489%_)))
                              (_%tl138473138494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138471138489%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138473138494%_))
                              (let ((_%e138474138497%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138473138494%_))))
                                (let ((_%hd138475138500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138474138497%_)))
                                      (_%tl138476138502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138474138497%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138476138502%_))
                                      (let ((_%e138477138505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138476138502%_))))
                                        (let ((_%hd138478138508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138477138505%_)))
                                              (_%tl138479138510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138477138505%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138479138510%_))
                                              ((lambda (_%L138513%_
                                                        _%L138514%_)
                                                 (let* ((_%eid138529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L138514%_)))
                                                        (_%phi138531%_
                                                         (let ((__tmp148581
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp148581 '1)))
                (_%block138533%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self138464%_ 'state))
                  _%phi138531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g138536138543%_
                                                           (lambda (_%g138537138540%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g138537138540%_))))
                  (_%g138535138561%_
                   (lambda (_%g138537138546%_)
                     ((lambda (_%L138548%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self138464%_ 'state))
                         _%phi138531%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L138548%_ (cons _%L138513%_ '())))))
                      _%g138537138546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g138535138561%_
                                                      _%eid138529%_))
                                                   (if _%block138533%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block138533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L138514%_)
                                             (cons _%eid138529%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L138514%_)
                           (cons _%eid138529%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138478138508%_
                                               _%hd138475138500%_)
                                              (_%g138467138484%_
                                               _%g138468138487%_))))
                                      (_%g138467138484%_ _%g138468138487%_))))
                              (_%g138467138484%_ _%g138468138487%_))))
                      (_%g138467138484%_ _%g138468138487%_)))))
          (_%g138466138564%_ _%stx138465%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self138396%_ _%stx138397%_)
        (let* ((_%g138399138416%_
                (lambda (_%g138400138413%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138400138413%_))))
               (_%g138398138461%_
                (lambda (_%g138400138419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138400138419%_))
                      (let ((_%e138403138421%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138400138419%_))))
                        (let ((_%hd138404138424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138403138421%_)))
                              (_%tl138405138426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138403138421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138405138426%_))
                              (let ((_%e138406138429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138405138426%_))))
                                (let ((_%hd138407138432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138406138429%_)))
                                      (_%tl138408138434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138406138429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138408138434%_))
                                      (let ((_%e138409138437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138408138434%_))))
                                        (let ((_%hd138410138440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138409138437%_)))
                                              (_%tl138411138442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138409138437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138411138442%_))
                                              ((lambda (_%L138445%_
                                                        _%L138446%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L138446%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L138445%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138410138440%_
                                               _%hd138407138432%_)
                                              (_%g138399138416%_
                                               _%g138400138419%_))))
                                      (_%g138399138416%_ _%g138400138419%_))))
                              (_%g138399138416%_ _%g138400138419%_))))
                      (_%g138399138416%_ _%g138400138419%_)))))
          (_%g138398138461%_ _%stx138397%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self138393%_ _%stx138394%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138393%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx138394%_)
        (gxc#generate-meta-define-values% _%self138393%_ _%stx138394%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self138390%_ _%stx138391%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138390%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx138391%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp148583 (list)) (__tmp148582 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp148583
         '(src n open blocks)
         __tmp148582
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args138387%_
        (apply make-instance gxc#meta-state::t _%$args138387%_)))
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
      (lambda (_%self137732138371%_ _%ctx138373%_)
        (let* ((_%self138375%_ _%self137732138371%_)
               (_%self138377%_ _%self138375%_))
          (if (let ((__tmp148584
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self138377%_))))
                (declare (not safe))
                (##fx< '4 __tmp148584))
              (begin
                (let ((__tmp148585
                       (let ((__tmp148586
                              (##structure-ref
                               _%ctx138373%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp148586))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138377%_
                   __tmp148585
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self138377%_ '1 '2 '#f '#f))
                (let ((__tmp148587
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138377%_
                   __tmp148587
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self138377%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp148588
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self138377%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self138377%_
                       '4
                       __tmp148588))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp148590 (list)) (__tmp148589 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp148590
         '(ctx phi n code)
         __tmp148589
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args138246%_
        (apply make-instance gxc#meta-state-block::t _%$args138246%_)))
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
      (lambda (_%state138205%_ _%phi138206%_)
        (let* ((_%state138207138215%_ _%state138205%_)
               (_%E138209138219%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state138207138215%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K138210138228%_
                (lambda (_%open138222%_ _%n138223%_ _%src138224%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open138222%_ _%phi138206%_))
                      '#f
                      (let ((_%block-ref138226%_
                             (let ((__tmp148591 (number->string _%n138223%_)))
                               (declare (not safe))
                               (##string-append
                                _%src138224%_
                                '"~"
                                __tmp148591))))
                        (##structure-set!
                         _%state138205%_
                         (let () (declare (not safe)) (##fx+ _%n138223%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp148592
                               (let ((__tmp148593
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp148593
                                  _%phi138206%_
                                  _%n138223%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open138222%_ _%phi138206%_ __tmp148592))
                        _%block-ref138226%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state138207138215%_
                 'gxc#meta-state::t))
              (let* ((_%e138211138231%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138207138215%_
                         '1
                         '#f
                         '#f)))
                     (_%src138234%_ _%e138211138231%_)
                     (_%e138212138236%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138207138215%_
                         '2
                         '#f
                         '#f)))
                     (_%n138239%_ _%e138212138236%_)
                     (_%e138213138241%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138207138215%_
                         '3
                         '#f
                         '#f)))
                     (_%open138244%_ _%e138213138241%_))
                (_%K138210138228%_ _%open138244%_ _%n138239%_ _%src138234%_))
              (_%E138209138219%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state138199%_ _%phi138200%_ _%stx138201%_)
        (let ((_%block138203%_
               (let ((__tmp148594
                      (##structure-ref
                       _%state138199%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp148594 _%phi138200%_))))
          (##structure-set!
           _%block138203%_
           (cons _%stx138201%_
                 (##structure-ref
                  _%block138203%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state138193%_)
        (##structure-set!
         _%state138193%_
         (let ((__tmp148597
                (lambda (_%_138195%_ _%block138196%_ _%r138197%_)
                  (cons _%block138196%_ _%r138197%_)))
               (__tmp148596
                (##structure-ref _%state138193%_ '4 gxc#meta-state::t '#f))
               (__tmp148595
                (##structure-ref _%state138193%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp148597 __tmp148596 __tmp148595))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state138193%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state138145%_)
        (gxc#meta-state-end-phi! _%state138145%_)
        (let ((__tmp148599
               (lambda (_%block138147%_ _%r138148%_)
                 (let* ((_%block138149138158%_ _%block138147%_)
                        (_%E138151138162%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block138149138158%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K138152138170%_
                         (lambda (_%code138165%_
                                  _%n138166%_
                                  _%phi138167%_
                                  _%ctx138168%_)
                           (if (null? _%code138165%_)
                               _%r138148%_
                               (cons (cons _%ctx138168%_
                                           (cons _%phi138167%_
                                                 (cons _%n138166%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code138165%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r138148%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block138149138158%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e138153138173%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138149138158%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx138176%_ _%e138153138173%_)
                              (_%e138154138178%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138149138158%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi138181%_ _%e138154138178%_)
                              (_%e138155138183%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138149138158%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n138186%_ _%e138155138183%_)
                              (_%e138156138188%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138149138158%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code138191%_ _%e138156138188%_))
                         (_%K138152138170%_
                          _%code138191%_
                          _%n138186%_
                          _%phi138181%_
                          _%ctx138176%_))
                       (_%E138151138162%_)))))
              (__tmp148598
               (##structure-ref _%state138145%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp148599 '() __tmp148598))))
    (define gxc#collect-expression-refs
      (lambda (_%stx138141%_)
        (let ((_%ht138143%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht138143%_ _%stx138141%_)
          _%ht138143%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self138084%_ _%stx138085%_)
        (let* ((_%g138087138100%_
                (lambda (_%g138088138097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138088138097%_))))
               (_%g138086138138%_
                (lambda (_%g138088138103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138088138103%_))
                      (let ((_%e138090138105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138088138103%_))))
                        (let ((_%hd138091138108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138090138105%_)))
                              (_%tl138092138110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138090138105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138092138110%_))
                              (let ((_%e138093138113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138092138110%_))))
                                (let ((_%hd138094138116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138093138113%_)))
                                      (_%tl138095138118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138093138113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138095138118%_))
                                      ((lambda (_%L138121%_)
                                         (let* ((_%bind138133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L138121%_)))
                                                (_%eid138135%_
                                                 (if _%bind138133%_
                                                     (##structure-ref
                                                      _%bind138133%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L138121%_))))
                                                (__tmp148600
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self138084%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp148600
                                            _%eid138135%_
                                            _%eid138135%_)))
                                       _%hd138094138116%_)
                                      (_%g138087138100%_ _%g138088138103%_))))
                              (_%g138087138100%_ _%g138088138103%_))))
                      (_%g138087138100%_ _%g138088138103%_)))))
          (_%g138086138138%_ _%stx138085%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self138011%_ _%stx138012%_)
        (let* ((_%g138014138031%_
                (lambda (_%g138015138028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138015138028%_))))
               (_%g138013138081%_
                (lambda (_%g138015138034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138015138034%_))
                      (let ((_%e138018138036%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138015138034%_))))
                        (let ((_%hd138019138039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138018138036%_)))
                              (_%tl138020138041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138018138036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138020138041%_))
                              (let ((_%e138021138044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138020138041%_))))
                                (let ((_%hd138022138047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138021138044%_)))
                                      (_%tl138023138049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138021138044%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138023138049%_))
                                      (let ((_%e138024138052%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138023138049%_))))
                                        (let ((_%hd138025138055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138024138052%_)))
                                              (_%tl138026138057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138024138052%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138026138057%_))
                                              ((lambda (_%L138060%_
                                                        _%L138061%_)
                                                 (let* ((_%bind138076%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L138061%_)))
                                                        (_%eid138078%_
                                                         (if _%bind138076%_
                                                             (##structure-ref
                                                              _%bind138076%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138061%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp148601
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self138011%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp148601
                                                      _%eid138078%_
                                                      _%eid138078%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self138011%_
                                                      _%L138060%_))))
                                               _%hd138025138055%_
                                               _%hd138022138047%_)
                                              (_%g138014138031%_
                                               _%g138015138034%_))))
                                      (_%g138014138031%_ _%g138015138034%_))))
                              (_%g138014138031%_ _%g138015138034%_))))
                      (_%g138014138031%_ _%g138015138034%_)))))
          (_%g138013138081%_ _%stx138012%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self137968%_ _%stx137969%_)
        (let* ((_%g137971137981%_
                (lambda (_%g137972137978%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137972137978%_))))
               (_%g137970138008%_
                (lambda (_%g137972137984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137972137984%_))
                      (let ((_%e137974137986%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137972137984%_))))
                        (let ((_%hd137975137989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137974137986%_)))
                              (_%tl137976137991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137974137986%_))))
                          ((lambda (_%L137994%_)
                             (let ((__tmp148602
                                    (lambda (_%g138003138005%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self137968%_
                                         _%g138003138005%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp148602 _%L137994%_)))
                           _%tl137976137991%_)))
                      (_%g137971137981%_ _%g137972137984%_)))))
          (_%g137970138008%_ _%stx137969%_))))
    (define gxc#count-values-single%
      (lambda (_%self137965%_ _%stx137966%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self137831%_ _%stx137832%_)
        (let* ((_%__stx148345148346%_ _%stx137832%_)
               (_%g137835137864%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148345148346%_)))))
          (let ((_%__kont148347148348%_
                 (lambda (_%L137932%_ _%L137933%_)
                   (length (let ((__tmp148603
                                  (lambda (_%g137954137957%_ _%g137955137959%_)
                                    (cons _%g137954137957%_
                                          _%g137955137959%_))))
                             (declare (not safe))
                             (__foldr1 __tmp148603 '() _%L137932%_)))))
                (_%__kont148351148352%_ (lambda () '#f)))
            (let ((_%__match148390148391%_
                   (lambda (_%e137839137876%_
                            _%hd137840137879%_
                            _%tl137841137881%_
                            _%e137842137884%_
                            _%hd137843137887%_
                            _%tl137844137889%_
                            _%e137845137892%_
                            _%hd137846137895%_
                            _%tl137847137897%_
                            _%e137848137900%_
                            _%hd137849137903%_
                            _%tl137850137905%_
                            _%__splice148349148350%_
                            _%target137851137908%_
                            _%tl137853137910%_)
                     (letrec ((_%loop137854137913%_
                               (lambda (_%hd137852137916%_
                                        _%rand137858137918%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd137852137916%_))
                                     (let ((_%e137855137921%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd137852137916%_))))
                                       (let ((_%lp-tl137857137926%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e137855137921%_)))
                                             (_%lp-hd137856137924%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e137855137921%_))))
                                         (_%loop137854137913%_
                                          _%lp-tl137857137926%_
                                          (cons _%lp-hd137856137924%_
                                                _%rand137858137918%_))))
                                     (let ((_%rand137859137929%_
                                            (reverse _%rand137858137918%_)))
                                       (let ((_%L137932%_ _%rand137859137929%_)
                                             (_%L137933%_ _%hd137849137903%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L137933%_
                                                'values))
                                             (_%__kont148347148348%_
                                              _%L137932%_
                                              _%L137933%_)
                                             (_%__kont148351148352%_))))))))
                       (_%loop137854137913%_ _%target137851137908%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148345148346%_))
                  (let ((_%e137839137876%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148345148346%_))))
                    (let ((_%tl137841137881%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137839137876%_)))
                          (_%hd137840137879%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137839137876%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl137841137881%_))
                          (let ((_%e137842137884%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl137841137881%_))))
                            (let ((_%tl137844137889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137842137884%_)))
                                  (_%hd137843137887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137842137884%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd137843137887%_))
                                  (let ((_%e137845137892%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd137843137887%_))))
                                    (let ((_%tl137847137897%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137845137892%_)))
                                          (_%hd137846137895%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137845137892%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd137846137895%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd137846137895%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl137847137897%_))
                                                  (let ((_%e137848137900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl137847137897%_))))
                                                    (let ((_%tl137850137905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e137848137900%_)))
                                                          (_%hd137849137903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e137848137900%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl137850137905%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl137844137889%_))
                      (let ((_%__splice148349148350%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl137844137889%_
                                '0))))
                        (let ((_%tl137853137910%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148349148350%_ '1)))
                              (_%target137851137908%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148349148350%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl137853137910%_))
                              (_%__match148390148391%_
                               _%e137839137876%_
                               _%hd137840137879%_
                               _%tl137841137881%_
                               _%e137842137884%_
                               _%hd137843137887%_
                               _%tl137844137889%_
                               _%e137845137892%_
                               _%hd137846137895%_
                               _%tl137847137897%_
                               _%e137848137900%_
                               _%hd137849137903%_
                               _%tl137850137905%_
                               _%__splice148349148350%_
                               _%target137851137908%_
                               _%tl137853137910%_)
                              (_%__kont148351148352%_))))
                      (_%__kont148351148352%_))
                  (_%__kont148351148352%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148351148352%_))
                                              (_%__kont148351148352%_))
                                          (_%__kont148351148352%_))))
                                  (_%__kont148351148352%_))))
                          (_%__kont148351148352%_))))
                  (_%__kont148351148352%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self137734%_ _%stx137735%_)
        (let* ((_%g137737137758%_
                (lambda (_%g137738137755%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137738137755%_))))
               (_%g137736137828%_
                (lambda (_%g137738137761%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137738137761%_))
                      (let ((_%e137742137763%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137738137761%_))))
                        (let ((_%hd137743137766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137742137763%_)))
                              (_%tl137744137768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137742137763%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137744137768%_))
                              (let ((_%e137745137771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137744137768%_))))
                                (let ((_%hd137746137774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137745137771%_)))
                                      (_%tl137747137776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137745137771%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137747137776%_))
                                      (let ((_%e137748137779%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137747137776%_))))
                                        (let ((_%hd137749137782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137748137779%_)))
                                              (_%tl137750137784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137748137779%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137750137784%_))
                                              (let ((_%e137751137787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137750137784%_))))
                                                (let ((_%hd137752137790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137751137787%_)))
                                                      (_%tl137753137792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137751137787%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137753137792%_))
                                                      ((lambda (_%L137795%_
                                                                _%L137796%_
                                                                _%L137797%_)
                                                         (let ((_%c1137814137816%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self137734%_ _%L137796%_))))
                   (if _%c1137814137816%_
                       (let* ((_%c1137819%_ _%c1137814137816%_)
                              (_%c2137820137822%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self137734%_
                                  _%L137795%_))))
                         (if _%c2137820137822%_
                             (let ((_%c2137825%_ _%c2137820137822%_))
                               (if (fx= _%c1137819%_ _%c2137825%_)
                                   _%c1137819%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd137752137790%_
               _%hd137749137782%_
               _%hd137746137774%_)
              (_%g137737137758%_ _%g137738137761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137737137758%_
                                               _%g137738137761%_))))
                                      (_%g137737137758%_ _%g137738137761%_))))
                              (_%g137737137758%_ _%g137738137761%_))))
                      (_%g137737137758%_ _%g137738137761%_)))))
          (_%g137736137828%_ _%stx137735%_))))))
