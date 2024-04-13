(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1713004411)
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
        (letrec ((_%hash-e146115%_
                  (lambda (_%id146117%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id146117%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e146115%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147502 (list gxc#::void::t))
            (__tmp147501 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147502
         '()
         __tmp147501
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args146111%_
        (apply make-instance gxc#::collect-bindings::t _%$args146111%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147503
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
        (__make-promise __tmp147503)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx146103%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self146106%_
                (let ((__obj147477
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147477))
               (__tmp147504
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146106%_ _%stx146103%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147504
           gxc#current-compile-method
           _%self146106%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147506 (list gxc#::void::t))
            (__tmp147505 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147506
         '(modules)
         __tmp147505
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args146100%_
        (apply make-instance gxc#::lift-modules::t _%$args146100%_)))
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
      (let ((__tmp147507
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
        (__make-promise __tmp147507)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords146074%_ _%modules146071146075%_ _%stx146077%_)
        (let ((_%modules146080%_
               (if (eq? _%modules146071146075%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules146071146075%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self146082%_
                  (let ((__obj147479
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147479
                       _%modules146080%_
                       '1
                       '#f
                       '#f))
                    __obj147479))
                 (__tmp147508
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146082%_ _%stx146077%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147508
             gxc#current-compile-method
             _%self146082%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords146089%_ . _%args146090%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords146089%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146089%_
                  'modules:
                  absent-value))
               _%args146090%_)))
    (define gxc#apply-lift-modules
      (lambda _%args146072146096%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args146072146096%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147510 (list)) (__tmp147509 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147510
         '()
         __tmp147509
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args146067%_
        (apply make-instance gxc#::find-runtime-code::t _%$args146067%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147511
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
        (__make-promise __tmp147511)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx146059%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self146062%_
                (let ((__obj147481
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147481))
               (__tmp147512
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146062%_ _%stx146059%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147512
           gxc#current-compile-method
           _%self146062%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147514 (list gxc#::false::t))
            (__tmp147513 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147514
         '()
         __tmp147513
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args146056%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args146056%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147515
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
        (__make-promise __tmp147515)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx146048%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self146051%_
                (let ((__obj147483
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147483))
               (__tmp147516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146051%_ _%stx146048%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147516
           gxc#current-compile-method
           _%self146051%_))))
    (define gxc#::count-values::t
      (let ((__tmp147518 (list gxc#::false-expression::t))
            (__tmp147517 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147518
         '()
         __tmp147517
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args146045%_
        (apply make-instance gxc#::count-values::t _%$args146045%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147519
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
        (__make-promise __tmp147519)))
    (define gxc#apply-count-values
      (lambda (_%stx146037%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self146040%_
                (let ((__obj147485
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147485))
               (__tmp147520
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146040%_ _%stx146037%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147520
           gxc#current-compile-method
           _%self146040%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147521 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147521
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args146034%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args146034%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147522
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
        (__make-promise __tmp147522)))
    (define gxc#::generate-loader::t
      (let ((__tmp147524 (list gxc#::generate-runtime-empty::t))
            (__tmp147523 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147524
         '()
         __tmp147523
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args146030%_
        (apply make-instance gxc#::generate-loader::t _%$args146030%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147525
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
        (__make-promise __tmp147525)))
    (define gxc#apply-generate-loader
      (lambda (_%stx146022%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self146025%_
                (let ((__obj147488
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147488))
               (__tmp147526
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146025%_ _%stx146022%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147526
           gxc#current-compile-method
           _%self146025%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147527 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147527
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args146019%_
        (apply make-instance gxc#::generate-runtime::t _%$args146019%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147528
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
        (__make-promise __tmp147528)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx146011%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self146014%_
                (let ((__obj147490
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147490))
               (__tmp147529
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146014%_ _%stx146011%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147529
           gxc#current-compile-method
           _%self146014%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147531 (list gxc#::generate-runtime::t))
            (__tmp147530 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147531
         '()
         __tmp147530
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args146008%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args146008%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147532
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
        (__make-promise __tmp147532)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx146000%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self146003%_
                (let ((__obj147492
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147492))
               (__tmp147533
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146003%_ _%stx146000%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147533
           gxc#current-compile-method
           _%self146003%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147534 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147534
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args145997%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args145997%_)))
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
      (let ((__tmp147535
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
        (__make-promise __tmp147535)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords145971%_ _%table145968145972%_ _%stx145974%_)
        (let ((_%table145977%_
               (if (eq? _%table145968145972%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table145968145972%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self145979%_
                  (let ((__obj147494
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147494
                       _%table145977%_
                       '1
                       '#f
                       '#f))
                    __obj147494))
                 (__tmp147536
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145979%_ _%stx145974%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147536
             gxc#current-compile-method
             _%self145979%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords145986%_ . _%args145987%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords145986%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145986%_
                  'table:
                  absent-value))
               _%args145987%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args145969145993%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args145969145993%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147538 (list gxc#::void-expression::t))
            (__tmp147537 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147538
         '(state)
         __tmp147537
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args145964%_
        (apply make-instance gxc#::generate-meta::t _%$args145964%_)))
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
      (let ((__tmp147539
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
        (__make-promise __tmp147539)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords145938%_ _%state145935145939%_ _%stx145941%_)
        (let ((_%state145944%_
               (if (eq? _%state145935145939%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145935145939%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self145946%_
                  (let ((__obj147496
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147496
                       _%state145944%_
                       '1
                       '#f
                       '#f))
                    __obj147496))
                 (__tmp147540
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145946%_ _%stx145941%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147540
             gxc#current-compile-method
             _%self145946%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords145953%_ . _%args145954%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords145953%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145953%_
                  'state:
                  absent-value))
               _%args145954%_)))
    (define gxc#apply-generate-meta
      (lambda _%args145936145960%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args145936145960%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147542 (list)) (__tmp147541 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147542
         '(state)
         __tmp147541
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args145931%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args145931%_)))
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
      (let ((__tmp147543
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
        (__make-promise __tmp147543)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords145905%_ _%state145902145906%_ _%stx145908%_)
        (let ((_%state145911%_
               (if (eq? _%state145902145906%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145902145906%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self145913%_
                  (let ((__obj147498
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147498
                       _%state145911%_
                       '1
                       '#f
                       '#f))
                    __obj147498))
                 (__tmp147544
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145913%_ _%stx145908%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147544
             gxc#current-compile-method
             _%self145913%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords145920%_ . _%args145921%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords145920%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145920%_
                  'state:
                  absent-value))
               _%args145921%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args145903145927%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args145903145927%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self145831%_ _%stx145832%_)
        (let* ((_%g145834145851%_
                (lambda (_%g145835145848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145835145848%_))))
               (_%g145833145898%_
                (lambda (_%g145835145854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145835145854%_))
                      (let ((_%e145838145856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145835145854%_))))
                        (let ((_%hd145839145859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145838145856%_)))
                              (_%tl145840145861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145838145856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145840145861%_))
                              (let ((_%e145841145864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145840145861%_))))
                                (let ((_%hd145842145867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145841145864%_)))
                                      (_%tl145843145869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145841145864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145843145869%_))
                                      (let ((_%e145844145872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145843145869%_))))
                                        (let ((_%hd145845145875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145844145872%_)))
                                              (_%tl145846145877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145844145872%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145846145877%_))
                                              ((lambda (_%L145880%_
                                                        _%L145881%_)
                                                 (let ((__tmp147545
                                                        (lambda (_%bind145896%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind145896%_))
                      (gxc#add-module-binding! _%bind145896%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147545
                                                    _%L145881%_)))
                                               _%hd145845145875%_
                                               _%hd145842145867%_)
                                              (_%g145834145851%_
                                               _%g145835145854%_))))
                                      (_%g145834145851%_ _%g145835145854%_))))
                              (_%g145834145851%_ _%g145835145854%_))))
                      (_%g145834145851%_ _%g145835145854%_)))))
          (_%g145833145898%_ _%stx145832%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145763%_ _%stx145764%_)
        (let* ((_%g145766145783%_
                (lambda (_%g145767145780%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145767145780%_))))
               (_%g145765145828%_
                (lambda (_%g145767145786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145767145786%_))
                      (let ((_%e145770145788%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145767145786%_))))
                        (let ((_%hd145771145791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145770145788%_)))
                              (_%tl145772145793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145770145788%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145772145793%_))
                              (let ((_%e145773145796%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145772145793%_))))
                                (let ((_%hd145774145799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145773145796%_)))
                                      (_%tl145775145801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145773145796%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145775145801%_))
                                      (let ((_%e145776145804%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145775145801%_))))
                                        (let ((_%hd145777145807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145776145804%_)))
                                              (_%tl145778145809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145776145804%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145778145809%_))
                                              ((lambda (_%L145812%_
                                                        _%L145813%_)
                                                 (gxc#add-module-binding!
                                                  _%L145813%_
                                                  '#t))
                                               _%hd145777145807%_
                                               _%hd145774145799%_)
                                              (_%g145766145783%_
                                               _%g145767145786%_))))
                                      (_%g145766145783%_ _%g145767145786%_))))
                              (_%g145766145783%_ _%g145767145786%_))))
                      (_%g145766145783%_ _%g145767145786%_)))))
          (_%g145765145828%_ _%stx145764%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145705%_ _%stx145706%_)
        (let* ((_%g145708145722%_
                (lambda (_%g145709145719%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145709145719%_))))
               (_%g145707145760%_
                (lambda (_%g145709145725%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145709145725%_))
                      (let ((_%e145712145727%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145709145725%_))))
                        (let ((_%hd145713145730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145712145727%_)))
                              (_%tl145714145732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145712145727%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145714145732%_))
                              (let ((_%e145715145735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145714145732%_))))
                                (let ((_%hd145716145738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145715145735%_)))
                                      (_%tl145717145740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145715145735%_))))
                                  ((lambda (_%L145743%_ _%L145744%_)
                                     (let ((_%ctx145757%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145744%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145705%_
                                           'modules))
                                        (cons _%ctx145757%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145705%_
                                                        'modules)))))
                                       (let ((__tmp147546
                                              (lambda ()
                                                (let ((__tmp147547
                                                       (##structure-ref
                                                        _%ctx145757%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145705%_
                                                   __tmp147547)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147546
                                          gx#current-expander-context
                                          _%ctx145757%_))))
                                   _%tl145717145740%_
                                   _%hd145716145738%_)))
                              (_%g145708145722%_ _%g145709145725%_))))
                      (_%g145708145722%_ _%g145709145725%_)))))
          (_%g145707145760%_ _%stx145706%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145658145660%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145658145660%_
              (let ((_%decls145663%_ _%decls145658145660%_))
                (let _%lp145665%_ ((_%rest145667%_ _%decls145663%_))
                  (let* ((_%rest145668145676%_ _%rest145667%_)
                         (_%else145670145684%_ (lambda () '#f))
                         (_%K145672145693%_
                          (lambda (_%decls145687%_ _%decl145688%_)
                            (if (equal? _%decl145688%_ '(not safe))
                                '#t
                                (if (equal? _%decl145688%_ '(safe))
                                    '#f
                                    (_%lp145665%_ _%decls145687%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145668145676%_))
                        (let ((_%hd145673145696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145668145676%_)))
                              (_%tl145674145698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145668145676%_))))
                          (let* ((_%decl145701%_ _%hd145673145696%_)
                                 (_%decls145703%_ _%tl145674145698%_))
                            (_%K145672145693%_
                             _%decls145703%_
                             _%decl145701%_)))
                        (_%else145670145684%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145652%_ _%syntax?145653%_)
        (let ((_%eid145655%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145652%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145656%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145655%_))
              '#!void
              (let ((__tmp147548
                     (let ((__tmp147549
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145655%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147549 _%syntax?145653%_))))
                (declare (not safe))
                (hash-put! _%ht145656%_ _%eid145655%_ __tmp147548))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145650%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145650%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145605%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145605%_))
            _%key145605%_
            (if (uninterned-symbol? _%key145605%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145605%_))
                (let* ((_%key145609145616%_ _%key145605%_)
                       (_%E145611145620%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145609145616%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145612145638%_
                        (lambda (_%mark145623%_ _%eid145624%_)
                          (let ((_%$e145626%_
                                 (##structure-ref
                                  _%mark145623%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145626%_
                                ((lambda (_%ht145629%_)
                                   (let ((_%$e145631%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145629%_
                                             _%eid145624%_))))
                                     (if _%$e145631%_
                                         ((lambda (_%id145634%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145634%_))
                                                _%id145634%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145634%_))))
                                          _%$e145631%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145624%_))))
                                 _%$e145626%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145624%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145609145616%_))
                      (let ((_%hd145613145641%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145609145616%_)))
                            (_%tl145614145643%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145609145616%_))))
                        (let* ((_%eid145646%_ _%hd145613145641%_)
                               (_%mark145648%_ _%tl145614145643%_))
                          (_%K145612145638%_ _%mark145648%_ _%eid145646%_)))
                      (_%E145611145620%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145602%_ _%stx145603%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self145449%_ _%stx145450%_)
        (letrec ((_%simplify145452%_
                  (lambda (_%body145500%_)
                    (let _%lp145502%_ ((_%rest145504%_ _%body145500%_)
                                       (_%r145505%_ '()))
                      (let* ((_%rest145506145514%_ _%rest145504%_)
                             (_%else145508145522%_
                              (lambda () (reverse _%r145505%_)))
                             (_%K145510145590%_
                              (lambda (_%rest145525%_ _%hd145526%_)
                                (let* ((_%hd145527145543%_ _%hd145526%_)
                                       (_%else145531145551%_
                                        (lambda ()
                                          (_%lp145502%_
                                           _%rest145525%_
                                           (cons _%hd145526%_ _%r145505%_)))))
                                  (let ((_%K145539145580%_
                                         (lambda (_%exprs145578%_)
                                           (_%lp145502%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145525%_
                                               _%exprs145578%_))
                                            _%r145505%_)))
                                        (_%K145534145564%_
                                         (lambda ()
                                           (if (null? _%rest145525%_)
                                               (_%lp145502%_
                                                _%rest145525%_
                                                (cons _%hd145526%_
                                                      _%r145505%_))
                                               (_%lp145502%_
                                                _%rest145525%_
                                                _%r145505%_))))
                                        (_%K145533145556%_
                                         (lambda ()
                                           (if (null? _%rest145525%_)
                                               (_%lp145502%_
                                                _%rest145525%_
                                                (cons _%hd145526%_
                                                      _%r145505%_))
                                               (_%lp145502%_
                                                _%rest145525%_
                                                _%r145505%_)))))
                                    (let ((_%try-match145530145559%_
                                           (lambda ()
                                             (if (symbol? _%hd145527145543%_)
                                                 (_%K145533145556%_)
                                                 (_%else145531145551%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145527145543%_))
                                          (let ((_%tl145541145585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145527145543%_)))
                                                (_%hd145540145583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145527145543%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145540145583%_
                                                         'begin))
                                                (let ((_%exprs145588%_
                                                       _%tl145541145585%_))
                                                  (_%K145539145580%_
                                                   _%exprs145588%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145540145583%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145541145585%_))
                                                        (let ((_%tl145538145572%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145541145585%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145538145572%_))
                      (_%K145534145564%_)
                      (_%try-match145530145559%_)))
                (_%try-match145530145559%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145530145559%_))))
                                          (_%try-match145530145559%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145506145514%_))
                            (let ((_%hd145511145593%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145506145514%_)))
                                  (_%tl145512145595%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145506145514%_))))
                              (let* ((_%hd145598%_ _%hd145511145593%_)
                                     (_%rest145600%_ _%tl145512145595%_))
                                (_%K145510145590%_
                                 _%rest145600%_
                                 _%hd145598%_)))
                            (_%else145508145522%_)))))))
          (let* ((_%g145454145464%_
                  (lambda (_%g145455145461%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145455145461%_))))
                 (_%g145453145497%_
                  (lambda (_%g145455145467%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145455145467%_))
                        (let ((_%e145457145469%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145455145467%_))))
                          (let ((_%hd145458145472%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145457145469%_)))
                                (_%tl145459145474%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145457145469%_))))
                            ((lambda (_%L145477%_)
                               (let* ((_%body145492%_
                                       (map (lambda (_%g145487145489%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self145449%_
                                                 _%g145487145489%_)))
                                            _%L145477%_))
                                      (_%body145494%_
                                       (_%simplify145452%_ _%body145492%_)))
                                 (if (let ((__tmp147550
                                            (length _%body145494%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147550 '1))
                                     (car _%body145494%_)
                                     (cons 'begin _%body145494%_))))
                             _%tl145459145474%_)))
                        (_%g145454145464%_ _%g145455145467%_)))))
            (_%g145453145497%_ _%stx145450%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self145410%_ _%stx145411%_)
        (let* ((_%g145413145423%_
                (lambda (_%g145414145420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145414145420%_))))
               (_%g145412145446%_
                (lambda (_%g145414145426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145414145426%_))
                      (let ((_%e145416145428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145414145426%_))))
                        (let ((_%hd145417145431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145416145428%_)))
                              (_%tl145418145433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145416145428%_))))
                          ((lambda (_%L145436%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L145436%_))))
                           _%tl145418145433%_)))
                      (_%g145413145423%_ _%g145414145426%_)))))
          (_%g145412145446%_ _%stx145411%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self145174%_ _%stx145175%_)
        (let* ((_%__stx146140146141%_ _%stx145175%_)
               (_%g145179145231%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146140146141%_)))))
          (let ((_%__kont146142146143%_
                 (lambda (_%L145392%_ _%L145393%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self145174%_ _%L145392%_))))
                (_%__kont146144146145%_
                 (lambda (_%L145340%_ _%L145341%_ _%L145342%_)
                   (if (let ((__tmp147551
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L145342%_))))
                         (declare (not safe))
                         (##memq __tmp147551 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self145174%_ _%L145340%_)))))
                (_%__kont146148146149%_
                 (lambda (_%L145260%_ _%L145261%_)
                   (let ((_%decls145276%_ (map gx#syntax->datum _%L145261%_)))
                     (let ((__tmp147554
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls145276%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145174%_
                                                   _%L145260%_))
                                                '())))))
                           (__tmp147552
                            (let ((__tmp147553
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147553 _%decls145276%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147554
                        gxc#current-compile-decls
                        __tmp147552))))))
            (let* ((_%__match146195146196%_
                    (lambda (_%e145195145284%_
                             _%hd145196145287%_
                             _%tl145197145289%_
                             _%e145198145292%_
                             _%hd145199145295%_
                             _%tl145200145297%_
                             _%e145201145300%_
                             _%hd145202145303%_
                             _%tl145203145305%_
                             _%__splice146146146147%_
                             _%target145204145308%_
                             _%tl145206145310%_)
                      (letrec ((_%loop145207145313%_
                                (lambda (_%hd145205145316%_
                                         _%param145211145318%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145205145316%_))
                                      (let ((_%e145208145321%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145205145316%_))))
                                        (let ((_%lp-tl145210145326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145208145321%_)))
                                              (_%lp-hd145209145324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145208145321%_))))
                                          (_%loop145207145313%_
                                           _%lp-tl145210145326%_
                                           (cons _%lp-hd145209145324%_
                                                 _%param145211145318%_))))
                                      (let ((_%param145212145329%_
                                             (reverse _%param145211145318%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145200145297%_))
                                            (let ((_%e145213145332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145200145297%_))))
                                              (let ((_%tl145215145337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145213145332%_)))
                                                    (_%hd145214145335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145213145332%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145215145337%_))
                                                    (let ((_%L145340%_
                                                           _%hd145214145335%_)
                                                          (_%L145341%_
                                                           _%param145212145329%_)
                                                          (_%L145342%_
                                                           _%hd145202145303%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L145342%_))
                       (not (let ((__tmp147555
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L145342%_))))
                              (declare (not safe))
                              (##memq __tmp147555 gxc#gambit-annotations))))
                  (_%__kont146144146145%_ _%L145340%_ _%L145341%_ _%L145342%_)
                  (_%__kont146148146149%_
                   _%hd145214145335%_
                   _%hd145199145295%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145179145231%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145179145231%_))))))))
                        (_%loop145207145313%_ _%target145204145308%_ '()))))
                   (_%__match146169146170%_
                    (lambda (_%e145183145368%_
                             _%hd145184145371%_
                             _%tl145185145373%_
                             _%e145186145376%_
                             _%hd145187145379%_
                             _%tl145188145381%_
                             _%e145189145384%_
                             _%hd145190145387%_
                             _%tl145191145389%_)
                      (let ((_%L145392%_ _%hd145190145387%_)
                            (_%L145393%_ _%hd145187145379%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L145393%_))
                            (_%__kont146142146143%_ _%L145392%_ _%L145393%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd145187145379%_))
                                (let ((_%e145201145300%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd145187145379%_))))
                                  (let ((_%tl145203145305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145201145300%_)))
                                        (_%hd145202145303%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145201145300%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl145203145305%_))
                                        (let ((_%__splice146146146147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl145203145305%_
                                                  '0))))
                                          (let ((_%tl145206145310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146146146147%_
                                                    '1)))
                                                (_%target145204145308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146146146147%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145206145310%_))
                                                (_%__match146195146196%_
                                                 _%e145183145368%_
                                                 _%hd145184145371%_
                                                 _%tl145185145373%_
                                                 _%e145186145376%_
                                                 _%hd145187145379%_
                                                 _%tl145188145381%_
                                                 _%e145201145300%_
                                                 _%hd145202145303%_
                                                 _%tl145203145305%_
                                                 _%__splice146146146147%_
                                                 _%target145204145308%_
                                                 _%tl145206145310%_)
                                                (_%__kont146148146149%_
                                                 _%hd145190145387%_
                                                 _%hd145187145379%_))))
                                        (_%__kont146148146149%_
                                         _%hd145190145387%_
                                         _%hd145187145379%_))))
                                (_%__kont146148146149%_
                                 _%hd145190145387%_
                                 _%hd145187145379%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146140146141%_))
                  (let ((_%e145183145368%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146140146141%_))))
                    (let ((_%tl145185145373%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145183145368%_)))
                          (_%hd145184145371%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145183145368%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145185145373%_))
                          (let ((_%e145186145376%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145185145373%_))))
                            (let ((_%tl145188145381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145186145376%_)))
                                  (_%hd145187145379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145186145376%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145188145381%_))
                                  (let ((_%e145189145384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145188145381%_))))
                                    (let ((_%tl145191145389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145189145384%_)))
                                          (_%hd145190145387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145189145384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145191145389%_))
                                          (_%__match146169146170%_
                                           _%e145183145368%_
                                           _%hd145184145371%_
                                           _%tl145185145373%_
                                           _%e145186145376%_
                                           _%hd145187145379%_
                                           _%tl145188145381%_
                                           _%e145189145384%_
                                           _%hd145190145387%_
                                           _%tl145191145389%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145187145379%_))
                                              (let ((_%e145201145300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145187145379%_))))
                                                (let ((_%tl145203145305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145201145300%_)))
                                                      (_%hd145202145303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145201145300%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl145203145305%_))
                                                      (let ((_%__splice146146146147%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl145203145305%_ '0))))
                (let ((_%tl145206145310%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146146146147%_ '1)))
                      (_%target145204145308%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146146146147%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145206145310%_))
                      (_%__match146195146196%_
                       _%e145183145368%_
                       _%hd145184145371%_
                       _%tl145185145373%_
                       _%e145186145376%_
                       _%hd145187145379%_
                       _%tl145188145381%_
                       _%e145201145300%_
                       _%hd145202145303%_
                       _%tl145203145305%_
                       _%__splice146146146147%_
                       _%target145204145308%_
                       _%tl145206145310%_)
                      (let () (declare (not safe)) (_%g145179145231%_)))))
              (let () (declare (not safe)) (_%g145179145231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145179145231%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145187145379%_))
                                      (let ((_%e145201145300%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145187145379%_))))
                                        (let ((_%tl145203145305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145201145300%_)))
                                              (_%hd145202145303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145201145300%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl145203145305%_))
                                              (let ((_%__splice146146146147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl145203145305%_
                                                        '0))))
                                                (let ((_%tl145206145310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146146146147%_
                                                          '1)))
                                                      (_%target145204145308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146146146147%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145206145310%_))
                                                      (_%__match146195146196%_
                                                       _%e145183145368%_
                                                       _%hd145184145371%_
                                                       _%tl145185145373%_
                                                       _%e145186145376%_
                                                       _%hd145187145379%_
                                                       _%tl145188145381%_
                                                       _%e145201145300%_
                                                       _%hd145202145303%_
                                                       _%tl145203145305%_
                                                       _%__splice146146146147%_
                                                       _%target145204145308%_
                                                       _%tl145206145310%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g145179145231%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145179145231%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145179145231%_))))))
                          (let () (declare (not safe)) (_%g145179145231%_)))))
                  (let () (declare (not safe)) (_%g145179145231%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self145133%_ _%stx145134%_)
        (let* ((_%g145136145146%_
                (lambda (_%g145137145143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145137145143%_))))
               (_%g145135145171%_
                (lambda (_%g145137145149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145137145149%_))
                      (let ((_%e145139145151%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145137145149%_))))
                        (let ((_%hd145140145154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145139145151%_)))
                              (_%tl145141145156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145139145151%_))))
                          ((lambda (_%L145159%_)
                             (let ((_%decls145169%_
                                    (map gx#syntax->datum _%L145159%_)))
                               (let ((__tmp147556
                                      (let ((__tmp147557
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147557
                                         _%decls145169%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147556))
                               (cons 'declare _%decls145169%_)))
                           _%tl145141145156%_)))
                      (_%g145136145146%_ _%g145137145149%_)))))
          (_%g145135145171%_ _%stx145134%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self144879%_ _%stx144880%_)
        (let* ((_%g144882144899%_
                (lambda (_%g144883144896%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144883144896%_))))
               (_%g144881145130%_
                (lambda (_%g144883144902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144883144902%_))
                      (let ((_%e144886144904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144883144902%_))))
                        (let ((_%hd144887144907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144886144904%_)))
                              (_%tl144888144909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144886144904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144888144909%_))
                              (let ((_%e144889144912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144888144909%_))))
                                (let ((_%hd144890144915%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144889144912%_)))
                                      (_%tl144891144917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144889144912%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144891144917%_))
                                      (let ((_%e144892144920%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144891144917%_))))
                                        (let ((_%hd144893144923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144892144920%_)))
                                              (_%tl144894144925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144892144920%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144894144925%_))
                                              ((lambda (_%L144928%_
                                                        _%L144929%_)
                                                 (let* ((_%__stx146248146249%_
                                                         _%L144929%_)
                                                        (_%g144946144960%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx146248146249%_)))))
                                                   (let ((_%__kont146250146251%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self144879%_
                                                               _%L144928%_))))
                                                         (_%__kont146252146253%_
                                                          (lambda (_%L145092%_)
                                                            (let ((_%eid145101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L145092%_))))
                      (let ((_%lambda-expr145102145104%_
                             (gxc#apply-find-lambda-expression _%L144928%_)))
                        (if _%lambda-expr145102145104%_
                            (let* ((_%lambda-expr145107%_
                                    _%lambda-expr145102145104%_)
                                   (__tmp147558
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147558
                               _%lambda-expr145107%_
                               _%eid145101%_))
                            '#f))
                      (cons 'define
                            (cons _%eid145101%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self144879%_
                                           _%L144928%_))
                                        '()))))))
                 (_%__kont146254146255%_
                  (lambda ()
                    (let* ((_%tmp144967%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body145076%_
                            (let _%lp144969%_ ((_%rest144971%_ _%L144929%_)
                                               (_%k144972%_ '0)
                                               (_%r144973%_ '()))
                              (let* ((_%__stx146218146219%_ _%rest144971%_)
                                     (_%g144978144995%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx146218146219%_)))))
                                (let ((_%__kont146220146221%_
                                       (lambda (_%L145063%_)
                                         (_%lp144969%_
                                          _%L145063%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144972%_ '1))
                                          _%r144973%_)))
                                      (_%__kont146222146223%_
                                       (lambda (_%L145036%_ _%L145037%_)
                                         (_%lp144969%_
                                          _%L145036%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144972%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L145037%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp144967%_
                           _%k144972%_
                           _%L145036%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r144973%_))))
                                      (_%__kont146224146225%_
                                       (lambda (_%L145007%_)
                                         (let ((__tmp147559
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L145007%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp144967%_
                                 _%k144972%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147559
                                            _%r144973%_))))
                                      (_%__kont146226146227%_
                                       (lambda () (reverse _%r144973%_))))
                                  (let ((_%g144976145023%_
                                         (lambda ()
                                           (let ((_%L145007%_
                                                  _%__stx146218146219%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L145007%_))
                                                 (_%__kont146224146225%_
                                                  _%L145007%_)
                                                 (_%__kont146226146227%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146218146219%_))
                                        (let ((_%e144981145052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146218146219%_))))
                                          (let ((_%tl144983145057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144981145052%_)))
                                                (_%hd144982145055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144981145052%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd144982145055%_))
                                                (let ((_%e144984145060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144982145055%_))))
                                                  (if (equal? _%e144984145060%_
                                                              '#f)
                                                      (_%__kont146220146221%_
                                                       _%tl144983145057%_)
                                                      (_%__kont146222146223%_
                                                       _%tl144983145057%_
                                                       _%hd144982145055%_)))
                                                (_%__kont146222146223%_
                                                 _%tl144983145057%_
                                                 _%hd144982145055%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144976145023%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp144967%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144879%_
                                                       _%L144928%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp144967%_
                                         _%L144929%_
                                         _%L144928%_)
                                        _%body145076%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx146248146249%_))
                                                         (let ((_%e144948145114%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx146248146249%_))))
                   (let ((_%tl144950145119%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e144948145114%_)))
                         (_%hd144949145117%_
                          (let ()
                            (declare (not safe))
                            (##car _%e144948145114%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd144949145117%_))
                         (let ((_%e144951145122%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd144949145117%_))))
                           (if (equal? _%e144951145122%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144950145119%_))
                                   (_%__kont146250146251%_)
                                   (_%__kont146254146255%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144950145119%_))
                                   (_%__kont146252146253%_ _%hd144949145117%_)
                                   (_%__kont146254146255%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144950145119%_))
                             (_%__kont146252146253%_ _%hd144949145117%_)
                             (_%__kont146254146255%_)))))
                 (_%__kont146254146255%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144893144923%_
                                               _%hd144890144915%_)
                                              (_%g144882144899%_
                                               _%g144883144902%_))))
                                      (_%g144882144899%_ _%g144883144902%_))))
                              (_%g144882144899%_ _%g144883144902%_))))
                      (_%g144882144899%_ _%g144883144902%_)))))
          (_%g144881145130%_ _%stx144880%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals144854%_ _%hd144855%_ _%expr144856%_)
        (let ((_%$e144858%_ (gxc#apply-count-values _%expr144856%_)))
          (if _%$e144858%_
              ((lambda (_%count144861%_)
                 (let ((_%len144863%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd144855%_)))
                       (_%cmp144864%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd144855%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len144863%_ '0))
                           (_%cmp144864%_ _%count144861%_ _%len144863%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr144856%_
                          _%hd144855%_)))))
               _%$e144858%_)
              (let* ((_%len144870%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd144855%_)))
                     (_%cmp144872%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd144855%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg144874%_
                      (let ((__tmp147561
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd144855%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147560 (number->string _%len144870%_)))
                        (declare (not safe))
                        (##string-append __tmp147561 __tmp147560 '" values")))
                     (_%count144876%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd144855%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len144870%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count144876%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals144854%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp144872%_
                                (cons _%count144876%_
                                      (cons _%len144870%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp144872%_
                                                        (cons _%count144876%_
                                                              (cons _%len144870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg144874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count144876%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var144849%_)
        (letrec ((_%generate-inline144851%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var144849%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var144849%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144851%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144851%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var144842%_ _%i144843%_ _%rest144844%_)
        (letrec ((_%generate-inline144846%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i144843%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest144844%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var144842%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var144842%_
                                                      (cons '0 '())))
                                          (cons _%var144842%_ '()))))
                        (cons '##vector-ref
                              (cons _%var144842%_ (cons _%i144843%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144846%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144846%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var144836%_ _%i144837%_)
        (if (let () (declare (not safe)) (##fx= _%i144837%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var144836%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var144836%_ '()))
                                  (cons (cons 'list (cons _%var144836%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var144836%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var144836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var144836%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i144837%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var144836%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var144836%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var144836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var144836%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var144836%_ '()))
                                (cons _%i144837%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var144836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i144837%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144768%_ _%stx144769%_)
        (let* ((_%g144771144788%_
                (lambda (_%g144772144785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144772144785%_))))
               (_%g144770144833%_
                (lambda (_%g144772144791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144772144791%_))
                      (let ((_%e144775144793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144772144791%_))))
                        (let ((_%hd144776144796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144775144793%_)))
                              (_%tl144777144798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144775144793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144777144798%_))
                              (let ((_%e144778144801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144777144798%_))))
                                (let ((_%hd144779144804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144778144801%_)))
                                      (_%tl144780144806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144778144801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144780144806%_))
                                      (let ((_%e144781144809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144780144806%_))))
                                        (let ((_%hd144782144812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144781144809%_)))
                                              (_%tl144783144814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144781144809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144783144814%_))
                                              ((lambda (_%L144817%_
                                                        _%L144818%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144768%_
                                                  _%L144818%_
                                                  _%L144817%_))
                                               _%hd144782144812%_
                                               _%hd144779144804%_)
                                              (_%g144771144788%_
                                               _%g144772144791%_))))
                                      (_%g144771144788%_ _%g144772144791%_))))
                              (_%g144771144788%_ _%g144772144791%_))))
                      (_%g144771144788%_ _%g144772144791%_)))))
          (_%g144770144833%_ _%stx144769%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144727%_ _%hd144728%_ _%body144729%_)
        (let* ((_%hd144731%_ (gxc#generate-runtime-lambda-head _%hd144728%_))
               (_%body144733%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144727%_ _%body144729%_)))
               (_%body144765%_
                (let* ((_%body144734144742%_ _%body144733%_)
                       (_%else144736144750%_
                        (lambda () (cons _%body144733%_ '())))
                       (_%K144738144755%_
                        (lambda (_%exprs144753%_) _%exprs144753%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144734144742%_))
                      (let ((_%hd144739144758%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144734144742%_)))
                            (_%tl144740144760%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144734144742%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144739144758%_ 'begin))
                            (let ((_%exprs144763%_ _%tl144740144760%_))
                              (_%K144738144755%_ _%exprs144763%_))
                            (_%else144736144750%_)))
                      (_%else144736144750%_)))))
          (cons 'lambda (cons _%hd144731%_ _%body144765%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144725%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144725%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self143264%_ _%stx143265%_)
        (letrec ((_%dispatch-case?143267%_
                  (lambda (_%hd143955%_ _%body143956%_)
                    (let* ((_%form143958%_
                            (cons _%hd143955%_ (cons _%body143956%_ '())))
                           (_%__stx146280146281%_ _%form143958%_)
                           (_%g143963144120%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146280146281%_)))))
                      (let ((_%__kont146282146283%_
                             (lambda (_%L144645%_ _%L144646%_ _%L144647%_)
                               '#t))
                            (_%__kont146288146289%_
                             (lambda (_%L144433%_
                                      _%L144434%_
                                      _%L144435%_
                                      _%L144436%_
                                      _%L144437%_
                                      _%L144438%_)
                               '#t))
                            (_%__kont146294146295%_
                             (lambda (_%L144228%_
                                      _%L144229%_
                                      _%L144230%_
                                      _%L144231%_)
                               '#t))
                            (_%__kont146296146297%_ (lambda () '#f)))
                        (let* ((_%__match146421146422%_
                                (lambda (_%e144080144132%_
                                         _%hd144081144135%_
                                         _%tl144082144137%_
                                         _%e144083144140%_
                                         _%hd144084144143%_
                                         _%tl144085144145%_
                                         _%e144086144148%_
                                         _%hd144087144151%_
                                         _%tl144088144153%_
                                         _%e144089144156%_
                                         _%hd144090144159%_
                                         _%tl144091144161%_
                                         _%e144092144164%_
                                         _%hd144093144167%_
                                         _%tl144094144169%_
                                         _%e144095144172%_
                                         _%hd144096144175%_
                                         _%tl144097144177%_
                                         _%e144098144180%_
                                         _%hd144099144183%_
                                         _%tl144100144185%_
                                         _%e144101144188%_
                                         _%hd144102144191%_
                                         _%tl144103144193%_
                                         _%e144104144196%_
                                         _%hd144105144199%_
                                         _%tl144106144201%_
                                         _%e144107144204%_
                                         _%hd144108144207%_
                                         _%tl144109144209%_
                                         _%e144110144212%_
                                         _%hd144111144215%_
                                         _%tl144112144217%_
                                         _%e144113144220%_
                                         _%hd144114144223%_
                                         _%tl144115144225%_)
                                  (let ((_%L144228%_ _%hd144114144223%_)
                                        (_%L144229%_ _%hd144105144199%_)
                                        (_%L144230%_ _%hd144096144175%_)
                                        (_%L144231%_ _%hd144081144135%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144231%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L144230%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L144231%_
                                                _%L144228%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L144229%_
                                                     _%L144231%_))))
                                        (_%__kont146294146295%_
                                         _%L144228%_
                                         _%L144229%_
                                         _%L144230%_
                                         _%L144231%_)
                                        (_%__kont146296146297%_)))))
                               (_%__match146393146394%_
                                (lambda (_%e144080144132%_
                                         _%hd144081144135%_
                                         _%tl144082144137%_
                                         _%e144083144140%_
                                         _%hd144084144143%_
                                         _%tl144085144145%_
                                         _%e144086144148%_
                                         _%hd144087144151%_
                                         _%tl144088144153%_
                                         _%e144089144156%_
                                         _%hd144090144159%_
                                         _%tl144091144161%_
                                         _%e144092144164%_
                                         _%hd144093144167%_
                                         _%tl144094144169%_
                                         _%e144095144172%_
                                         _%hd144096144175%_
                                         _%tl144097144177%_
                                         _%e144098144180%_
                                         _%hd144099144183%_
                                         _%tl144100144185%_
                                         _%e144101144188%_
                                         _%hd144102144191%_
                                         _%tl144103144193%_
                                         _%e144104144196%_
                                         _%hd144105144199%_
                                         _%tl144106144201%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144100144185%_))
                                      (let ((_%e144107144204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144100144185%_))))
                                        (let ((_%tl144109144209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144107144204%_)))
                                              (_%hd144108144207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144107144204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144108144207%_))
                                              (let ((_%e144110144212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144108144207%_))))
                                                (let ((_%tl144112144217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144110144212%_)))
                                                      (_%hd144111144215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144110144212%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd144111144215%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd144111144215%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144112144217%_))
                      (let ((_%e144113144220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144112144217%_))))
                        (let ((_%tl144115144225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144113144220%_)))
                              (_%hd144114144223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144113144220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl144115144225%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144109144209%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl144085144145%_))
                                      (_%__match146421146422%_
                                       _%e144080144132%_
                                       _%hd144081144135%_
                                       _%tl144082144137%_
                                       _%e144083144140%_
                                       _%hd144084144143%_
                                       _%tl144085144145%_
                                       _%e144086144148%_
                                       _%hd144087144151%_
                                       _%tl144088144153%_
                                       _%e144089144156%_
                                       _%hd144090144159%_
                                       _%tl144091144161%_
                                       _%e144092144164%_
                                       _%hd144093144167%_
                                       _%tl144094144169%_
                                       _%e144095144172%_
                                       _%hd144096144175%_
                                       _%tl144097144177%_
                                       _%e144098144180%_
                                       _%hd144099144183%_
                                       _%tl144100144185%_
                                       _%e144101144188%_
                                       _%hd144102144191%_
                                       _%tl144103144193%_
                                       _%e144104144196%_
                                       _%hd144105144199%_
                                       _%tl144106144201%_
                                       _%e144107144204%_
                                       _%hd144108144207%_
                                       _%tl144109144209%_
                                       _%e144110144212%_
                                       _%hd144111144215%_
                                       _%tl144112144217%_
                                       _%e144113144220%_
                                       _%hd144114144223%_
                                       _%tl144115144225%_)
                                      (_%__kont146296146297%_))
                                  (_%__kont146296146297%_))
                              (_%__kont146296146297%_))))
                      (_%__kont146296146297%_))
                  (_%__kont146296146297%_))
              (_%__kont146296146297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146296146297%_))))
                                      (_%__kont146296146297%_))))
                               (_%__match146323146324%_
                                (lambda (_%e144016144273%_
                                         _%hd144017144276%_
                                         _%tl144018144278%_
                                         _%__splice146290146291%_
                                         _%target144019144281%_
                                         _%tl144021144283%_)
                                  (letrec ((_%loop144022144286%_
                                            (lambda (_%hd144020144289%_
                                                     _%arg144026144291%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144020144289%_))
                                                  (let ((_%e144023144294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144020144289%_))))
                                                    (let ((_%lp-tl144025144299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144023144294%_)))
                                                          (_%lp-hd144024144297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144023144294%_))))
                                                      (_%loop144022144286%_
                                                       _%lp-tl144025144299%_
                                                       (cons _%lp-hd144024144297%_
                                                             _%arg144026144291%_))))
                                                  (let ((_%arg144027144302%_
                                                         (reverse _%arg144026144291%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144018144278%_))
                                                        (let ((_%e144028144305%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144018144278%_))))
                  (let ((_%tl144030144310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144028144305%_)))
                        (_%hd144029144308%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144028144305%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144029144308%_))
                        (let ((_%e144031144313%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144029144308%_))))
                          (let ((_%tl144033144318%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144031144313%_)))
                                (_%hd144032144316%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144031144313%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144032144316%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144032144316%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144033144318%_))
                                        (let ((_%e144034144321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144033144318%_))))
                                          (let ((_%tl144036144326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144034144321%_)))
                                                (_%hd144035144324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144034144321%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144035144324%_))
                                                (let ((_%e144037144329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144035144324%_))))
                                                  (let ((_%tl144039144334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144037144329%_)))
                                                        (_%hd144038144332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144037144329%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144038144332%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144038144332%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144039144334%_))
                        (let ((_%e144040144337%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144039144334%_))))
                          (let ((_%tl144042144342%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144040144337%_)))
                                (_%hd144041144340%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144040144337%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144042144342%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl144036144326%_))
                                    (let ((_%e144043144345%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl144036144326%_))))
                                      (let ((_%tl144045144350%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144043144345%_)))
                                            (_%hd144044144348%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144043144345%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd144044144348%_))
                                            (let ((_%e144046144353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd144044144348%_))))
                                              (let ((_%tl144048144358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144046144353%_)))
                                                    (_%hd144047144356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144046144353%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd144047144356%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd144047144356%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144048144358%_))
                                                            (let ((_%e144049144361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144048144358%_))))
                      (let ((_%tl144051144366%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144049144361%_)))
                            (_%hd144050144364%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144049144361%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144051144366%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144045144350%_))
                                (if (let ((__tmp147562
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl144045144350%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147562 '1))
                                    (let ((_%__splice146292146293%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144045144350%_
                                              '1))))
                                      (let ((_%tl144054144371%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146292146293%_
                                                '1)))
                                            (_%target144052144369%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146292146293%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144054144371%_))
                                            (let ((_%e144061144374%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144054144371%_))))
                                              (let ((_%tl144063144379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144061144374%_)))
                                                    (_%hd144062144377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144061144374%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd144062144377%_))
                                                    (let ((_%e144064144382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd144062144377%_))))
                                                      (let ((_%tl144066144387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144064144382%_)))
                    (_%hd144065144385%_
                     (let () (declare (not safe)) (##car _%e144064144382%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd144065144385%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd144065144385%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl144066144387%_))
                            (let ((_%e144067144390%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl144066144387%_))))
                              (let ((_%tl144069144395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144067144390%_)))
                                    (_%hd144068144393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144067144390%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl144069144395%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144063144379%_))
                                        (letrec ((_%loop144055144398%_
                                                  (lambda (_%hd144053144401%_
                                                           _%xarg144059144403%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd144053144401%_))
                                                        (let ((_%e144056144406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd144053144401%_))))
                  (let ((_%lp-tl144058144411%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144056144406%_)))
                        (_%lp-hd144057144409%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144056144406%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd144057144409%_))
                        (let ((_%e144070144414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd144057144409%_))))
                          (let ((_%tl144072144419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144070144414%_)))
                                (_%hd144071144417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144070144414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144071144417%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd144071144417%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144072144419%_))
                                        (let ((_%e144073144422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144072144419%_))))
                                          (let ((_%tl144075144427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144073144422%_)))
                                                (_%hd144074144425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144073144422%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144075144427%_))
                                                (_%loop144055144398%_
                                                 _%lp-tl144058144411%_
                                                 (cons _%hd144074144425%_
                                                       _%xarg144059144403%_))
                                                (_%__match146393146394%_
                                                 _%e144016144273%_
                                                 _%hd144017144276%_
                                                 _%tl144018144278%_
                                                 _%e144028144305%_
                                                 _%hd144029144308%_
                                                 _%tl144030144310%_
                                                 _%e144031144313%_
                                                 _%hd144032144316%_
                                                 _%tl144033144318%_
                                                 _%e144034144321%_
                                                 _%hd144035144324%_
                                                 _%tl144036144326%_
                                                 _%e144037144329%_
                                                 _%hd144038144332%_
                                                 _%tl144039144334%_
                                                 _%e144040144337%_
                                                 _%hd144041144340%_
                                                 _%tl144042144342%_
                                                 _%e144043144345%_
                                                 _%hd144044144348%_
                                                 _%tl144045144350%_
                                                 _%e144046144353%_
                                                 _%hd144047144356%_
                                                 _%tl144048144358%_
                                                 _%e144049144361%_
                                                 _%hd144050144364%_
                                                 _%tl144051144366%_))))
                                        (_%__match146393146394%_
                                         _%e144016144273%_
                                         _%hd144017144276%_
                                         _%tl144018144278%_
                                         _%e144028144305%_
                                         _%hd144029144308%_
                                         _%tl144030144310%_
                                         _%e144031144313%_
                                         _%hd144032144316%_
                                         _%tl144033144318%_
                                         _%e144034144321%_
                                         _%hd144035144324%_
                                         _%tl144036144326%_
                                         _%e144037144329%_
                                         _%hd144038144332%_
                                         _%tl144039144334%_
                                         _%e144040144337%_
                                         _%hd144041144340%_
                                         _%tl144042144342%_
                                         _%e144043144345%_
                                         _%hd144044144348%_
                                         _%tl144045144350%_
                                         _%e144046144353%_
                                         _%hd144047144356%_
                                         _%tl144048144358%_
                                         _%e144049144361%_
                                         _%hd144050144364%_
                                         _%tl144051144366%_))
                                    (_%__match146393146394%_
                                     _%e144016144273%_
                                     _%hd144017144276%_
                                     _%tl144018144278%_
                                     _%e144028144305%_
                                     _%hd144029144308%_
                                     _%tl144030144310%_
                                     _%e144031144313%_
                                     _%hd144032144316%_
                                     _%tl144033144318%_
                                     _%e144034144321%_
                                     _%hd144035144324%_
                                     _%tl144036144326%_
                                     _%e144037144329%_
                                     _%hd144038144332%_
                                     _%tl144039144334%_
                                     _%e144040144337%_
                                     _%hd144041144340%_
                                     _%tl144042144342%_
                                     _%e144043144345%_
                                     _%hd144044144348%_
                                     _%tl144045144350%_
                                     _%e144046144353%_
                                     _%hd144047144356%_
                                     _%tl144048144358%_
                                     _%e144049144361%_
                                     _%hd144050144364%_
                                     _%tl144051144366%_))
                                (_%__match146393146394%_
                                 _%e144016144273%_
                                 _%hd144017144276%_
                                 _%tl144018144278%_
                                 _%e144028144305%_
                                 _%hd144029144308%_
                                 _%tl144030144310%_
                                 _%e144031144313%_
                                 _%hd144032144316%_
                                 _%tl144033144318%_
                                 _%e144034144321%_
                                 _%hd144035144324%_
                                 _%tl144036144326%_
                                 _%e144037144329%_
                                 _%hd144038144332%_
                                 _%tl144039144334%_
                                 _%e144040144337%_
                                 _%hd144041144340%_
                                 _%tl144042144342%_
                                 _%e144043144345%_
                                 _%hd144044144348%_
                                 _%tl144045144350%_
                                 _%e144046144353%_
                                 _%hd144047144356%_
                                 _%tl144048144358%_
                                 _%e144049144361%_
                                 _%hd144050144364%_
                                 _%tl144051144366%_))))
                        (_%__match146393146394%_
                         _%e144016144273%_
                         _%hd144017144276%_
                         _%tl144018144278%_
                         _%e144028144305%_
                         _%hd144029144308%_
                         _%tl144030144310%_
                         _%e144031144313%_
                         _%hd144032144316%_
                         _%tl144033144318%_
                         _%e144034144321%_
                         _%hd144035144324%_
                         _%tl144036144326%_
                         _%e144037144329%_
                         _%hd144038144332%_
                         _%tl144039144334%_
                         _%e144040144337%_
                         _%hd144041144340%_
                         _%tl144042144342%_
                         _%e144043144345%_
                         _%hd144044144348%_
                         _%tl144045144350%_
                         _%e144046144353%_
                         _%hd144047144356%_
                         _%tl144048144358%_
                         _%e144049144361%_
                         _%hd144050144364%_
                         _%tl144051144366%_))))
                (let ((_%xarg144060144430%_ (reverse _%xarg144059144403%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144030144310%_))
                      (let ((_%L144433%_ _%hd144068144393%_)
                            (_%L144434%_ _%xarg144060144430%_)
                            (_%L144435%_ _%hd144050144364%_)
                            (_%L144436%_ _%hd144041144340%_)
                            (_%L144437%_ _%tl144021144283%_)
                            (_%L144438%_ _%arg144027144302%_))
                        (if (and (let ((__tmp147563
                                        (let ((__tmp147564
                                               (lambda (_%g144481144484%_
                                                        _%g144482144486%_)
                                                 (cons _%g144481144484%_
                                                       _%g144482144486%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147564
                                           '()
                                           _%L144438%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147563))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L144437%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L144436%_
                                    'apply))
                                 (let ((__tmp147567
                                        (length (let ((__tmp147568
                                                       (lambda (_%g144488144491%_
                                                                _%g144489144493%_)
                                                         (cons _%g144488144491%_
                                                               _%g144489144493%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147568
                                                   '()
                                                   _%L144438%_))))
                                       (__tmp147565
                                        (length (let ((__tmp147566
                                                       (lambda (_%g144495144498%_
                                                                _%g144496144500%_)
                                                         (cons _%g144495144498%_
                                                               _%g144496144500%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147566
                                                   '()
                                                   _%L144434%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147567 __tmp147565))
                                 (let ((__tmp147571
                                        (let ((__tmp147572
                                               (lambda (_%g144502144505%_
                                                        _%g144503144507%_)
                                                 (cons _%g144502144505%_
                                                       _%g144503144507%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147572
                                           '()
                                           _%L144438%_)))
                                       (__tmp147569
                                        (let ((__tmp147570
                                               (lambda (_%g144509144512%_
                                                        _%g144510144514%_)
                                                 (cons _%g144509144512%_
                                                       _%g144510144514%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147570
                                           '()
                                           _%L144434%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147571
                                    __tmp147569))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L144437%_
                                    _%L144433%_))
                                 (not (let ((__tmp147576
                                             (lambda (_%g144516144518%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144516144518%_
                                                  _%L144435%_))))
                                            (__tmp147573
                                             (let ((__tmp147575
                                                    (lambda (_%g144520144523%_
                                                             _%g144521144525%_)
                                                      (cons _%g144520144523%_
                                                            _%g144521144525%_)))
                                                   (__tmp147574
                                                    (cons _%L144437%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147575
                                                __tmp147574
                                                _%L144438%_))))
                                        (declare (not safe))
                                        (__find __tmp147576 __tmp147573))))
                            (_%__kont146288146289%_
                             _%L144433%_
                             _%L144434%_
                             _%L144435%_
                             _%L144436%_
                             _%L144437%_
                             _%L144438%_)
                            (_%__match146393146394%_
                             _%e144016144273%_
                             _%hd144017144276%_
                             _%tl144018144278%_
                             _%e144028144305%_
                             _%hd144029144308%_
                             _%tl144030144310%_
                             _%e144031144313%_
                             _%hd144032144316%_
                             _%tl144033144318%_
                             _%e144034144321%_
                             _%hd144035144324%_
                             _%tl144036144326%_
                             _%e144037144329%_
                             _%hd144038144332%_
                             _%tl144039144334%_
                             _%e144040144337%_
                             _%hd144041144340%_
                             _%tl144042144342%_
                             _%e144043144345%_
                             _%hd144044144348%_
                             _%tl144045144350%_
                             _%e144046144353%_
                             _%hd144047144356%_
                             _%tl144048144358%_
                             _%e144049144361%_
                             _%hd144050144364%_
                             _%tl144051144366%_)))
                      (_%__match146393146394%_
                       _%e144016144273%_
                       _%hd144017144276%_
                       _%tl144018144278%_
                       _%e144028144305%_
                       _%hd144029144308%_
                       _%tl144030144310%_
                       _%e144031144313%_
                       _%hd144032144316%_
                       _%tl144033144318%_
                       _%e144034144321%_
                       _%hd144035144324%_
                       _%tl144036144326%_
                       _%e144037144329%_
                       _%hd144038144332%_
                       _%tl144039144334%_
                       _%e144040144337%_
                       _%hd144041144340%_
                       _%tl144042144342%_
                       _%e144043144345%_
                       _%hd144044144348%_
                       _%tl144045144350%_
                       _%e144046144353%_
                       _%hd144047144356%_
                       _%tl144048144358%_
                       _%e144049144361%_
                       _%hd144050144364%_
                       _%tl144051144366%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop144055144398%_
                                           _%target144052144369%_
                                           '()))
                                        (_%__match146393146394%_
                                         _%e144016144273%_
                                         _%hd144017144276%_
                                         _%tl144018144278%_
                                         _%e144028144305%_
                                         _%hd144029144308%_
                                         _%tl144030144310%_
                                         _%e144031144313%_
                                         _%hd144032144316%_
                                         _%tl144033144318%_
                                         _%e144034144321%_
                                         _%hd144035144324%_
                                         _%tl144036144326%_
                                         _%e144037144329%_
                                         _%hd144038144332%_
                                         _%tl144039144334%_
                                         _%e144040144337%_
                                         _%hd144041144340%_
                                         _%tl144042144342%_
                                         _%e144043144345%_
                                         _%hd144044144348%_
                                         _%tl144045144350%_
                                         _%e144046144353%_
                                         _%hd144047144356%_
                                         _%tl144048144358%_
                                         _%e144049144361%_
                                         _%hd144050144364%_
                                         _%tl144051144366%_))
                                    (_%__match146393146394%_
                                     _%e144016144273%_
                                     _%hd144017144276%_
                                     _%tl144018144278%_
                                     _%e144028144305%_
                                     _%hd144029144308%_
                                     _%tl144030144310%_
                                     _%e144031144313%_
                                     _%hd144032144316%_
                                     _%tl144033144318%_
                                     _%e144034144321%_
                                     _%hd144035144324%_
                                     _%tl144036144326%_
                                     _%e144037144329%_
                                     _%hd144038144332%_
                                     _%tl144039144334%_
                                     _%e144040144337%_
                                     _%hd144041144340%_
                                     _%tl144042144342%_
                                     _%e144043144345%_
                                     _%hd144044144348%_
                                     _%tl144045144350%_
                                     _%e144046144353%_
                                     _%hd144047144356%_
                                     _%tl144048144358%_
                                     _%e144049144361%_
                                     _%hd144050144364%_
                                     _%tl144051144366%_))))
                            (_%__match146393146394%_
                             _%e144016144273%_
                             _%hd144017144276%_
                             _%tl144018144278%_
                             _%e144028144305%_
                             _%hd144029144308%_
                             _%tl144030144310%_
                             _%e144031144313%_
                             _%hd144032144316%_
                             _%tl144033144318%_
                             _%e144034144321%_
                             _%hd144035144324%_
                             _%tl144036144326%_
                             _%e144037144329%_
                             _%hd144038144332%_
                             _%tl144039144334%_
                             _%e144040144337%_
                             _%hd144041144340%_
                             _%tl144042144342%_
                             _%e144043144345%_
                             _%hd144044144348%_
                             _%tl144045144350%_
                             _%e144046144353%_
                             _%hd144047144356%_
                             _%tl144048144358%_
                             _%e144049144361%_
                             _%hd144050144364%_
                             _%tl144051144366%_))
                        (_%__match146393146394%_
                         _%e144016144273%_
                         _%hd144017144276%_
                         _%tl144018144278%_
                         _%e144028144305%_
                         _%hd144029144308%_
                         _%tl144030144310%_
                         _%e144031144313%_
                         _%hd144032144316%_
                         _%tl144033144318%_
                         _%e144034144321%_
                         _%hd144035144324%_
                         _%tl144036144326%_
                         _%e144037144329%_
                         _%hd144038144332%_
                         _%tl144039144334%_
                         _%e144040144337%_
                         _%hd144041144340%_
                         _%tl144042144342%_
                         _%e144043144345%_
                         _%hd144044144348%_
                         _%tl144045144350%_
                         _%e144046144353%_
                         _%hd144047144356%_
                         _%tl144048144358%_
                         _%e144049144361%_
                         _%hd144050144364%_
                         _%tl144051144366%_))
                    (_%__match146393146394%_
                     _%e144016144273%_
                     _%hd144017144276%_
                     _%tl144018144278%_
                     _%e144028144305%_
                     _%hd144029144308%_
                     _%tl144030144310%_
                     _%e144031144313%_
                     _%hd144032144316%_
                     _%tl144033144318%_
                     _%e144034144321%_
                     _%hd144035144324%_
                     _%tl144036144326%_
                     _%e144037144329%_
                     _%hd144038144332%_
                     _%tl144039144334%_
                     _%e144040144337%_
                     _%hd144041144340%_
                     _%tl144042144342%_
                     _%e144043144345%_
                     _%hd144044144348%_
                     _%tl144045144350%_
                     _%e144046144353%_
                     _%hd144047144356%_
                     _%tl144048144358%_
                     _%e144049144361%_
                     _%hd144050144364%_
                     _%tl144051144366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match146393146394%_
                                                     _%e144016144273%_
                                                     _%hd144017144276%_
                                                     _%tl144018144278%_
                                                     _%e144028144305%_
                                                     _%hd144029144308%_
                                                     _%tl144030144310%_
                                                     _%e144031144313%_
                                                     _%hd144032144316%_
                                                     _%tl144033144318%_
                                                     _%e144034144321%_
                                                     _%hd144035144324%_
                                                     _%tl144036144326%_
                                                     _%e144037144329%_
                                                     _%hd144038144332%_
                                                     _%tl144039144334%_
                                                     _%e144040144337%_
                                                     _%hd144041144340%_
                                                     _%tl144042144342%_
                                                     _%e144043144345%_
                                                     _%hd144044144348%_
                                                     _%tl144045144350%_
                                                     _%e144046144353%_
                                                     _%hd144047144356%_
                                                     _%tl144048144358%_
                                                     _%e144049144361%_
                                                     _%hd144050144364%_
                                                     _%tl144051144366%_))))
                                            (_%__match146393146394%_
                                             _%e144016144273%_
                                             _%hd144017144276%_
                                             _%tl144018144278%_
                                             _%e144028144305%_
                                             _%hd144029144308%_
                                             _%tl144030144310%_
                                             _%e144031144313%_
                                             _%hd144032144316%_
                                             _%tl144033144318%_
                                             _%e144034144321%_
                                             _%hd144035144324%_
                                             _%tl144036144326%_
                                             _%e144037144329%_
                                             _%hd144038144332%_
                                             _%tl144039144334%_
                                             _%e144040144337%_
                                             _%hd144041144340%_
                                             _%tl144042144342%_
                                             _%e144043144345%_
                                             _%hd144044144348%_
                                             _%tl144045144350%_
                                             _%e144046144353%_
                                             _%hd144047144356%_
                                             _%tl144048144358%_
                                             _%e144049144361%_
                                             _%hd144050144364%_
                                             _%tl144051144366%_))))
                                    (_%__match146393146394%_
                                     _%e144016144273%_
                                     _%hd144017144276%_
                                     _%tl144018144278%_
                                     _%e144028144305%_
                                     _%hd144029144308%_
                                     _%tl144030144310%_
                                     _%e144031144313%_
                                     _%hd144032144316%_
                                     _%tl144033144318%_
                                     _%e144034144321%_
                                     _%hd144035144324%_
                                     _%tl144036144326%_
                                     _%e144037144329%_
                                     _%hd144038144332%_
                                     _%tl144039144334%_
                                     _%e144040144337%_
                                     _%hd144041144340%_
                                     _%tl144042144342%_
                                     _%e144043144345%_
                                     _%hd144044144348%_
                                     _%tl144045144350%_
                                     _%e144046144353%_
                                     _%hd144047144356%_
                                     _%tl144048144358%_
                                     _%e144049144361%_
                                     _%hd144050144364%_
                                     _%tl144051144366%_))
                                (_%__match146393146394%_
                                 _%e144016144273%_
                                 _%hd144017144276%_
                                 _%tl144018144278%_
                                 _%e144028144305%_
                                 _%hd144029144308%_
                                 _%tl144030144310%_
                                 _%e144031144313%_
                                 _%hd144032144316%_
                                 _%tl144033144318%_
                                 _%e144034144321%_
                                 _%hd144035144324%_
                                 _%tl144036144326%_
                                 _%e144037144329%_
                                 _%hd144038144332%_
                                 _%tl144039144334%_
                                 _%e144040144337%_
                                 _%hd144041144340%_
                                 _%tl144042144342%_
                                 _%e144043144345%_
                                 _%hd144044144348%_
                                 _%tl144045144350%_
                                 _%e144046144353%_
                                 _%hd144047144356%_
                                 _%tl144048144358%_
                                 _%e144049144361%_
                                 _%hd144050144364%_
                                 _%tl144051144366%_))
                            (_%__kont146296146297%_))))
                    (_%__kont146296146297%_))
                (_%__kont146296146297%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146296146297%_))))
                                            (_%__kont146296146297%_))))
                                    (_%__kont146296146297%_))
                                (_%__kont146296146297%_))))
                        (_%__kont146296146297%_))
                    (_%__kont146296146297%_))
                (_%__kont146296146297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146296146297%_))))
                                        (_%__kont146296146297%_))
                                    (_%__kont146296146297%_))
                                (_%__kont146296146297%_))))
                        (_%__kont146296146297%_))))
                (_%__kont146296146297%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144022144286%_
                                     _%target144019144281%_
                                     '()))))
                               (_%__match146311146312%_
                                (lambda (_%e143968144533%_
                                         _%hd143969144536%_
                                         _%tl143970144538%_
                                         _%__splice146284146285%_
                                         _%target143971144541%_
                                         _%tl143973144543%_)
                                  (letrec ((_%loop143974144546%_
                                            (lambda (_%hd143972144549%_
                                                     _%arg143978144551%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143972144549%_))
                                                  (let ((_%e143975144554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143972144549%_))))
                                                    (let ((_%lp-tl143977144559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143975144554%_)))
                                                          (_%lp-hd143976144557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143975144554%_))))
                                                      (_%loop143974144546%_
                                                       _%lp-tl143977144559%_
                                                       (cons _%lp-hd143976144557%_
                                                             _%arg143978144551%_))))
                                                  (let ((_%arg143979144562%_
                                                         (reverse _%arg143978144551%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143970144538%_))
                                                        (let ((_%e143980144565%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143970144538%_))))
                  (let ((_%tl143982144570%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143980144565%_)))
                        (_%hd143981144568%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143980144565%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143981144568%_))
                        (let ((_%e143983144573%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143981144568%_))))
                          (let ((_%tl143985144578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143983144573%_)))
                                (_%hd143984144576%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143983144573%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143984144576%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143984144576%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143985144578%_))
                                        (let ((_%e143986144581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143985144578%_))))
                                          (let ((_%tl143988144586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143986144581%_)))
                                                (_%hd143987144584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143986144581%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143987144584%_))
                                                (let ((_%e143989144589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143987144584%_))))
                                                  (let ((_%tl143991144594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143989144589%_)))
                                                        (_%hd143990144592%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143989144589%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143990144592%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143990144592%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143991144594%_))
                        (let ((_%e143992144597%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143991144594%_))))
                          (let ((_%tl143994144602%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143992144597%_)))
                                (_%hd143993144600%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143992144597%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143994144602%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143988144586%_))
                                    (let ((_%__splice146286146287%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143988144586%_
                                              '0))))
                                      (let ((_%tl143997144607%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146286146287%_
                                                '1)))
                                            (_%target143995144605%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146286146287%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143997144607%_))
                                            (letrec ((_%loop143998144610%_
                                                      (lambda (_%hd143996144613%_
                                                               _%xarg144002144615%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143996144613%_))
                                                            (let ((_%e143999144618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143996144613%_))))
                      (let ((_%lp-tl144001144623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143999144618%_)))
                            (_%lp-hd144000144621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143999144618%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd144000144621%_))
                            (let ((_%e144004144626%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd144000144621%_))))
                              (let ((_%tl144006144631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144004144626%_)))
                                    (_%hd144005144629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144004144626%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144005144629%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd144005144629%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144006144631%_))
                                            (let ((_%e144007144634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144006144631%_))))
                                              (let ((_%tl144009144639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144007144634%_)))
                                                    (_%hd144008144637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144007144634%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144009144639%_))
                                                    (_%loop143998144610%_
                                                     _%lp-tl144001144623%_
                                                     (cons _%hd144008144637%_
                                                           _%xarg144002144615%_))
                                                    (_%__match146323146324%_
                                                     _%e143968144533%_
                                                     _%hd143969144536%_
                                                     _%tl143970144538%_
                                                     _%__splice146284146285%_
                                                     _%target143971144541%_
                                                     _%tl143973144543%_))))
                                            (_%__match146323146324%_
                                             _%e143968144533%_
                                             _%hd143969144536%_
                                             _%tl143970144538%_
                                             _%__splice146284146285%_
                                             _%target143971144541%_
                                             _%tl143973144543%_))
                                        (_%__match146323146324%_
                                         _%e143968144533%_
                                         _%hd143969144536%_
                                         _%tl143970144538%_
                                         _%__splice146284146285%_
                                         _%target143971144541%_
                                         _%tl143973144543%_))
                                    (_%__match146323146324%_
                                     _%e143968144533%_
                                     _%hd143969144536%_
                                     _%tl143970144538%_
                                     _%__splice146284146285%_
                                     _%target143971144541%_
                                     _%tl143973144543%_))))
                            (_%__match146323146324%_
                             _%e143968144533%_
                             _%hd143969144536%_
                             _%tl143970144538%_
                             _%__splice146284146285%_
                             _%target143971144541%_
                             _%tl143973144543%_))))
                    (let ((_%xarg144003144642%_
                           (reverse _%xarg144002144615%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143982144570%_))
                          (let ((_%L144645%_ _%xarg144003144642%_)
                                (_%L144646%_ _%hd143993144600%_)
                                (_%L144647%_ _%arg143979144562%_))
                            (if (and (let ((__tmp147577
                                            (let ((__tmp147578
                                                   (lambda (_%g144675144678%_
                                                            _%g144676144680%_)
                                                     (cons _%g144675144678%_
                                                           _%g144676144680%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147578
                                               '()
                                               _%L144647%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147577))
                                     (let ((__tmp147581
                                            (length (let ((__tmp147582
                                                           (lambda (_%g144682144685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144683144687%_)
                     (cons _%g144682144685%_ _%g144683144687%_))))
              (declare (not safe))
              (__foldr1 __tmp147582 '() _%L144647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147579
                                            (length (let ((__tmp147580
                                                           (lambda (_%g144689144692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144690144694%_)
                     (cons _%g144689144692%_ _%g144690144694%_))))
              (declare (not safe))
              (__foldr1 __tmp147580 '() _%L144645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147581 __tmp147579))
                                     (let ((__tmp147585
                                            (let ((__tmp147586
                                                   (lambda (_%g144696144699%_
                                                            _%g144697144701%_)
                                                     (cons _%g144696144699%_
                                                           _%g144697144701%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147586
                                               '()
                                               _%L144647%_)))
                                           (__tmp147583
                                            (let ((__tmp147584
                                                   (lambda (_%g144703144706%_
                                                            _%g144704144708%_)
                                                     (cons _%g144703144706%_
                                                           _%g144704144708%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147584
                                               '()
                                               _%L144645%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147585
                                        __tmp147583))
                                     (not (let ((__tmp147589
                                                 (lambda (_%g144710144712%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144710144712%_
                                                      _%L144646%_))))
                                                (__tmp147587
                                                 (let ((__tmp147588
                                                        (lambda (_%g144714144717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144715144719%_)
                  (cons _%g144714144717%_ _%g144715144719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147588
                                                    '()
                                                    _%L144647%_))))
                                            (declare (not safe))
                                            (__find __tmp147589 __tmp147587))))
                                (_%__kont146282146283%_
                                 _%L144645%_
                                 _%L144646%_
                                 _%L144647%_)
                                (_%__match146323146324%_
                                 _%e143968144533%_
                                 _%hd143969144536%_
                                 _%tl143970144538%_
                                 _%__splice146284146285%_
                                 _%target143971144541%_
                                 _%tl143973144543%_)))
                          (_%__match146323146324%_
                           _%e143968144533%_
                           _%hd143969144536%_
                           _%tl143970144538%_
                           _%__splice146284146285%_
                           _%target143971144541%_
                           _%tl143973144543%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143998144610%_
                                               _%target143995144605%_
                                               '()))
                                            (_%__match146323146324%_
                                             _%e143968144533%_
                                             _%hd143969144536%_
                                             _%tl143970144538%_
                                             _%__splice146284146285%_
                                             _%target143971144541%_
                                             _%tl143973144543%_))))
                                    (_%__match146323146324%_
                                     _%e143968144533%_
                                     _%hd143969144536%_
                                     _%tl143970144538%_
                                     _%__splice146284146285%_
                                     _%target143971144541%_
                                     _%tl143973144543%_))
                                (_%__match146323146324%_
                                 _%e143968144533%_
                                 _%hd143969144536%_
                                 _%tl143970144538%_
                                 _%__splice146284146285%_
                                 _%target143971144541%_
                                 _%tl143973144543%_))))
                        (_%__match146323146324%_
                         _%e143968144533%_
                         _%hd143969144536%_
                         _%tl143970144538%_
                         _%__splice146284146285%_
                         _%target143971144541%_
                         _%tl143973144543%_))
                    (_%__match146323146324%_
                     _%e143968144533%_
                     _%hd143969144536%_
                     _%tl143970144538%_
                     _%__splice146284146285%_
                     _%target143971144541%_
                     _%tl143973144543%_))
                (_%__match146323146324%_
                 _%e143968144533%_
                 _%hd143969144536%_
                 _%tl143970144538%_
                 _%__splice146284146285%_
                 _%target143971144541%_
                 _%tl143973144543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146323146324%_
                                                 _%e143968144533%_
                                                 _%hd143969144536%_
                                                 _%tl143970144538%_
                                                 _%__splice146284146285%_
                                                 _%target143971144541%_
                                                 _%tl143973144543%_))))
                                        (_%__match146323146324%_
                                         _%e143968144533%_
                                         _%hd143969144536%_
                                         _%tl143970144538%_
                                         _%__splice146284146285%_
                                         _%target143971144541%_
                                         _%tl143973144543%_))
                                    (_%__match146323146324%_
                                     _%e143968144533%_
                                     _%hd143969144536%_
                                     _%tl143970144538%_
                                     _%__splice146284146285%_
                                     _%target143971144541%_
                                     _%tl143973144543%_))
                                (_%__match146323146324%_
                                 _%e143968144533%_
                                 _%hd143969144536%_
                                 _%tl143970144538%_
                                 _%__splice146284146285%_
                                 _%target143971144541%_
                                 _%tl143973144543%_))))
                        (_%__match146323146324%_
                         _%e143968144533%_
                         _%hd143969144536%_
                         _%tl143970144538%_
                         _%__splice146284146285%_
                         _%target143971144541%_
                         _%tl143973144543%_))))
                (_%__match146323146324%_
                 _%e143968144533%_
                 _%hd143969144536%_
                 _%tl143970144538%_
                 _%__splice146284146285%_
                 _%target143971144541%_
                 _%tl143973144543%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143974144546%_
                                     _%target143971144541%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146280146281%_))
                              (let ((_%e143968144533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146280146281%_))))
                                (let ((_%tl143970144538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143968144533%_)))
                                      (_%hd143969144536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143968144533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143969144536%_))
                                      (let ((_%__splice146284146285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143969144536%_
                                                '0))))
                                        (let ((_%tl143973144543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146284146285%_
                                                  '1)))
                                              (_%target143971144541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146284146285%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143973144543%_))
                                              (_%__match146311146312%_
                                               _%e143968144533%_
                                               _%hd143969144536%_
                                               _%tl143970144538%_
                                               _%__splice146284146285%_
                                               _%target143971144541%_
                                               _%tl143973144543%_)
                                              (_%__match146323146324%_
                                               _%e143968144533%_
                                               _%hd143969144536%_
                                               _%tl143970144538%_
                                               _%__splice146284146285%_
                                               _%target143971144541%_
                                               _%tl143973144543%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143970144538%_))
                                          (let ((_%e144083144140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143970144538%_))))
                                            (let ((_%tl144085144145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144083144140%_)))
                                                  (_%hd144084144143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144083144140%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144084144143%_))
                                                  (let ((_%e144086144148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144084144143%_))))
                                                    (let ((_%tl144088144153%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144086144148%_)))
                                                          (_%hd144087144151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144086144148%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd144087144151%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd144087144151%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144088144153%_))
                          (let ((_%e144089144156%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144088144153%_))))
                            (let ((_%tl144091144161%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144089144156%_)))
                                  (_%hd144090144159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144089144156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd144090144159%_))
                                  (let ((_%e144092144164%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd144090144159%_))))
                                    (let ((_%tl144094144169%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144092144164%_)))
                                          (_%hd144093144167%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144092144164%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd144093144167%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd144093144167%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl144094144169%_))
                                                  (let ((_%e144095144172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl144094144169%_))))
                                                    (let ((_%tl144097144177%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144095144172%_)))
                                                          (_%hd144096144175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144095144172%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144097144177%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144091144161%_))
                      (let ((_%e144098144180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144091144161%_))))
                        (let ((_%tl144100144185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144098144180%_)))
                              (_%hd144099144183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144098144180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd144099144183%_))
                              (let ((_%e144101144188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd144099144183%_))))
                                (let ((_%tl144103144193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144101144188%_)))
                                      (_%hd144102144191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144101144188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd144102144191%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd144102144191%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144103144193%_))
                                              (let ((_%e144104144196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl144103144193%_))))
                                                (let ((_%tl144106144201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144104144196%_)))
                                                      (_%hd144105144199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144104144196%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144106144201%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl144100144185%_))
                                                          (let ((_%e144107144204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl144100144185%_))))
                    (let ((_%tl144109144209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144107144204%_)))
                          (_%hd144108144207%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144107144204%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd144108144207%_))
                          (let ((_%e144110144212%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd144108144207%_))))
                            (let ((_%tl144112144217%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144110144212%_)))
                                  (_%hd144111144215%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144110144212%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd144111144215%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd144111144215%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144112144217%_))
                                          (let ((_%e144113144220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144112144217%_))))
                                            (let ((_%tl144115144225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144113144220%_)))
                                                  (_%hd144114144223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144113144220%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl144115144225%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144109144209%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144085144145%_))
                                                          (_%__match146421146422%_
                                                           _%e143968144533%_
                                                           _%hd143969144536%_
                                                           _%tl143970144538%_
                                                           _%e144083144140%_
                                                           _%hd144084144143%_
                                                           _%tl144085144145%_
                                                           _%e144086144148%_
                                                           _%hd144087144151%_
                                                           _%tl144088144153%_
                                                           _%e144089144156%_
                                                           _%hd144090144159%_
                                                           _%tl144091144161%_
                                                           _%e144092144164%_
                                                           _%hd144093144167%_
                                                           _%tl144094144169%_
                                                           _%e144095144172%_
                                                           _%hd144096144175%_
                                                           _%tl144097144177%_
                                                           _%e144098144180%_
                                                           _%hd144099144183%_
                                                           _%tl144100144185%_
                                                           _%e144101144188%_
                                                           _%hd144102144191%_
                                                           _%tl144103144193%_
                                                           _%e144104144196%_
                                                           _%hd144105144199%_
                                                           _%tl144106144201%_
                                                           _%e144107144204%_
                                                           _%hd144108144207%_
                                                           _%tl144109144209%_
                                                           _%e144110144212%_
                                                           _%hd144111144215%_
                                                           _%tl144112144217%_
                                                           _%e144113144220%_
                                                           _%hd144114144223%_
                                                           _%tl144115144225%_)
                                                          (_%__kont146296146297%_))
                                                      (_%__kont146296146297%_))
                                                  (_%__kont146296146297%_))))
                                          (_%__kont146296146297%_))
                                      (_%__kont146296146297%_))
                                  (_%__kont146296146297%_))))
                          (_%__kont146296146297%_))))
                  (_%__kont146296146297%_))
              (_%__kont146296146297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146296146297%_))
                                          (_%__kont146296146297%_))
                                      (_%__kont146296146297%_))))
                              (_%__kont146296146297%_))))
                      (_%__kont146296146297%_))
                  (_%__kont146296146297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146296146297%_))
                                              (_%__kont146296146297%_))
                                          (_%__kont146296146297%_))))
                                  (_%__kont146296146297%_))))
                          (_%__kont146296146297%_))
                      (_%__kont146296146297%_))
                  (_%__kont146296146297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146296146297%_))))
                                          (_%__kont146296146297%_)))))
                              (_%__kont146296146297%_)))))))
                 (_%dispatch-case-e143268%_
                  (lambda (_%hd143419%_ _%body143420%_)
                    (let* ((_%form143422%_
                            (cons _%hd143419%_ (cons _%body143420%_ '())))
                           (_%__stx146424146425%_ _%form143422%_)
                           (_%g143426143550%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146424146425%_)))))
                      (let ((_%__kont146426146427%_
                             (lambda (_%L143921%_ _%L143922%_ _%L143923%_)
                               (let ((__tmp147590
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143922%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143264%_
                                  __tmp147590))))
                            (_%__kont146432146433%_
                             (lambda (_%L143769%_
                                      _%L143770%_
                                      _%L143771%_
                                      _%L143772%_)
                               (let ((__tmp147591
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143769%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143264%_
                                  __tmp147591))))
                            (_%__kont146436146437%_
                             (lambda (_%L143635%_ _%L143636%_ _%L143637%_)
                               (let ((__tmp147592
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143635%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143264%_
                                  __tmp147592)))))
                        (let* ((_%__match146533146534%_
                                (lambda (_%e143516143555%_
                                         _%hd143517143558%_
                                         _%tl143518143560%_
                                         _%e143519143563%_
                                         _%hd143520143566%_
                                         _%tl143521143568%_
                                         _%e143522143571%_
                                         _%hd143523143574%_
                                         _%tl143524143576%_
                                         _%e143525143579%_
                                         _%hd143526143582%_
                                         _%tl143527143584%_
                                         _%e143528143587%_
                                         _%hd143529143590%_
                                         _%tl143530143592%_
                                         _%e143531143595%_
                                         _%hd143532143598%_
                                         _%tl143533143600%_
                                         _%e143534143603%_
                                         _%hd143535143606%_
                                         _%tl143536143608%_
                                         _%e143537143611%_
                                         _%hd143538143614%_
                                         _%tl143539143616%_
                                         _%e143540143619%_
                                         _%hd143541143622%_
                                         _%tl143542143624%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143536143608%_))
                                      (let ((_%e143543143627%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143536143608%_))))
                                        (let ((_%tl143545143632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143543143627%_)))
                                              (_%hd143544143630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143543143627%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143545143632%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143521143568%_))
                                                  (_%__kont146436146437%_
                                                   _%hd143541143622%_
                                                   _%hd143532143598%_
                                                   _%hd143517143558%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143426143550%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143426143550%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143426143550%_)))))
                               (_%__match146463146464%_
                                (lambda (_%e143477143673%_
                                         _%hd143478143676%_
                                         _%tl143479143678%_
                                         _%__splice146434146435%_
                                         _%target143480143681%_
                                         _%tl143482143683%_)
                                  (letrec ((_%loop143483143686%_
                                            (lambda (_%hd143481143689%_
                                                     _%arg143487143691%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143481143689%_))
                                                  (let ((_%e143484143694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143481143689%_))))
                                                    (let ((_%lp-tl143486143699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143484143694%_)))
                                                          (_%lp-hd143485143697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143484143694%_))))
                                                      (_%loop143483143686%_
                                                       _%lp-tl143486143699%_
                                                       (cons _%lp-hd143485143697%_
                                                             _%arg143487143691%_))))
                                                  (let ((_%arg143488143702%_
                                                         (reverse _%arg143487143691%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143479143678%_))
                                                        (let ((_%e143489143705%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143479143678%_))))
                  (let ((_%tl143491143710%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143489143705%_)))
                        (_%hd143490143708%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143489143705%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143490143708%_))
                        (let ((_%e143492143713%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143490143708%_))))
                          (let ((_%tl143494143718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143492143713%_)))
                                (_%hd143493143716%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143492143713%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143493143716%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143493143716%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143494143718%_))
                                        (let ((_%e143495143721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143494143718%_))))
                                          (let ((_%tl143497143726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143495143721%_)))
                                                (_%hd143496143724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143495143721%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143496143724%_))
                                                (let ((_%e143498143729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143496143724%_))))
                                                  (let ((_%tl143500143734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143498143729%_)))
                                                        (_%hd143499143732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143498143729%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143499143732%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143499143732%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143500143734%_))
                        (let ((_%e143501143737%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143500143734%_))))
                          (let ((_%tl143503143742%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143501143737%_)))
                                (_%hd143502143740%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143501143737%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143503143742%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143497143726%_))
                                    (let ((_%e143504143745%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143497143726%_))))
                                      (let ((_%tl143506143750%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143504143745%_)))
                                            (_%hd143505143748%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143504143745%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143505143748%_))
                                            (let ((_%e143507143753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143505143748%_))))
                                              (let ((_%tl143509143758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143507143753%_)))
                                                    (_%hd143508143756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143507143753%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143508143756%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143508143756%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143509143758%_))
                                                            (let ((_%e143510143761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143509143758%_))))
                      (let ((_%tl143512143766%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143510143761%_)))
                            (_%hd143511143764%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143510143761%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143512143766%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143491143710%_))
                                (_%__kont146432146433%_
                                 _%hd143511143764%_
                                 _%hd143502143740%_
                                 _%tl143482143683%_
                                 _%arg143488143702%_)
                                (_%__match146533146534%_
                                 _%e143477143673%_
                                 _%hd143478143676%_
                                 _%tl143479143678%_
                                 _%e143489143705%_
                                 _%hd143490143708%_
                                 _%tl143491143710%_
                                 _%e143492143713%_
                                 _%hd143493143716%_
                                 _%tl143494143718%_
                                 _%e143495143721%_
                                 _%hd143496143724%_
                                 _%tl143497143726%_
                                 _%e143498143729%_
                                 _%hd143499143732%_
                                 _%tl143500143734%_
                                 _%e143501143737%_
                                 _%hd143502143740%_
                                 _%tl143503143742%_
                                 _%e143504143745%_
                                 _%hd143505143748%_
                                 _%tl143506143750%_
                                 _%e143507143753%_
                                 _%hd143508143756%_
                                 _%tl143509143758%_
                                 _%e143510143761%_
                                 _%hd143511143764%_
                                 _%tl143512143766%_))
                            (let ()
                              (declare (not safe))
                              (_%g143426143550%_)))))
                    (let () (declare (not safe)) (_%g143426143550%_)))
                (let () (declare (not safe)) (_%g143426143550%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143426143550%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143426143550%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143426143550%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143426143550%_)))))
                        (let () (declare (not safe)) (_%g143426143550%_)))
                    (let () (declare (not safe)) (_%g143426143550%_)))
                (let () (declare (not safe)) (_%g143426143550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g143426143550%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143426143550%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143426143550%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143426143550%_)))))
                        (let () (declare (not safe)) (_%g143426143550%_)))))
                (let () (declare (not safe)) (_%g143426143550%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143483143686%_
                                     _%target143480143681%_
                                     '()))))
                               (_%__match146451146452%_
                                (lambda (_%e143431143809%_
                                         _%hd143432143812%_
                                         _%tl143433143814%_
                                         _%__splice146428146429%_
                                         _%target143434143817%_
                                         _%tl143436143819%_)
                                  (letrec ((_%loop143437143822%_
                                            (lambda (_%hd143435143825%_
                                                     _%arg143441143827%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143435143825%_))
                                                  (let ((_%e143438143830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143435143825%_))))
                                                    (let ((_%lp-tl143440143835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143438143830%_)))
                                                          (_%lp-hd143439143833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143438143830%_))))
                                                      (_%loop143437143822%_
                                                       _%lp-tl143440143835%_
                                                       (cons _%lp-hd143439143833%_
                                                             _%arg143441143827%_))))
                                                  (let ((_%arg143442143838%_
                                                         (reverse _%arg143441143827%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143433143814%_))
                                                        (let ((_%e143443143841%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143433143814%_))))
                  (let ((_%tl143445143846%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143443143841%_)))
                        (_%hd143444143844%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143443143841%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143444143844%_))
                        (let ((_%e143446143849%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143444143844%_))))
                          (let ((_%tl143448143854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143446143849%_)))
                                (_%hd143447143852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143446143849%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143447143852%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143447143852%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143448143854%_))
                                        (let ((_%e143449143857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143448143854%_))))
                                          (let ((_%tl143451143862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143449143857%_)))
                                                (_%hd143450143860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143449143857%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143450143860%_))
                                                (let ((_%e143452143865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143450143860%_))))
                                                  (let ((_%tl143454143870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143452143865%_)))
                                                        (_%hd143453143868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143452143865%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143453143868%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143453143868%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143454143870%_))
                        (let ((_%e143455143873%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143454143870%_))))
                          (let ((_%tl143457143878%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143455143873%_)))
                                (_%hd143456143876%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143455143873%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143457143878%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143451143862%_))
                                    (let ((_%__splice146430146431%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143451143862%_
                                              '0))))
                                      (let ((_%tl143460143883%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146430146431%_
                                                '1)))
                                            (_%target143458143881%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146430146431%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143460143883%_))
                                            (letrec ((_%loop143461143886%_
                                                      (lambda (_%hd143459143889%_
                                                               _%xarg143465143891%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143459143889%_))
                                                            (let ((_%e143462143894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143459143889%_))))
                      (let ((_%lp-tl143464143899%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143462143894%_)))
                            (_%lp-hd143463143897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143462143894%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143463143897%_))
                            (let ((_%e143467143902%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143463143897%_))))
                              (let ((_%tl143469143907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143467143902%_)))
                                    (_%hd143468143905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143467143902%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143468143905%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143468143905%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143469143907%_))
                                            (let ((_%e143470143910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143469143907%_))))
                                              (let ((_%tl143472143915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143470143910%_)))
                                                    (_%hd143471143913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143470143910%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143472143915%_))
                                                    (_%loop143461143886%_
                                                     _%lp-tl143464143899%_
                                                     (cons _%hd143471143913%_
                                                           _%xarg143465143891%_))
                                                    (_%__match146463146464%_
                                                     _%e143431143809%_
                                                     _%hd143432143812%_
                                                     _%tl143433143814%_
                                                     _%__splice146428146429%_
                                                     _%target143434143817%_
                                                     _%tl143436143819%_))))
                                            (_%__match146463146464%_
                                             _%e143431143809%_
                                             _%hd143432143812%_
                                             _%tl143433143814%_
                                             _%__splice146428146429%_
                                             _%target143434143817%_
                                             _%tl143436143819%_))
                                        (_%__match146463146464%_
                                         _%e143431143809%_
                                         _%hd143432143812%_
                                         _%tl143433143814%_
                                         _%__splice146428146429%_
                                         _%target143434143817%_
                                         _%tl143436143819%_))
                                    (_%__match146463146464%_
                                     _%e143431143809%_
                                     _%hd143432143812%_
                                     _%tl143433143814%_
                                     _%__splice146428146429%_
                                     _%target143434143817%_
                                     _%tl143436143819%_))))
                            (_%__match146463146464%_
                             _%e143431143809%_
                             _%hd143432143812%_
                             _%tl143433143814%_
                             _%__splice146428146429%_
                             _%target143434143817%_
                             _%tl143436143819%_))))
                    (let ((_%xarg143466143918%_
                           (reverse _%xarg143465143891%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143445143846%_))
                          (_%__kont146426146427%_
                           _%xarg143466143918%_
                           _%hd143456143876%_
                           _%arg143442143838%_)
                          (_%__match146463146464%_
                           _%e143431143809%_
                           _%hd143432143812%_
                           _%tl143433143814%_
                           _%__splice146428146429%_
                           _%target143434143817%_
                           _%tl143436143819%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143461143886%_
                                               _%target143458143881%_
                                               '()))
                                            (_%__match146463146464%_
                                             _%e143431143809%_
                                             _%hd143432143812%_
                                             _%tl143433143814%_
                                             _%__splice146428146429%_
                                             _%target143434143817%_
                                             _%tl143436143819%_))))
                                    (_%__match146463146464%_
                                     _%e143431143809%_
                                     _%hd143432143812%_
                                     _%tl143433143814%_
                                     _%__splice146428146429%_
                                     _%target143434143817%_
                                     _%tl143436143819%_))
                                (_%__match146463146464%_
                                 _%e143431143809%_
                                 _%hd143432143812%_
                                 _%tl143433143814%_
                                 _%__splice146428146429%_
                                 _%target143434143817%_
                                 _%tl143436143819%_))))
                        (_%__match146463146464%_
                         _%e143431143809%_
                         _%hd143432143812%_
                         _%tl143433143814%_
                         _%__splice146428146429%_
                         _%target143434143817%_
                         _%tl143436143819%_))
                    (_%__match146463146464%_
                     _%e143431143809%_
                     _%hd143432143812%_
                     _%tl143433143814%_
                     _%__splice146428146429%_
                     _%target143434143817%_
                     _%tl143436143819%_))
                (_%__match146463146464%_
                 _%e143431143809%_
                 _%hd143432143812%_
                 _%tl143433143814%_
                 _%__splice146428146429%_
                 _%target143434143817%_
                 _%tl143436143819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146463146464%_
                                                 _%e143431143809%_
                                                 _%hd143432143812%_
                                                 _%tl143433143814%_
                                                 _%__splice146428146429%_
                                                 _%target143434143817%_
                                                 _%tl143436143819%_))))
                                        (_%__match146463146464%_
                                         _%e143431143809%_
                                         _%hd143432143812%_
                                         _%tl143433143814%_
                                         _%__splice146428146429%_
                                         _%target143434143817%_
                                         _%tl143436143819%_))
                                    (_%__match146463146464%_
                                     _%e143431143809%_
                                     _%hd143432143812%_
                                     _%tl143433143814%_
                                     _%__splice146428146429%_
                                     _%target143434143817%_
                                     _%tl143436143819%_))
                                (_%__match146463146464%_
                                 _%e143431143809%_
                                 _%hd143432143812%_
                                 _%tl143433143814%_
                                 _%__splice146428146429%_
                                 _%target143434143817%_
                                 _%tl143436143819%_))))
                        (_%__match146463146464%_
                         _%e143431143809%_
                         _%hd143432143812%_
                         _%tl143433143814%_
                         _%__splice146428146429%_
                         _%target143434143817%_
                         _%tl143436143819%_))))
                (_%__match146463146464%_
                 _%e143431143809%_
                 _%hd143432143812%_
                 _%tl143433143814%_
                 _%__splice146428146429%_
                 _%target143434143817%_
                 _%tl143436143819%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143437143822%_
                                     _%target143434143817%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146424146425%_))
                              (let ((_%e143431143809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146424146425%_))))
                                (let ((_%tl143433143814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143431143809%_)))
                                      (_%hd143432143812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143431143809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143432143812%_))
                                      (let ((_%__splice146428146429%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143432143812%_
                                                '0))))
                                        (let ((_%tl143436143819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146428146429%_
                                                  '1)))
                                              (_%target143434143817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146428146429%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143436143819%_))
                                              (_%__match146451146452%_
                                               _%e143431143809%_
                                               _%hd143432143812%_
                                               _%tl143433143814%_
                                               _%__splice146428146429%_
                                               _%target143434143817%_
                                               _%tl143436143819%_)
                                              (_%__match146463146464%_
                                               _%e143431143809%_
                                               _%hd143432143812%_
                                               _%tl143433143814%_
                                               _%__splice146428146429%_
                                               _%target143434143817%_
                                               _%tl143436143819%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143433143814%_))
                                          (let ((_%e143519143563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143433143814%_))))
                                            (let ((_%tl143521143568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143519143563%_)))
                                                  (_%hd143520143566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143519143563%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143520143566%_))
                                                  (let ((_%e143522143571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143520143566%_))))
                                                    (let ((_%tl143524143576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143522143571%_)))
                                                          (_%hd143523143574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143522143571%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143523143574%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143523143574%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143524143576%_))
                          (let ((_%e143525143579%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143524143576%_))))
                            (let ((_%tl143527143584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143525143579%_)))
                                  (_%hd143526143582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143525143579%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143526143582%_))
                                  (let ((_%e143528143587%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143526143582%_))))
                                    (let ((_%tl143530143592%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143528143587%_)))
                                          (_%hd143529143590%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143528143587%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143529143590%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143529143590%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143530143592%_))
                                                  (let ((_%e143531143595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143530143592%_))))
                                                    (let ((_%tl143533143600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143531143595%_)))
                                                          (_%hd143532143598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143531143595%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143533143600%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143527143584%_))
                      (let ((_%e143534143603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143527143584%_))))
                        (let ((_%tl143536143608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143534143603%_)))
                              (_%hd143535143606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143534143603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143535143606%_))
                              (let ((_%e143537143611%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143535143606%_))))
                                (let ((_%tl143539143616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143537143611%_)))
                                      (_%hd143538143614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143537143611%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143538143614%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143538143614%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143539143616%_))
                                              (let ((_%e143540143619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143539143616%_))))
                                                (let ((_%tl143542143624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143540143619%_)))
                                                      (_%hd143541143622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143540143619%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143542143624%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143536143608%_))
                                                          (let ((_%e143543143627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143536143608%_))))
                    (let ((_%tl143545143632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143543143627%_)))
                          (_%hd143544143630%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143543143627%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143545143632%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143521143568%_))
                              (_%__kont146436146437%_
                               _%hd143541143622%_
                               _%hd143532143598%_
                               _%hd143432143812%_)
                              (let ()
                                (declare (not safe))
                                (_%g143426143550%_)))
                          (let () (declare (not safe)) (_%g143426143550%_)))))
                  (let () (declare (not safe)) (_%g143426143550%_)))
              (let () (declare (not safe)) (_%g143426143550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143426143550%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143426143550%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143426143550%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143426143550%_)))))
                      (let () (declare (not safe)) (_%g143426143550%_)))
                  (let () (declare (not safe)) (_%g143426143550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143426143550%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143426143550%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143426143550%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g143426143550%_)))))
                          (let () (declare (not safe)) (_%g143426143550%_)))
                      (let () (declare (not safe)) (_%g143426143550%_)))
                  (let () (declare (not safe)) (_%g143426143550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143426143550%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143426143550%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g143426143550%_))))))))
                 (_%generate1143269%_
                  (lambda (_%args143404%_
                           _%arglen143405%_
                           _%hd143406%_
                           _%body143407%_)
                    (let* ((_%len143409%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd143406%_)))
                           (_%condition143414%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd143406%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen143405%_
                                                (cons _%len143409%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen143405%_ (cons _%len143409%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len143409%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen143405%_
                                                    (cons _%len143409%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen143405%_ (cons _%len143409%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch143416%_
                            (if (_%dispatch-case?143267%_
                                 _%hd143406%_
                                 _%body143407%_)
                                (_%dispatch-case-e143268%_
                                 _%hd143406%_
                                 _%body143407%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self143264%_
                                 _%hd143406%_
                                 _%body143407%_))))
                      (cons _%condition143414%_
                            (cons (cons 'apply
                                        (cons _%dispatch143416%_
                                              (cons _%args143404%_ '())))
                                  '()))))))
          (let* ((_%g143271143299%_
                  (lambda (_%g143272143296%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143272143296%_))))
                 (_%g143270143401%_
                  (lambda (_%g143272143302%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143272143302%_))
                        (let ((_%e143275143304%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143272143302%_))))
                          (let ((_%hd143276143307%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143275143304%_)))
                                (_%tl143277143309%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143275143304%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143277143309%_))
                                (let ((_g147593_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl143277143309%_
                                          '0))))
                                  (begin
                                    (let ((_g147594_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147593_)
                                                 (##vector-length _g147593_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147594_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147594_)))
                                    (let ((_%target143278143312%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147593_ 0)))
                                          (_%tl143280143314%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147593_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143280143314%_))
                                          (letrec ((_%loop143281143317%_
                                                    (lambda (_%hd143279143320%_
                                                             _%body143285143322%_
                                                             _%hd143286143324%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd143279143320%_))
                                                          (let ((_%e143282143327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd143279143320%_))))
                    (let ((_%lp-hd143283143330%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143282143327%_)))
                          (_%lp-tl143284143332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143282143327%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd143283143330%_))
                          (let ((_%e143289143335%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd143283143330%_))))
                            (let ((_%hd143290143338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143289143335%_)))
                                  (_%tl143291143340%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143289143335%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143291143340%_))
                                  (let ((_%e143292143343%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143291143340%_))))
                                    (let ((_%hd143293143346%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143292143343%_)))
                                          (_%tl143294143348%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143292143343%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143294143348%_))
                                          (_%loop143281143317%_
                                           _%lp-tl143284143332%_
                                           (cons _%hd143293143346%_
                                                 _%body143285143322%_)
                                           (cons _%hd143290143338%_
                                                 _%hd143286143324%_))
                                          (_%g143271143299%_
                                           _%g143272143302%_))))
                                  (_%g143271143299%_ _%g143272143302%_))))
                          (_%g143271143299%_ _%g143272143302%_))))
                  (let ((_%body143287143351%_ (reverse _%body143285143322%_))
                        (_%hd143288143353%_ (reverse _%hd143286143324%_)))
                    ((lambda (_%L143356%_ _%L143357%_)
                       (let ((_%args143376%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen143377%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name143378%_
                              (let ((_%$e143373%_
                                     (let ((__tmp147595
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147595 _%stx143265%_))))
                                (if _%$e143373%_
                                    _%$e143373%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args143376%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen143377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args143376%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args143376%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147599
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name143378%_
                                                                (cons _%args143376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147596
                                  (map (lambda (_%g143379143382%_
                                                _%g143380143384%_)
                                         (_%generate1143269%_
                                          _%args143376%_
                                          _%arglen143377%_
                                          _%g143379143382%_
                                          _%g143380143384%_))
                                       (let ((__tmp147597
                                              (lambda (_%g143386143389%_
                                                       _%g143387143391%_)
                                                (cons _%g143386143389%_
                                                      _%g143387143391%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147597
                                          '()
                                          _%L143357%_))
                                       (let ((__tmp147598
                                              (lambda (_%g143393143396%_
                                                       _%g143394143398%_)
                                                (cons _%g143393143396%_
                                                      _%g143394143398%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147598
                                          '()
                                          _%L143356%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147599 __tmp147596)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body143287143351%_
                     _%hd143288143353%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop143281143317%_
                                             _%target143278143312%_
                                             '()
                                             '()))
                                          (_%g143271143299%_
                                           _%g143272143302%_)))))
                                (_%g143271143299%_ _%g143272143302%_))))
                        (_%g143271143299%_ _%g143272143302%_)))))
            (_%g143270143401%_ _%stx143265%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142501%_ _%stx142502%_ _%compiled-body?142503%_)
        (letrec ((_%generate-simple142505%_
                  (lambda (_%hd143249%_ _%body143250%_)
                    (_%coalesce-boolean142506%_
                     (_%simplify-let142507%_
                      (gxc#generate-runtime-simple-let
                       _%self142501%_
                       'let
                       _%hd143249%_
                       _%body143250%_
                       _%compiled-body?142503%_)))))
                 (_%coalesce-boolean142506%_
                  (lambda (_%code143110%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code143111143137%_ _%code143110%_)
                               (_%else143113143145%_
                                (lambda () _%code143110%_))
                               (_%K143115143182%_
                                (lambda (_%expr2143148%_
                                         _%expr1143149%_
                                         _%id143150%_)
                                  (let* ((_%expr2143151143159%_
                                          _%expr2143148%_)
                                         (_%else143153143167%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1143149%_
                                                        (cons _%expr2143148%_
                                                              '())))))
                                         (_%K143155143172%_
                                          (lambda (_%exprs143170%_)
                                            (cons 'or
                                                  (cons _%expr1143149%_
                                                        _%exprs143170%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2143151143159%_))
                                        (let ((_%hd143156143175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2143151143159%_)))
                                              (_%tl143157143177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2143151143159%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd143156143175%_ 'or))
                                              (let ((_%exprs143180%_
                                                     _%tl143157143177%_))
                                                (_%K143155143172%_
                                                 _%exprs143180%_))
                                              (_%else143153143167%_)))
                                        (_%else143153143167%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code143111143137%_))
                              (let ((_%hd143116143185%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code143111143137%_)))
                                    (_%tl143117143187%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code143111143137%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd143116143185%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl143117143187%_))
                                        (let ((_%hd143118143190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl143117143187%_)))
                                              (_%tl143119143192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl143117143187%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd143118143190%_))
                                              (let ((_%hd143130143195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd143118143190%_)))
                                                    (_%tl143131143197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd143118143190%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd143130143195%_))
                                                    (let ((_%hd143132143200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd143130143195%_)))
                                                          (_%tl143133143202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd143130143195%_))))
                                                      (let ((_%id143205%_
                                                             _%hd143132143200%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl143133143202%_))
                                                            (let ((_%hd143134143207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl143133143202%_)))
                          (_%tl143135143209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl143133143202%_))))
                      (let ((_%expr1143212%_ _%hd143134143207%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl143135143209%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl143131143197%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl143119143192%_))
                                    (let ((_%hd143120143214%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143119143192%_)))
                                          (_%tl143121143216%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143119143192%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143120143214%_))
                                          (let ((_%hd143122143219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143120143214%_)))
                                                (_%tl143123143221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143120143214%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143122143219%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl143123143221%_))
                                                    (let ((_%hd143124143224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143123143221%_)))
                                                          (_%tl143125143226%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143123143221%_))))
                                                      (if ((lambda (_%g143228143230%_)
                                                             (eq? _%g143228143230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id143205%_))
                   _%hd143124143224%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl143125143226%_))
                      (let ((_%hd143126143233%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl143125143226%_)))
                            (_%tl143127143235%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl143125143226%_))))
                        (if ((lambda (_%g143237143239%_)
                               (eq? _%g143237143239%_ _%id143205%_))
                             _%hd143126143233%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl143127143235%_))
                                (let ((_%hd143128143242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl143127143235%_)))
                                      (_%tl143129143244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl143127143235%_))))
                                  (let ((_%expr2143247%_ _%hd143128143242%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl143129143244%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl143121143216%_))
                                            (_%K143115143182%_
                                             _%expr2143247%_
                                             _%expr1143212%_
                                             _%id143205%_)
                                            (_%else143113143145%_))
                                        (_%else143113143145%_))))
                                (_%else143113143145%_))
                            (_%else143113143145%_)))
                      (_%else143113143145%_))
                  (_%else143113143145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143113143145%_))
                                                (_%else143113143145%_)))
                                          (_%else143113143145%_)))
                                    (_%else143113143145%_))
                                (_%else143113143145%_))
                            (_%else143113143145%_))))
                    (_%else143113143145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143113143145%_)))
                                              (_%else143113143145%_)))
                                        (_%else143113143145%_))
                                    (_%else143113143145%_)))
                              (_%else143113143145%_)))
                        _%code143110%_)))
                 (_%simplify-let142507%_
                  (lambda (_%code142809%_)
                    (let* ((_%code142810142882%_ _%code142809%_)
                           (_%else142815142890%_ (lambda () _%code142809%_)))
                      (let ((_%K142874143090%_
                             (lambda (_%expr143088%_) _%expr143088%_))
                            (_%K142857143036%_
                             (lambda (_%body143032%_
                                      _%expr143033%_
                                      _%id143034%_)
                               (cons 'let
                                     (cons (cons (cons _%id143034%_
                                                       (cons _%expr143033%_
                                                             '()))
                                                 '())
                                           _%body143032%_))))
                            (_%K142834142960%_
                             (lambda (_%body142954%_
                                      _%expr2142955%_
                                      _%id2142956%_
                                      _%expr1142957%_
                                      _%id1142958%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142958%_
                                                       (cons _%expr1142957%_
                                                             '()))
                                                 (cons (cons _%id2142956%_
                                                             (cons _%expr2142955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body142954%_))))
                            (_%K142817142899%_
                             (lambda (_%body142894%_
                                      _%bind142895%_
                                      _%expr1142896%_
                                      _%id1142897%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142897%_
                                                       (cons _%expr1142896%_
                                                             '()))
                                                 _%bind142895%_)
                                           _%body142894%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code142810142882%_))
                            (let ((_%tl142876143095%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code142810142882%_)))
                                  (_%hd142875143093%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code142810142882%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142875143093%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl142876143095%_))
                                      (let ((_%tl142878143100%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl142876143095%_)))
                                            (_%hd142877143098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl142876143095%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd142877143098%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl142878143100%_))
                                                (let ((_%tl142880143105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl142878143100%_)))
                                                      (_%hd142879143103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl142878143100%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl142880143105%_))
                                                      (let ((_%expr143108%_
                                                             _%hd142879143103%_))
                                                        (_%K142874143090%_
                                                         _%expr143108%_))
                                                      (_%else142815142890%_)))
                                                (_%else142815142890%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd142877143098%_))
                                                (let ((_%tl142869143051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd142877143098%_)))
                                                      (_%hd142868143049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd142877143098%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd142868143049%_))
                                                      (let ((_%tl142871143056%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd142868143049%_)))
                    (_%hd142870143054%_
                     (let () (declare (not safe)) (##car _%hd142868143049%_))))
                (if (let () (declare (not safe)) (##pair? _%tl142871143056%_))
                    (let ((_%tl142873143063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142871143056%_)))
                          (_%hd142872143061%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl142871143056%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl142873143063%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl142869143051%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl142878143100%_))
                                  (let ((_%tl142863143070%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl142878143100%_)))
                                        (_%hd142862143068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl142878143100%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd142862143068%_))
                                        (let ((_%tl142865143075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd142862143068%_)))
                                              (_%hd142864143073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd142862143068%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142864143073%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl142865143075%_))
                                                  (let ((_%tl142867143080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl142865143075%_)))
                                                        (_%hd142866143078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl142865143075%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd142866143078%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl142863143070%_))
                                                            (let ((_%id143059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd142870143054%_)
                          (_%expr143066%_ _%hd142872143061%_)
                          (_%body143083%_ _%tl142867143080%_))
                      (_%K142857143036%_
                       _%body143083%_
                       _%expr143066%_
                       _%id143059%_))
                    (_%else142815142890%_))
                (if (let () (declare (not safe)) (##pair? _%hd142866143078%_))
                    (let ((_%tl142846143009%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd142866143078%_)))
                          (_%hd142845143007%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd142866143078%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142845143007%_))
                          (let ((_%tl142848143014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142845143007%_)))
                                (_%hd142847143012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142845143007%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142848143014%_))
                                (let ((_%tl142850143021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142848143014%_)))
                                      (_%hd142849143019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142848143014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142850143021%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl142846143009%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl142863143070%_))
                                              (let ((_%id1142983%_
                                                     _%hd142870143054%_)
                                                    (_%expr1142990%_
                                                     _%hd142872143061%_)
                                                    (_%id2143017%_
                                                     _%hd142847143012%_)
                                                    (_%expr2143024%_
                                                     _%hd142849143019%_)
                                                    (_%body143026%_
                                                     _%tl142867143080%_))
                                                (_%K142834142960%_
                                                 _%body143026%_
                                                 _%expr2143024%_
                                                 _%id2143017%_
                                                 _%expr1142990%_
                                                 _%id1142983%_))
                                              (_%else142815142890%_))
                                          (_%else142815142890%_))
                                      (_%else142815142890%_)))
                                (_%else142815142890%_)))
                          (_%else142815142890%_)))
                    (_%else142815142890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142815142890%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd142864143073%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl142865143075%_))
                                                      (let ((_%tl142827142943%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl142865143075%_)))
                    (_%hd142826142941%_
                     (let () (declare (not safe)) (##car _%tl142865143075%_))))
                (if (let () (declare (not safe)) (##null? _%tl142863143070%_))
                    (let ((_%id1142922%_ _%hd142870143054%_)
                          (_%expr1142929%_ _%hd142872143061%_)
                          (_%bind142946%_ _%hd142826142941%_)
                          (_%body142948%_ _%tl142827142943%_))
                      (_%K142817142899%_
                       _%body142948%_
                       _%bind142946%_
                       _%expr1142929%_
                       _%id1142922%_))
                    (_%else142815142890%_)))
              (_%else142815142890%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142815142890%_))))
                                        (_%else142815142890%_)))
                                  (_%else142815142890%_))
                              (_%else142815142890%_))
                          (_%else142815142890%_)))
                    (_%else142815142890%_)))
              (_%else142815142890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else142815142890%_))))
                                      (_%else142815142890%_))
                                  (_%else142815142890%_)))
                            (_%else142815142890%_))))))
                 (_%generate-values142508%_
                  (lambda (_%hd142622%_ _%body142623%_)
                    (let _%lp142625%_ ((_%rest142627%_ _%hd142622%_)
                                       (_%bind142628%_ '())
                                       (_%check142629%_ '())
                                       (_%post142630%_ '()))
                      (let* ((_%__stx146753146754%_ _%rest142627%_)
                             (_%g142633142644%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146753146754%_)))))
                        (let ((_%__kont146755146756%_
                               (lambda (_%L142671%_ _%L142672%_)
                                 (let* ((_%__stx146709146710%_ _%L142672%_)
                                        (_%g142687142712%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146709146710%_)))))
                                   (let ((_%__kont146711146712%_
                                          (lambda (_%L142785%_ _%L142786%_)
                                            (let ((_%eid142800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142786%_)))
                                                  (_%expr142801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142501%_
                                                      _%L142785%_))))
                                              (_%lp142625%_
                                               _%L142671%_
                                               (cons (cons _%eid142800%_
                                                           (cons _%expr142801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142628%_)
                                               _%check142629%_
                                               _%post142630%_))))
                                         (_%__kont146713146714%_
                                          (lambda (_%L142733%_ _%L142734%_)
                                            (let* ((_%vals142747%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142749%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142747%_
                                                     _%L142734%_
                                                     _%L142733%_))
                                                   (_%refs142751%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142747%_
                                                     _%L142734%_))
                                                   (_%expr142753%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142501%_
                                                       _%L142733%_))))
                                              (_%lp142625%_
                                               _%L142671%_
                                               (cons (cons _%vals142747%_
                                                           (cons _%expr142753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142628%_)
                                               (cons _%check-values142749%_
                                                     _%check142629%_)
                                               (cons _%refs142751%_
                                                     _%post142630%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146709146710%_))
                                         (let ((_%e142691142761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146709146710%_))))
                                           (let ((_%tl142693142766%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142691142761%_)))
                                                 (_%hd142692142764%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142691142761%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142692142764%_))
                                                 (let ((_%e142694142769%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142692142764%_))))
                                                   (let ((_%tl142696142774%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142694142769%_)))
                                                         (_%hd142695142772%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142694142769%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142696142774%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142693142766%_))
                     (let ((_%e142697142777%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142693142766%_))))
                       (let ((_%tl142699142782%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142697142777%_)))
                             (_%hd142698142780%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142697142777%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142699142782%_))
                             (_%__kont146711146712%_
                              _%hd142698142780%_
                              _%hd142695142772%_)
                             (let ()
                               (declare (not safe))
                               (_%g142687142712%_)))))
                     (let () (declare (not safe)) (_%g142687142712%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142693142766%_))
                     (let ((_%e142705142725%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142693142766%_))))
                       (let ((_%tl142707142730%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142705142725%_)))
                             (_%hd142706142728%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142705142725%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142707142730%_))
                             (_%__kont146713146714%_
                              _%hd142706142728%_
                              _%hd142692142764%_)
                             (let ()
                               (declare (not safe))
                               (_%g142687142712%_)))))
                     (let () (declare (not safe)) (_%g142687142712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142693142766%_))
                                                     (let ((_%e142705142725%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142693142766%_))))
                                                       (let ((_%tl142707142730%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142705142725%_)))
                     (_%hd142706142728%_
                      (let () (declare (not safe)) (##car _%e142705142725%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142707142730%_))
                     (_%__kont146713146714%_
                      _%hd142706142728%_
                      _%hd142692142764%_)
                     (let () (declare (not safe)) (_%g142687142712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142687142712%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142687142712%_)))))))
                              (_%__kont146757146758%_
                               (lambda ()
                                 (let* ((_%body142651%_
                                         (if _%compiled-body?142503%_
                                             _%body142623%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142501%_
                                                _%body142623%_))))
                                        (_%body142653%_
                                         (_%generate-values-post142509%_
                                          _%post142630%_
                                          _%body142651%_))
                                        (_%body142655%_
                                         (_%generate-values-check142510%_
                                          _%check142629%_
                                          _%body142653%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142628%_)
                                               (cons _%body142655%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146753146754%_))
                              (let ((_%e142637142663%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146753146754%_))))
                                (let ((_%tl142639142668%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142637142663%_)))
                                      (_%hd142638142666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142637142663%_))))
                                  (_%__kont146755146756%_
                                   _%tl142639142668%_
                                   _%hd142638142666%_)))
                              (_%__kont146757146758%_)))))))
                 (_%generate-values-post142509%_
                  (lambda (_%post142581%_ _%body142582%_)
                    (let _%lp142584%_ ((_%rest142586%_ _%post142581%_)
                                       (_%body142587%_ _%body142582%_))
                      (let* ((_%rest142588142596%_ _%rest142586%_)
                             (_%else142590142604%_ (lambda () _%body142587%_))
                             (_%K142592142610%_
                              (lambda (_%rest142607%_ _%bind142608%_)
                                (_%lp142584%_
                                 _%rest142607%_
                                 (cons 'let
                                       (cons _%bind142608%_
                                             (cons _%body142587%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142588142596%_))
                            (let ((_%hd142593142613%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142588142596%_)))
                                  (_%tl142594142615%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142588142596%_))))
                              (let* ((_%bind142618%_ _%hd142593142613%_)
                                     (_%rest142620%_ _%tl142594142615%_))
                                (_%K142592142610%_
                                 _%rest142620%_
                                 _%bind142618%_)))
                            (_%else142590142604%_))))))
                 (_%generate-values-check142510%_
                  (lambda (_%check142578%_ _%body142579%_)
                    (cons 'begin
                          (let ((__tmp147601 (cons _%body142579%_ '()))
                                (__tmp147600 (reverse _%check142578%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147601 __tmp147600))))))
          (let* ((_%g142512142529%_
                  (lambda (_%g142513142526%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142513142526%_))))
                 (_%g142511142575%_
                  (lambda (_%g142513142532%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142513142532%_))
                        (let ((_%e142516142534%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142513142532%_))))
                          (let ((_%hd142517142537%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142516142534%_)))
                                (_%tl142518142539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142516142534%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142518142539%_))
                                (let ((_%e142519142542%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142518142539%_))))
                                  (let ((_%hd142520142545%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142519142542%_)))
                                        (_%tl142521142547%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142519142542%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142521142547%_))
                                        (let ((_%e142522142550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142521142547%_))))
                                          (let ((_%hd142523142553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142522142550%_)))
                                                (_%tl142524142555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142522142550%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142524142555%_))
                                                ((lambda (_%L142558%_
                                                          _%L142559%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142559%_)
                                                       (_%generate-simple142505%_
                                                        _%L142559%_
                                                        _%L142558%_)
                                                       (_%generate-values142508%_
                                                        _%L142559%_
                                                        _%L142558%_)))
                                                 _%hd142523142553%_
                                                 _%hd142520142545%_)
                                                (_%g142512142529%_
                                                 _%g142513142532%_))))
                                        (_%g142512142529%_
                                         _%g142513142532%_))))
                                (_%g142512142529%_ _%g142513142532%_))))
                        (_%g142512142529%_ _%g142513142532%_)))))
            (_%g142511142575%_ _%stx142502%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self143255%_ _%stx143256%_)
        (let ((_%compiled-body?143258%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self143255%_
           _%stx143256%_
           _%compiled-body?143258%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147603_
        (let ((_g147602_ (let () (declare (not safe)) (##length _g147603_))))
          (cond ((let () (declare (not safe)) (##fx= _g147602_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147603_))
                ((let () (declare (not safe)) (##fx= _g147602_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147603_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals142395%_ _%hd142396%_)
        (let _%lp142398%_ ((_%rest142400%_ _%hd142396%_)
                           (_%k142401%_ '0)
                           (_%r142402%_ '()))
          (let* ((_%__stx146767146768%_ _%rest142400%_)
                 (_%g142407142424%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146767146768%_)))))
            (let ((_%__kont146769146770%_
                   (lambda (_%L142487%_)
                     (_%lp142398%_
                      _%L142487%_
                      (let () (declare (not safe)) (##fx+ _%k142401%_ '1))
                      _%r142402%_)))
                  (_%__kont146771146772%_
                   (lambda (_%L142460%_ _%L142461%_)
                     (_%lp142398%_
                      _%L142460%_
                      (let () (declare (not safe)) (##fx+ _%k142401%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142461%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals142395%_
                                         _%k142401%_
                                         _%L142460%_)
                                        '()))
                            _%r142402%_))))
                  (_%__kont146773146774%_
                   (lambda (_%L142436%_)
                     (let ((__tmp147604
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L142436%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals142395%_
                                               _%k142401%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147604 _%r142402%_))))
                  (_%__kont146775146776%_ (lambda () (reverse _%r142402%_))))
              (let ((_%g142405142447%_
                     (lambda ()
                       (let ((_%L142436%_ _%__stx146767146768%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L142436%_))
                             (_%__kont146773146774%_ _%L142436%_)
                             (_%__kont146775146776%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146767146768%_))
                    (let ((_%e142410142476%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146767146768%_))))
                      (let ((_%tl142412142481%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142410142476%_)))
                            (_%hd142411142479%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142410142476%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd142411142479%_))
                            (let ((_%e142413142484%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd142411142479%_))))
                              (if (equal? _%e142413142484%_ '#f)
                                  (_%__kont146769146770%_ _%tl142412142481%_)
                                  (_%__kont146771146772%_
                                   _%tl142412142481%_
                                   _%hd142411142479%_)))
                            (_%__kont146771146772%_
                             _%tl142412142481%_
                             _%hd142411142479%_))))
                    (let () (declare (not safe)) (_%g142405142447%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self142074%_ _%stx142075%_ _%compiled-body?142076%_)
        (letrec ((_%generate-simple142078%_
                  (lambda (_%hd142380%_ _%body142381%_)
                    (gxc#generate-runtime-simple-let
                     _%self142074%_
                     'letrec
                     _%hd142380%_
                     _%body142381%_
                     _%compiled-body?142076%_)))
                 (_%generate-values142079%_
                  (lambda (_%hd142159%_ _%body142160%_)
                    (let _%lp142162%_ ((_%rest142164%_ _%hd142159%_)
                                       (_%bind142165%_ '())
                                       (_%check142166%_ '())
                                       (_%post142167%_ '()))
                      (let* ((_%__stx146841146842%_ _%rest142164%_)
                             (_%g142170142181%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146841146842%_)))))
                        (let ((_%__kont146843146844%_
                               (lambda (_%L142208%_ _%L142209%_)
                                 (let* ((_%__stx146797146798%_ _%L142209%_)
                                        (_%g142224142249%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146797146798%_)))))
                                   (let ((_%__kont146799146800%_
                                          (lambda (_%L142356%_ _%L142357%_)
                                            (let ((_%eid142371%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142357%_)))
                                                  (_%expr142372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142074%_
                                                      _%L142356%_))))
                                              (_%lp142162%_
                                               _%L142208%_
                                               (cons (cons _%eid142371%_
                                                           (cons _%expr142372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142165%_)
                                               _%check142166%_
                                               _%post142167%_))))
                                         (_%__kont146801146802%_
                                          (lambda (_%L142270%_ _%L142271%_)
                                            (let* ((_%vals142284%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142286%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142284%_
                                                     _%L142271%_
                                                     _%L142270%_))
                                                   (_%refs142288%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142284%_
                                                     _%L142271%_))
                                                   (_%expr142290%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142074%_
                                                       _%L142270%_))))
                                              (_%lp142162%_
                                               _%L142208%_
                                               (let ((__tmp147606
                                                      (cons (cons _%vals142284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr142290%_ '()))
                    _%bind142165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147605
                                                      (map (lambda (_%e142292142294%_)
                                                             (let* ((_%g142296142305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e142292142294%_)
                            (_%E142298142309%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g142296142305%_
                                        '([eid _])))
                               '#!void))
                            (_%K142299142314%_
                             (lambda (_%eid142312%_)
                               (cons _%eid142312%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g142296142305%_))
                           (let ((_%hd142300142317%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g142296142305%_)))
                                 (_%tl142301142319%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g142296142305%_))))
                             (let ((_%eid142322%_ _%hd142300142317%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl142301142319%_))
                                   (let ((_%tl142303142324%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl142301142319%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl142303142324%_))
                                         (_%K142299142314%_ _%eid142322%_)
                                         (_%E142298142309%_)))
                                   (_%E142298142309%_))))
                           (_%E142298142309%_))))
                   _%refs142288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147606
                                                  __tmp147605))
                                               (cons _%check-values142286%_
                                                     _%check142166%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs142288%_
                                                  _%post142167%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146797146798%_))
                                         (let ((_%e142228142332%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146797146798%_))))
                                           (let ((_%tl142230142337%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142228142332%_)))
                                                 (_%hd142229142335%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142228142332%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142229142335%_))
                                                 (let ((_%e142231142340%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142229142335%_))))
                                                   (let ((_%tl142233142345%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142231142340%_)))
                                                         (_%hd142232142343%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142231142340%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142233142345%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142230142337%_))
                     (let ((_%e142234142348%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142230142337%_))))
                       (let ((_%tl142236142353%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142234142348%_)))
                             (_%hd142235142351%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142234142348%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142236142353%_))
                             (_%__kont146799146800%_
                              _%hd142235142351%_
                              _%hd142232142343%_)
                             (let ()
                               (declare (not safe))
                               (_%g142224142249%_)))))
                     (let () (declare (not safe)) (_%g142224142249%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142230142337%_))
                     (let ((_%e142242142262%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142230142337%_))))
                       (let ((_%tl142244142267%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142242142262%_)))
                             (_%hd142243142265%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142242142262%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142244142267%_))
                             (_%__kont146801146802%_
                              _%hd142243142265%_
                              _%hd142229142335%_)
                             (let ()
                               (declare (not safe))
                               (_%g142224142249%_)))))
                     (let () (declare (not safe)) (_%g142224142249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142230142337%_))
                                                     (let ((_%e142242142262%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142230142337%_))))
                                                       (let ((_%tl142244142267%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142242142262%_)))
                     (_%hd142243142265%_
                      (let () (declare (not safe)) (##car _%e142242142262%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142244142267%_))
                     (_%__kont146801146802%_
                      _%hd142243142265%_
                      _%hd142229142335%_)
                     (let () (declare (not safe)) (_%g142224142249%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142224142249%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142224142249%_)))))))
                              (_%__kont146845146846%_
                               (lambda ()
                                 (let* ((_%body142188%_
                                         (if _%compiled-body?142076%_
                                             _%body142160%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142074%_
                                                _%body142160%_))))
                                        (_%body142190%_
                                         (_%generate-values-post142081%_
                                          _%post142167%_
                                          _%body142188%_))
                                        (_%body142192%_
                                         (_%generate-values-check142080%_
                                          _%check142166%_
                                          _%body142190%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind142165%_)
                                               (cons _%body142192%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146841146842%_))
                              (let ((_%e142174142200%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146841146842%_))))
                                (let ((_%tl142176142205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142174142200%_)))
                                      (_%hd142175142203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142174142200%_))))
                                  (_%__kont146843146844%_
                                   _%tl142176142205%_
                                   _%hd142175142203%_)))
                              (_%__kont146845146846%_)))))))
                 (_%generate-values-check142080%_
                  (lambda (_%check142156%_ _%body142157%_)
                    (cons 'begin
                          (let ((__tmp147608 (cons _%body142157%_ '()))
                                (__tmp147607 (reverse _%check142156%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147608 __tmp147607)))))
                 (_%generate-values-post142081%_
                  (lambda (_%post142149%_ _%body142150%_)
                    (cons 'begin
                          (let ((__tmp147612 (cons _%body142150%_ '()))
                                (__tmp147609
                                 (let ((__tmp147611
                                        (lambda (_%g142151142153%_)
                                          (cons 'set! _%g142151142153%_)))
                                       (__tmp147610 (reverse _%post142149%_)))
                                   (declare (not safe))
                                   (##map __tmp147611 __tmp147610))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147612 __tmp147609))))))
          (let* ((_%g142083142100%_
                  (lambda (_%g142084142097%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142084142097%_))))
                 (_%g142082142146%_
                  (lambda (_%g142084142103%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142084142103%_))
                        (let ((_%e142087142105%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142084142103%_))))
                          (let ((_%hd142088142108%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142087142105%_)))
                                (_%tl142089142110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142087142105%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142089142110%_))
                                (let ((_%e142090142113%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142089142110%_))))
                                  (let ((_%hd142091142116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142090142113%_)))
                                        (_%tl142092142118%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142090142113%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142092142118%_))
                                        (let ((_%e142093142121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142092142118%_))))
                                          (let ((_%hd142094142124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142093142121%_)))
                                                (_%tl142095142126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142093142121%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142095142126%_))
                                                ((lambda (_%L142129%_
                                                          _%L142130%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142130%_)
                                                       (_%generate-simple142078%_
                                                        _%L142130%_
                                                        _%L142129%_)
                                                       (_%generate-values142079%_
                                                        _%L142130%_
                                                        _%L142129%_)))
                                                 _%hd142094142124%_
                                                 _%hd142091142116%_)
                                                (_%g142083142100%_
                                                 _%g142084142103%_))))
                                        (_%g142083142100%_
                                         _%g142084142103%_))))
                                (_%g142083142100%_ _%g142084142103%_))))
                        (_%g142083142100%_ _%g142084142103%_)))))
            (_%g142082142146%_ _%stx142075%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self142386%_ _%stx142387%_)
        (let ((_%compiled-body?142389%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self142386%_
           _%stx142387%_
           _%compiled-body?142389%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147614_
        (let ((_g147613_ (let () (declare (not safe)) (##length _g147614_))))
          (cond ((let () (declare (not safe)) (##fx= _g147613_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147614_))
                ((let () (declare (not safe)) (##fx= _g147613_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147614_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141655%_ _%stx141656%_)
        (letrec ((_%generate-values141658%_
                  (lambda (_%hd141901%_ _%body141902%_)
                    (let _%lp141904%_ ((_%rest141906%_ _%hd141901%_)
                                       (_%bind141907%_ '()))
                      (let* ((_%rest141908141916%_ _%rest141906%_)
                             (_%else141910141927%_
                              (lambda ()
                                (let ((_%bind141924%_ (reverse _%bind141907%_))
                                      (_%body141925%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141655%_
                                          _%body141902%_))))
                                  (cons 'letrec*
                                        (cons _%bind141924%_
                                              (cons _%body141925%_ '()))))))
                             (_%K141912142061%_
                              (lambda (_%rest141930%_ _%hd-bind141931%_)
                                (let* ((_%__stx146855146856%_
                                        _%hd-bind141931%_)
                                       (_%g141934141959%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx146855146856%_)))))
                                  (let ((_%__kont146857146858%_
                                         (lambda (_%L142040%_ _%L142041%_)
                                           (let ((_%eid142055%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L142041%_)))
                                                 (_%expr142056%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141655%_
                                                     _%L142040%_))))
                                             (_%lp141904%_
                                              _%rest141930%_
                                              (cons (cons _%eid142055%_
                                                          (cons _%expr142056%_
                                                                '()))
                                                    _%bind141907%_)))))
                                        (_%__kont146859146860%_
                                         (lambda (_%L141980%_ _%L141981%_)
                                           (let* ((_%vals142000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp142002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values142004%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp142002%_
                                                    _%L141981%_
                                                    _%L141980%_))
                                                  (_%refs142006%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals142000%_
                                                    _%L141981%_))
                                                  (_%expr142008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141655%_
                                                      _%L141980%_))))
                                             (_%lp141904%_
                                              _%rest141930%_
                                              (let ((__tmp147615
                                                     (cons (cons _%vals142000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp142002%_
                                                       (cons _%expr142008%_
                                                             '()))
                                                 '())
                                           (cons _%check-values142004%_
                                                 (cons _%tmp142002%_ '()))))
                               '()))
                   _%bind141907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147615
                                                 _%refs142006%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146855146856%_))
                                        (let ((_%e141938142016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146855146856%_))))
                                          (let ((_%tl141940142021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141938142016%_)))
                                                (_%hd141939142019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141938142016%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141939142019%_))
                                                (let ((_%e141941142024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141939142019%_))))
                                                  (let ((_%tl141943142029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141941142024%_)))
                                                        (_%hd141942142027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141941142024%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141943142029%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141940142021%_))
                                                            (let ((_%e141944142032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141940142021%_))))
                      (let ((_%tl141946142037%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141944142032%_)))
                            (_%hd141945142035%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141944142032%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141946142037%_))
                            (_%__kont146857146858%_
                             _%hd141945142035%_
                             _%hd141942142027%_)
                            (let ()
                              (declare (not safe))
                              (_%g141934141959%_)))))
                    (let () (declare (not safe)) (_%g141934141959%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl141940142021%_))
                    (let ((_%e141952141972%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141940142021%_))))
                      (let ((_%tl141954141977%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141952141972%_)))
                            (_%hd141953141975%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141952141972%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141954141977%_))
                            (_%__kont146859146860%_
                             _%hd141953141975%_
                             _%hd141939142019%_)
                            (let ()
                              (declare (not safe))
                              (_%g141934141959%_)))))
                    (let () (declare (not safe)) (_%g141934141959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141940142021%_))
                                                    (let ((_%e141952141972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141940142021%_))))
                                                      (let ((_%tl141954141977%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141952141972%_)))
                    (_%hd141953141975%_
                     (let () (declare (not safe)) (##car _%e141952141972%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141954141977%_))
                    (_%__kont146859146860%_
                     _%hd141953141975%_
                     _%hd141939142019%_)
                    (let () (declare (not safe)) (_%g141934141959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141934141959%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141934141959%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141908141916%_))
                            (let ((_%hd141913142064%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141908141916%_)))
                                  (_%tl141914142066%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141908141916%_))))
                              (let* ((_%hd-bind142069%_ _%hd141913142064%_)
                                     (_%rest142071%_ _%tl141914142066%_))
                                (_%K141912142061%_
                                 _%rest142071%_
                                 _%hd-bind142069%_)))
                            (_%else141910141927%_))))))
                 (_%generate-letrec?141659%_
                  (lambda (_%hd141791%_)
                    (let _%lp141793%_ ((_%rest141795%_ _%hd141791%_))
                      (let* ((_%rest141796141804%_ _%rest141795%_)
                             (_%else141798141812%_ (lambda () '#t))
                             (_%K141800141889%_
                              (lambda (_%rest141815%_ _%hd-bind141816%_)
                                (let* ((_%g141818141835%_
                                        (lambda (_%g141819141832%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g141819141832%_))))
                                       (_%g141817141886%_
                                        (lambda (_%g141819141838%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g141819141838%_))
                                              (let ((_%e141822141840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g141819141838%_))))
                                                (let ((_%hd141823141843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141822141840%_)))
                                                      (_%tl141824141845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141822141840%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd141823141843%_))
                                                      (let ((_%e141825141848%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd141823141843%_))))
                (let ((_%hd141826141851%_
                       (let () (declare (not safe)) (##car _%e141825141848%_)))
                      (_%tl141827141853%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141825141848%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141827141853%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141824141845%_))
                          (let ((_%e141828141856%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141824141845%_))))
                            (let ((_%hd141829141859%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141828141856%_)))
                                  (_%tl141830141861%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141828141856%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141830141861%_))
                                  ((lambda (_%L141864%_ _%L141865%_)
                                     (if (_%is-lambda-expr?141660%_
                                          _%L141864%_)
                                         (_%lp141793%_ _%rest141815%_)
                                         '#f))
                                   _%hd141829141859%_
                                   _%hd141826141851%_)
                                  (_%g141818141835%_ _%g141819141838%_))))
                          (_%g141818141835%_ _%g141819141838%_))
                      (_%g141818141835%_ _%g141819141838%_))))
              (_%g141818141835%_ _%g141819141838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141818141835%_
                                               _%g141819141838%_)))))
                                  (_%g141817141886%_ _%hd-bind141816%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141796141804%_))
                            (let ((_%hd141801141892%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141796141804%_)))
                                  (_%tl141802141894%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141796141804%_))))
                              (let* ((_%hd-bind141897%_ _%hd141801141892%_)
                                     (_%rest141899%_ _%tl141802141894%_))
                                (_%K141800141889%_
                                 _%rest141899%_
                                 _%hd-bind141897%_)))
                            (_%else141798141812%_))))))
                 (_%is-lambda-expr?141660%_
                  (lambda (_%expr141728%_)
                    (let* ((_%__stx146899146900%_ _%expr141728%_)
                           (_%g141731141745%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146899146900%_)))))
                      (let ((_%__kont146901146902%_
                             (lambda (_%L141773%_ _%L141774%_) '#t))
                            (_%__kont146903146904%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx146899146900%_))
                            (let ((_%e141735141757%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx146899146900%_))))
                              (let ((_%tl141737141762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141735141757%_)))
                                    (_%hd141736141760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141735141757%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141736141760%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141736141760%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141737141762%_))
                                            (let ((_%e141738141765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141737141762%_))))
                                              (let ((_%tl141740141770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141738141765%_)))
                                                    (_%hd141739141768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141738141765%_))))
                                                (_%__kont146901146902%_
                                                 _%tl141740141770%_
                                                 _%hd141739141768%_)))
                                            (_%__kont146903146904%_))
                                        (_%__kont146903146904%_))
                                    (_%__kont146903146904%_))))
                            (_%__kont146903146904%_)))))))
          (let* ((_%g141662141679%_
                  (lambda (_%g141663141676%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141663141676%_))))
                 (_%g141661141725%_
                  (lambda (_%g141663141682%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141663141682%_))
                        (let ((_%e141666141684%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141663141682%_))))
                          (let ((_%hd141667141687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141666141684%_)))
                                (_%tl141668141689%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141666141684%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141668141689%_))
                                (let ((_%e141669141692%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141668141689%_))))
                                  (let ((_%hd141670141695%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141669141692%_)))
                                        (_%tl141671141697%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141669141692%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141671141697%_))
                                        (let ((_%e141672141700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141671141697%_))))
                                          (let ((_%hd141673141703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141672141700%_)))
                                                (_%tl141674141705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141672141700%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141674141705%_))
                                                ((lambda (_%L141708%_
                                                          _%L141709%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141709%_)
                                                       (if (_%generate-letrec?141659%_
                                                            _%L141709%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141655%_
                                                            'letrec
                                                            _%L141709%_
                                                            _%L141708%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141655%_
                                                            'letrec*
                                                            _%L141709%_
                                                            _%L141708%_
                                                            '#f))
                                                       (_%generate-values141658%_
                                                        _%L141709%_
                                                        _%L141708%_)))
                                                 _%hd141673141703%_
                                                 _%hd141670141695%_)
                                                (_%g141662141679%_
                                                 _%g141663141682%_))))
                                        (_%g141662141679%_
                                         _%g141663141682%_))))
                                (_%g141662141679%_ _%g141663141682%_))))
                        (_%g141662141679%_ _%g141663141682%_)))))
            (_%g141661141725%_ _%stx141656%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141592%_)
        (let _%lp141594%_ ((_%rest141596%_ _%hd141592%_))
          (let* ((_%rest141597141613%_ _%rest141596%_)
                 (_%else141600141621%_ (lambda () '#f)))
            (let ((_%K141603141634%_
                   (lambda (_%rest141632%_) (_%lp141594%_ _%rest141632%_)))
                  (_%K141602141626%_ (lambda () '#t)))
              (let ((_%try-match141599141629%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141597141613%_))
                           (_%K141602141626%_)
                           (_%else141600141621%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141597141613%_))
                    (let ((_%tl141605141639%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141597141613%_)))
                          (_%hd141604141637%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141597141613%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141604141637%_))
                          (let ((_%tl141607141644%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141604141637%_)))
                                (_%hd141606141642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141604141637%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141606141642%_))
                                (let ((_%tl141611141647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141606141642%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141611141647%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141607141644%_))
                                          (let ((_%tl141609141650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141607141644%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141609141650%_))
                                                (let ((_%rest141653%_
                                                       _%tl141605141639%_))
                                                  (_%lp141594%_
                                                   _%rest141653%_))
                                                (_%else141600141621%_)))
                                          (_%else141600141621%_))
                                      (_%else141600141621%_)))
                                (_%else141600141621%_)))
                          (_%else141600141621%_)))
                    (_%try-match141599141629%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141503%_
               _%form141504%_
               _%hd141505%_
               _%body141506%_
               _%compiled-body?141507%_)
        (letrec ((_%generate1141509%_
                  (lambda (_%bind141548%_)
                    (let* ((_%bind141549141560%_ _%bind141548%_)
                           (_%E141551141564%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141549141560%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141552141570%_
                            (lambda (_%expr141567%_ _%id141568%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141568%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141503%_
                                             _%expr141567%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141549141560%_))
                          (let ((_%hd141553141573%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141549141560%_)))
                                (_%tl141554141575%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141549141560%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141553141573%_))
                                (let ((_%hd141557141578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141553141573%_)))
                                      (_%tl141558141580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141553141573%_))))
                                  (let ((_%id141583%_ _%hd141557141578%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141558141580%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141554141575%_))
                                            (let ((_%hd141555141585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141554141575%_)))
                                                  (_%tl141556141587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141554141575%_))))
                                              (let ((_%expr141590%_
                                                     _%hd141555141585%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141556141587%_))
                                                    (_%K141552141570%_
                                                     _%expr141590%_
                                                     _%id141583%_)
                                                    (_%E141551141564%_))))
                                            (_%E141551141564%_))
                                        (_%E141551141564%_))))
                                (_%E141551141564%_)))
                          (_%E141551141564%_))))))
          (let* ((_%bind141511%_ (map _%generate1141509%_ _%hd141505%_))
                 (_%body141513%_
                  (if _%compiled-body?141507%_
                      _%body141506%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141503%_ _%body141506%_))))
                 (_%body141545%_
                  (let* ((_%body141514141522%_ _%body141513%_)
                         (_%else141516141530%_
                          (lambda () (cons _%body141513%_ '())))
                         (_%K141518141535%_
                          (lambda (_%exprs141533%_) _%exprs141533%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141514141522%_))
                        (let ((_%hd141519141538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141514141522%_)))
                              (_%tl141520141540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141514141522%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141519141538%_ 'begin))
                              (let ((_%exprs141543%_ _%tl141520141540%_))
                                (_%K141518141535%_ _%exprs141543%_))
                              (_%else141516141530%_)))
                        (_%else141516141530%_)))))
            (cons _%form141504%_ (cons _%bind141511%_ _%body141545%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self141403%_ _%stx141404%_)
        (letrec ((_%generate1141406%_
                  (lambda (_%datum141458%_)
                    (if (or (null? _%datum141458%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum141458%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum141458%_))
                            (eof-object? _%datum141458%_))
                        _%datum141458%_
                        (if (uninterned-symbol? _%datum141458%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum141458%_
                               '#t))
                            (if (pair? _%datum141458%_)
                                (cons (_%generate1141406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum141458%_)))
                                      (_%generate1141406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum141458%_))))
                                (if (box? _%datum141458%_)
                                    (box (_%generate1141406%_
                                          (unbox _%datum141458%_)))
                                    (if (vector? _%datum141458%_)
                                        (vector-map
                                         _%generate1141406%_
                                         _%datum141458%_)
                                        (if (or (s8vector? _%datum141458%_)
                                                (u8vector? _%datum141458%_)
                                                (s16vector? _%datum141458%_)
                                                (u16vector? _%datum141458%_)
                                                (s32vector? _%datum141458%_)
                                                (u32vector? _%datum141458%_)
                                                (s64vector? _%datum141458%_)
                                                (u64vector? _%datum141458%_)
                                                (f32vector? _%datum141458%_)
                                                (f64vector? _%datum141458%_))
                                            _%datum141458%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx141404%_)))))))))))
          (let* ((_%g141408141421%_
                  (lambda (_%g141409141418%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141409141418%_))))
                 (_%g141407141455%_
                  (lambda (_%g141409141424%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141409141424%_))
                        (let ((_%e141411141426%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141409141424%_))))
                          (let ((_%hd141412141429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141411141426%_)))
                                (_%tl141413141431%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141411141426%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141413141431%_))
                                (let ((_%e141414141434%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141413141431%_))))
                                  (let ((_%hd141415141437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141414141434%_)))
                                        (_%tl141416141439%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141414141434%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141416141439%_))
                                        ((lambda (_%L141442%_)
                                           (cons 'quote
                                                 (cons (_%generate1141406%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L141442%_)))
                                                       '())))
                                         _%hd141415141437%_)
                                        (_%g141408141421%_
                                         _%g141409141424%_))))
                                (_%g141408141421%_ _%g141409141424%_))))
                        (_%g141408141421%_ _%g141409141424%_)))))
            (_%g141407141455%_ _%stx141404%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self140844%_ _%stx140845%_)
        (letrec ((_%compile-call140847%_
                  (lambda (_%rator141136%_ _%rands141137%_)
                    (let ((_%rator141143%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self140844%_
                              _%rator141136%_)))
                          (_%rands141144%_
                           (map (lambda (_%g141138141140%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self140844%_
                                     _%g141138141140%_)))
                                _%rands141137%_)))
                      (let* ((_%__stx146946146947%_ _%rator141143%_)
                             (_%g141147141199%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146946146947%_)))))
                        (let ((_%__kont146948146949%_
                               (lambda (_%L141323%_
                                        _%L141324%_
                                        _%L141325%_
                                        _%L141326%_)
                                 (if (let ((__tmp147618
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands141144%_)))
                                           (__tmp147616
                                            (length (let ((__tmp147617
                                                           (lambda (_%g141362141365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141363141367%_)
                     (cons _%g141362141365%_ _%g141363141367%_))))
              (declare (not safe))
              (__foldr1 __tmp147617 '() _%L141325%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147618 __tmp147616))
                                     (let* ((_%id141370%_ _%L141326%_)
                                            (_%args141379%_
                                             (let ((__tmp147619
                                                    (lambda (_%g141371141374%_
                                                             _%g141372141376%_)
                                                      (cons _%g141371141374%_
                                                            _%g141372141376%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147619
                                                '()
                                                _%L141325%_)))
                                            (_%body141388%_
                                             (let ((__tmp147620
                                                    (lambda (_%g141380141383%_
                                                             _%g141381141385%_)
                                                      (cons _%g141380141383%_
                                                            _%g141381141385%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147620
                                                '()
                                                _%L141324%_)))
                                            (_%init141390%_
                                             (map list
                                                  _%args141379%_
                                                  _%rands141144%_)))
                                       (cons 'let
                                             (cons _%id141370%_
                                                   (cons _%init141390%_
                                                         _%body141388%_))))
                                     (let ((__tmp147621
                                            (let ((__tmp147622
                                                   (lambda (_%g141392141395%_
                                                            _%g141393141397%_)
                                                     (cons _%g141392141395%_
                                                           _%g141393141397%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147622
                                               '()
                                               _%L141325%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx140845%_
                                        __tmp147621
                                        _%rands141144%_)))))
                              (_%__kont146954146955%_
                               (lambda ()
                                 (cons _%rator141143%_ _%rands141144%_))))
                          (let ((_%__match147013147014%_
                                 (lambda (_%e141153141211%_
                                          _%hd141154141214%_
                                          _%tl141155141216%_
                                          _%e141156141219%_
                                          _%hd141157141222%_
                                          _%tl141158141224%_
                                          _%e141159141227%_
                                          _%hd141160141230%_
                                          _%tl141161141232%_
                                          _%e141162141235%_
                                          _%hd141163141238%_
                                          _%tl141164141240%_
                                          _%e141165141243%_
                                          _%hd141166141246%_
                                          _%tl141167141248%_
                                          _%e141168141251%_
                                          _%hd141169141254%_
                                          _%tl141170141256%_
                                          _%e141171141259%_
                                          _%hd141172141262%_
                                          _%tl141173141264%_
                                          _%__splice146950146951%_
                                          _%target141174141267%_
                                          _%tl141176141269%_)
                                   (letrec ((_%loop141177141272%_
                                             (lambda (_%hd141175141275%_
                                                      _%arg141181141277%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd141175141275%_))
                                                   (let ((_%e141178141280%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd141175141275%_))))
                                                     (let ((_%lp-tl141180141285%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e141178141280%_)))
                                                           (_%lp-hd141179141283%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e141178141280%_))))
                                                       (_%loop141177141272%_
                                                        _%lp-tl141180141285%_
                                                        (cons _%lp-hd141179141283%_
                                                              _%arg141181141277%_))))
                                                   (let ((_%arg141182141288%_
                                                          (reverse _%arg141181141277%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl141173141264%_))
                                                         (let ((_%__splice146952146953%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl141173141264%_ '0))))
                   (let ((_%tl141185141293%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146952146953%_ '1)))
                         (_%target141183141291%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146952146953%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141185141293%_))
                         (letrec ((_%loop141186141296%_
                                   (lambda (_%hd141184141299%_
                                            _%body141190141301%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd141184141299%_))
                                         (let ((_%e141187141304%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd141184141299%_))))
                                           (let ((_%lp-tl141189141309%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141187141304%_)))
                                                 (_%lp-hd141188141307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141187141304%_))))
                                             (_%loop141186141296%_
                                              _%lp-tl141189141309%_
                                              (cons _%lp-hd141188141307%_
                                                    _%body141190141301%_))))
                                         (let ((_%body141191141312%_
                                                (reverse _%body141190141301%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl141167141248%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl141161141232%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl141158141224%_))
                                                       (let ((_%e141192141315%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl141158141224%_))))
                 (let ((_%tl141194141320%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e141192141315%_)))
                       (_%hd141193141318%_
                        (let ()
                          (declare (not safe))
                          (##car _%e141192141315%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl141194141320%_))
                       (let ((_%L141323%_ _%hd141193141318%_)
                             (_%L141324%_ _%body141191141312%_)
                             (_%L141325%_ _%arg141182141288%_)
                             (_%L141326%_ _%hd141163141238%_))
                         (if (eq? _%L141326%_ _%L141323%_)
                             (_%__kont146948146949%_
                              _%L141323%_
                              _%L141324%_
                              _%L141325%_
                              _%L141326%_)
                             (_%__kont146954146955%_)))
                       (_%__kont146954146955%_))))
               (_%__kont146954146955%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146954146955%_))
                                               (_%__kont146954146955%_)))))))
                           (_%loop141186141296%_ _%target141183141291%_ '()))
                         (_%__kont146954146955%_))))
                 (_%__kont146954146955%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop141177141272%_
                                      _%target141174141267%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146946146947%_))
                                (let ((_%e141153141211%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146946146947%_))))
                                  (let ((_%tl141155141216%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141153141211%_)))
                                        (_%hd141154141214%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141153141211%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd141154141214%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd141154141214%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141155141216%_))
                                                (let ((_%e141156141219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141155141216%_))))
                                                  (let ((_%tl141158141224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141156141219%_)))
                                                        (_%hd141157141222%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141156141219%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141157141222%_))
                                                        (let ((_%e141159141227%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141157141222%_))))
                  (let ((_%tl141161141232%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141159141227%_)))
                        (_%hd141160141230%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141159141227%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141160141230%_))
                        (let ((_%e141162141235%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141160141230%_))))
                          (let ((_%tl141164141240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141162141235%_)))
                                (_%hd141163141238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141162141235%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141164141240%_))
                                (let ((_%e141165141243%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141164141240%_))))
                                  (let ((_%tl141167141248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141165141243%_)))
                                        (_%hd141166141246%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141165141243%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd141166141246%_))
                                        (let ((_%e141168141251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd141166141246%_))))
                                          (let ((_%tl141170141256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141168141251%_)))
                                                (_%hd141169141254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141168141251%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd141169141254%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd141169141254%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141170141256%_))
                                                        (let ((_%e141171141259%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141170141256%_))))
                  (let ((_%tl141173141264%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141171141259%_)))
                        (_%hd141172141262%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141171141259%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd141172141262%_))
                        (let ((_%__splice146950146951%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd141172141262%_
                                  '0))))
                          (let ((_%tl141176141269%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice146950146951%_ '1)))
                                (_%target141174141267%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice146950146951%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141176141269%_))
                                (_%__match147013147014%_
                                 _%e141153141211%_
                                 _%hd141154141214%_
                                 _%tl141155141216%_
                                 _%e141156141219%_
                                 _%hd141157141222%_
                                 _%tl141158141224%_
                                 _%e141159141227%_
                                 _%hd141160141230%_
                                 _%tl141161141232%_
                                 _%e141162141235%_
                                 _%hd141163141238%_
                                 _%tl141164141240%_
                                 _%e141165141243%_
                                 _%hd141166141246%_
                                 _%tl141167141248%_
                                 _%e141168141251%_
                                 _%hd141169141254%_
                                 _%tl141170141256%_
                                 _%e141171141259%_
                                 _%hd141172141262%_
                                 _%tl141173141264%_
                                 _%__splice146950146951%_
                                 _%target141174141267%_
                                 _%tl141176141269%_)
                                (_%__kont146954146955%_))))
                        (_%__kont146954146955%_))))
                (_%__kont146954146955%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146954146955%_))
                                                (_%__kont146954146955%_))))
                                        (_%__kont146954146955%_))))
                                (_%__kont146954146955%_))))
                        (_%__kont146954146955%_))))
                (_%__kont146954146955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146954146955%_))
                                            (_%__kont146954146955%_))
                                        (_%__kont146954146955%_))))
                                (_%__kont146954146955%_)))))))))
          (let* ((_%g140849140872%_
                  (lambda (_%g140850140869%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140850140869%_))))
                 (_%g140848141133%_
                  (lambda (_%g140850140875%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140850140875%_))
                        (let ((_%e140853140877%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140850140875%_))))
                          (let ((_%hd140854140880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140853140877%_)))
                                (_%tl140855140882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140853140877%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140855140882%_))
                                (let ((_%e140856140885%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140855140882%_))))
                                  (let ((_%hd140857140888%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140856140885%_)))
                                        (_%tl140858140890%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140856140885%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl140858140890%_))
                                        (let ((_g147623_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl140858140890%_
                                                  '0))))
                                          (begin
                                            (let ((_g147624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147623_)
                                                         (##vector-length
                                                          _g147623_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147624_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147624_)))
                                            (let ((_%target140859140893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147623_
                                                      0)))
                                                  (_%tl140861140895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147623_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140861140895%_))
                                                  (letrec ((_%loop140862140898%_
                                                            (lambda (_%hd140860140901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand140866140903%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd140860140901%_))
                          (let ((_%e140863140906%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd140860140901%_))))
                            (let ((_%lp-hd140864140909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140863140906%_)))
                                  (_%lp-tl140865140911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140863140906%_))))
                              (_%loop140862140898%_
                               _%lp-tl140865140911%_
                               (cons _%lp-hd140864140909%_
                                     _%rand140866140903%_))))
                          (let ((_%rand140867140914%_
                                 (reverse _%rand140866140903%_)))
                            ((lambda (_%L140917%_ _%L140918%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call140847%_
                                    _%L140918%_
                                    (let ((__tmp147625
                                           (lambda (_%g140935140938%_
                                                    _%g140936140940%_)
                                             (cons _%g140935140938%_
                                                   _%g140936140940%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147625 '() _%L140917%_)))
                                   (let* ((_%__stx147062147063%_ _%L140918%_)
                                          (_%g140944140956%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx147062147063%_)))))
                                     (let ((_%__kont147064147065%_
                                            (lambda ()
                                              (let ((_%f140993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140844%_
                                                        _%L140918%_))))
                                                (if (and (let ((__tmp147626
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f140993%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147626))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f140993%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp140995%_ ((_%rest140998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147628
                                                (lambda (_%g141115141118%_
                                                         _%g141116141120%_)
                                                  (cons _%g141115141118%_
                                                        _%g141116141120%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147628
                                            '()
                                            _%L140917%_))))
                               (_%bind141000%_ '())
                               (_%args141001%_ '()))
              (let* ((_%rest141002141010%_ _%rest140998%_)
                     (_%else141004141018%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind141000%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f140993%_
                                                      _%args141001%_)
                                                '()))))))
                     (_%K141006141104%_
                      (lambda (_%rest141021%_ _%e141022%_)
                        (let* ((_%__stx147016147017%_ _%e141022%_)
                               (_%g141027141045%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx147016147017%_)))))
                          (let ((_%__kont147018147019%_
                                 (lambda ()
                                   (_%lp140995%_
                                    _%rest141021%_
                                    _%bind141000%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e141022%_))
                                          _%args141001%_))))
                                (_%__kont147020147021%_
                                 (lambda ()
                                   (_%lp140995%_
                                    _%rest141021%_
                                    _%bind141000%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e141022%_))
                                          _%args141001%_))))
                                (_%__kont147022147023%_
                                 (lambda ()
                                   (let ((_%tmp141052%_
                                          (let ((__tmp147627
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147627))))
                                     (_%lp140995%_
                                      _%rest141021%_
                                      (cons (cons _%tmp141052%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e141022%_))
                                                        '()))
                                            _%bind141000%_)
                                      (cons _%tmp141052%_ _%args141001%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx147016147017%_))
                                (let ((_%e141029141083%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx147016147017%_))))
                                  (let ((_%tl141031141088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141029141083%_)))
                                        (_%hd141030141086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141029141083%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd141030141086%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd141030141086%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141031141088%_))
                                                (let ((_%e141032141091%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141031141088%_))))
                                                  (let ((_%tl141034141096%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141032141091%_)))
                                                        (_%hd141033141094%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141032141091%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141034141096%_))
                                                        (_%__kont147018147019%_)
                                                        (_%__kont147022147023%_))))
                                                (_%__kont147022147023%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd141030141086%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141031141088%_))
                                                    (let ((_%e141038141068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141031141088%_))))
                                                      (let ((_%tl141040141073%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141038141068%_)))
                    (_%hd141039141071%_
                     (let () (declare (not safe)) (##car _%e141038141068%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141040141073%_))
                    (_%__kont147020147021%_)
                    (_%__kont147022147023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147022147023%_))
                                                (_%__kont147022147023%_)))
                                        (_%__kont147022147023%_))))
                                (_%__kont147022147023%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141002141010%_))
                    (let ((_%hd141007141107%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141002141010%_)))
                          (_%tl141008141109%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141002141010%_))))
                      (let* ((_%e141112%_ _%hd141007141107%_)
                             (_%rest141114%_ _%tl141008141109%_))
                        (_%K141006141104%_ _%rest141114%_ _%e141112%_)))
                    (_%else141004141018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call140847%_
                                                     _%L140918%_
                                                     (let ((__tmp147629
                                                            (lambda (_%g141122141125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g141123141127%_)
                      (cons _%g141122141125%_ _%g141123141127%_))))
               (declare (not safe))
               (__foldr1 __tmp147629 '() _%L140917%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont147066147067%_
                                            (lambda ()
                                              (_%compile-call140847%_
                                               _%L140918%_
                                               (let ((__tmp147630
                                                      (lambda (_%g140962140965%_
                                                               _%g140963140967%_)
                                                        (cons _%g140962140965%_
                                                              _%g140963140967%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147630
                                                  '()
                                                  _%L140917%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx147062147063%_))
                                           (let ((_%e140946140975%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx147062147063%_))))
                                             (let ((_%tl140948140980%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140946140975%_)))
                                                   (_%hd140947140978%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140946140975%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140947140978%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd140947140978%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl140948140980%_))
                                                           (let ((_%e140949140983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl140948140980%_))))
                     (let ((_%tl140951140988%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e140949140983%_)))
                           (_%hd140950140986%_
                            (let ()
                              (declare (not safe))
                              (##car _%e140949140983%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl140951140988%_))
                           (_%__kont147064147065%_)
                           (_%__kont147066147067%_))))
                   (_%__kont147066147067%_))
               (_%__kont147066147067%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont147066147067%_))))
                                           (_%__kont147066147067%_))))))
                             _%rand140867140914%_
                             _%hd140857140888%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop140862140898%_
                                                     _%target140859140893%_
                                                     '()))
                                                  (_%g140849140872%_
                                                   _%g140850140875%_)))))
                                        (_%g140849140872%_
                                         _%g140850140875%_))))
                                (_%g140849140872%_ _%g140850140875%_))))
                        (_%g140849140872%_ _%g140850140875%_)))))
            (_%g140848141133%_ _%stx140845%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140587%_ _%stx140588%_)
        (let* ((_%__stx147134147135%_ _%stx140588%_)
               (_%g140591140620%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147134147135%_)))))
          (let ((_%__kont147136147137%_
                 (lambda (_%L140688%_ _%L140689%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140587%_
                        _%stx140588%_)
                       (let ((_%f140711%_
                              (let ((__tmp147631
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140689%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140587%_
                                 __tmp147631))))
                         (let _%lp140713%_ ((_%rest140716%_
                                             (reverse (let ((__tmp147633
                                                             (lambda (_%g140833140836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140834140838%_)
                       (cons _%g140833140836%_ _%g140834140838%_))))
                (declare (not safe))
                (__foldr1 __tmp147633 '() _%L140688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140718%_ '())
                                            (_%args140719%_ '()))
                           (let* ((_%rest140720140728%_ _%rest140716%_)
                                  (_%else140722140736%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140718%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140719%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140724140822%_
                                   (lambda (_%rest140739%_ _%e140740%_)
                                     (let* ((_%__stx147088147089%_ _%e140740%_)
                                            (_%g140745140763%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx147088147089%_)))))
                                       (let ((_%__kont147090147091%_
                                              (lambda ()
                                                (_%lp140713%_
                                                 _%rest140739%_
                                                 _%bind140718%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140740%_))
                                                       _%args140719%_))))
                                             (_%__kont147092147093%_
                                              (lambda ()
                                                (_%lp140713%_
                                                 _%rest140739%_
                                                 _%bind140718%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140740%_))
                                                       _%args140719%_))))
                                             (_%__kont147094147095%_
                                              (lambda ()
                                                (let ((_%tmp140770%_
                                                       (let ((__tmp147632
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140713%_
                                                   _%rest140739%_
                                                   (cons (cons _%tmp140770%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140740%_))
                             '()))
                 _%bind140718%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140770%_
                                                         _%args140719%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx147088147089%_))
                                             (let ((_%e140747140801%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx147088147089%_))))
                                               (let ((_%tl140749140806%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140747140801%_)))
                                                     (_%hd140748140804%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140747140801%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140748140804%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140748140804%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140749140806%_))
                     (let ((_%e140750140809%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140749140806%_))))
                       (let ((_%tl140752140814%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140750140809%_)))
                             (_%hd140751140812%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140750140809%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140752140814%_))
                             (_%__kont147090147091%_)
                             (_%__kont147094147095%_))))
                     (_%__kont147094147095%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140748140804%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140749140806%_))
                         (let ((_%e140756140786%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140749140806%_))))
                           (let ((_%tl140758140791%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140756140786%_)))
                                 (_%hd140757140789%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140756140786%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140758140791%_))
                                 (_%__kont147092147093%_)
                                 (_%__kont147094147095%_))))
                         (_%__kont147094147095%_))
                     (_%__kont147094147095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147094147095%_))))
                                             (_%__kont147094147095%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140720140728%_))
                                 (let ((_%hd140725140825%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140720140728%_)))
                                       (_%tl140726140827%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140720140728%_))))
                                   (let* ((_%e140830%_ _%hd140725140825%_)
                                          (_%rest140832%_ _%tl140726140827%_))
                                     (_%K140724140822%_
                                      _%rest140832%_
                                      _%e140830%_)))
                                 (_%else140722140736%_))))))))
                (_%__kont147140147141%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140587%_ _%stx140588%_))))
            (let ((_%__match147179147180%_
                   (lambda (_%e140595140632%_
                            _%hd140596140635%_
                            _%tl140597140637%_
                            _%e140598140640%_
                            _%hd140599140643%_
                            _%tl140600140645%_
                            _%e140601140648%_
                            _%hd140602140651%_
                            _%tl140603140653%_
                            _%e140604140656%_
                            _%hd140605140659%_
                            _%tl140606140661%_
                            _%__splice147138147139%_
                            _%target140607140664%_
                            _%tl140609140666%_)
                     (letrec ((_%loop140610140669%_
                               (lambda (_%hd140608140672%_
                                        _%rand140614140674%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140608140672%_))
                                     (let ((_%e140611140677%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140608140672%_))))
                                       (let ((_%lp-tl140613140682%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140611140677%_)))
                                             (_%lp-hd140612140680%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140611140677%_))))
                                         (_%loop140610140669%_
                                          _%lp-tl140613140682%_
                                          (cons _%lp-hd140612140680%_
                                                _%rand140614140674%_))))
                                     (let ((_%rand140615140685%_
                                            (reverse _%rand140614140674%_)))
                                       (_%__kont147136147137%_
                                        _%rand140615140685%_
                                        _%hd140605140659%_))))))
                       (_%loop140610140669%_ _%target140607140664%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147134147135%_))
                  (let ((_%e140595140632%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147134147135%_))))
                    (let ((_%tl140597140637%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140595140632%_)))
                          (_%hd140596140635%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140595140632%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140597140637%_))
                          (let ((_%e140598140640%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140597140637%_))))
                            (let ((_%tl140600140645%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140598140640%_)))
                                  (_%hd140599140643%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140598140640%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140599140643%_))
                                  (let ((_%e140601140648%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140599140643%_))))
                                    (let ((_%tl140603140653%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140601140648%_)))
                                          (_%hd140602140651%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140601140648%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140602140651%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140602140651%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140603140653%_))
                                                  (let ((_%e140604140656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140603140653%_))))
                                                    (let ((_%tl140606140661%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140604140656%_)))
                                                          (_%hd140605140659%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140604140656%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140606140661%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140600140645%_))
                      (let ((_%__splice147138147139%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140600140645%_
                                '0))))
                        (let ((_%tl140609140666%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147138147139%_ '1)))
                              (_%target140607140664%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147138147139%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140609140666%_))
                              (_%__match147179147180%_
                               _%e140595140632%_
                               _%hd140596140635%_
                               _%tl140597140637%_
                               _%e140598140640%_
                               _%hd140599140643%_
                               _%tl140600140645%_
                               _%e140601140648%_
                               _%hd140602140651%_
                               _%tl140603140653%_
                               _%e140604140656%_
                               _%hd140605140659%_
                               _%tl140606140661%_
                               _%__splice147138147139%_
                               _%target140607140664%_
                               _%tl140609140666%_)
                              (_%__kont147140147141%_))))
                      (_%__kont147140147141%_))
                  (_%__kont147140147141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147140147141%_))
                                              (_%__kont147140147141%_))
                                          (_%__kont147140147141%_))))
                                  (_%__kont147140147141%_))))
                          (_%__kont147140147141%_))))
                  (_%__kont147140147141%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self140399%_ _%stx140400%_)
        (letrec ((_%simplify140402%_
                  (lambda (_%code140487%_)
                    (let* ((_%code140488140506%_ _%code140487%_)
                           (_%else140490140514%_ (lambda () _%code140487%_))
                           (_%K140492140550%_
                            (lambda (_%expr140517%_ _%test140518%_)
                              (let* ((_%expr140519140527%_ _%expr140517%_)
                                     (_%else140521140535%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140518%_
                                                    (cons _%expr140517%_
                                                          '())))))
                                     (_%K140523140540%_
                                      (lambda (_%exprs140538%_)
                                        (cons 'and
                                              (cons _%test140518%_
                                                    _%exprs140538%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140519140527%_))
                                    (let ((_%hd140524140543%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140519140527%_)))
                                          (_%tl140525140545%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140519140527%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140524140543%_ 'and))
                                          (let ((_%exprs140548%_
                                                 _%tl140525140545%_))
                                            (_%K140523140540%_
                                             _%exprs140548%_))
                                          (_%else140521140535%_)))
                                    (_%else140521140535%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140488140506%_))
                          (let ((_%hd140493140553%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140488140506%_)))
                                (_%tl140494140555%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140488140506%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140493140553%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140494140555%_))
                                    (let ((_%hd140495140558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140494140555%_)))
                                          (_%tl140496140560%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140494140555%_))))
                                      (let ((_%test140563%_
                                             _%hd140495140558%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140496140560%_))
                                            (let ((_%hd140497140565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140496140560%_)))
                                                  (_%tl140498140567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140496140560%_))))
                                              (let ((_%expr140570%_
                                                     _%hd140497140565%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140498140567%_))
                                                    (let ((_%hd140499140572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140498140567%_)))
                                                          (_%tl140500140574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140498140567%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140499140572%_))
                                                          (let ((_%hd140501140577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140499140572%_)))
                        (_%tl140502140579%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140499140572%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140501140577%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140502140579%_))
                            (let ((_%hd140503140582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140502140579%_)))
                                  (_%tl140504140584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140502140579%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140503140582%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140504140584%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140500140574%_))
                                          (_%K140492140550%_
                                           _%expr140570%_
                                           _%test140563%_)
                                          (_%else140490140514%_))
                                      (_%else140490140514%_))
                                  (_%else140490140514%_)))
                            (_%else140490140514%_))
                        (_%else140490140514%_)))
                  (_%else140490140514%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140490140514%_))))
                                            (_%else140490140514%_))))
                                    (_%else140490140514%_))
                                (_%else140490140514%_)))
                          (_%else140490140514%_))))))
          (let* ((_%g140404140425%_
                  (lambda (_%g140405140422%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140405140422%_))))
                 (_%g140403140484%_
                  (lambda (_%g140405140428%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140405140428%_))
                        (let ((_%e140409140430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140405140428%_))))
                          (let ((_%hd140410140433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140409140430%_)))
                                (_%tl140411140435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140409140430%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140411140435%_))
                                (let ((_%e140412140438%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140411140435%_))))
                                  (let ((_%hd140413140441%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140412140438%_)))
                                        (_%tl140414140443%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140412140438%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140414140443%_))
                                        (let ((_%e140415140446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140414140443%_))))
                                          (let ((_%hd140416140449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140415140446%_)))
                                                (_%tl140417140451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140415140446%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140417140451%_))
                                                (let ((_%e140418140454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140417140451%_))))
                                                  (let ((_%hd140419140457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140418140454%_)))
                                                        (_%tl140420140459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140418140454%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140420140459%_))
                                                        ((lambda (_%L140462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140463%_
                          _%L140464%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify140402%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self140399%_
                                       _%L140464%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self140399%_
                                             _%L140463%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self140399%_
                                                   _%L140462%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147634
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140399%_
                                               _%L140464%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147634
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140399%_
                                            _%L140463%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140399%_
                                                  _%L140462%_))
                                               '()))))))
                 _%hd140419140457%_
                 _%hd140416140449%_
                 _%hd140413140441%_)
                (_%g140404140425%_ _%g140405140428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g140404140425%_
                                                 _%g140405140428%_))))
                                        (_%g140404140425%_
                                         _%g140405140428%_))))
                                (_%g140404140425%_ _%g140405140428%_))))
                        (_%g140404140425%_ _%g140405140428%_)))))
            (_%g140403140484%_ _%stx140400%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self140347%_ _%stx140348%_)
        (let* ((_%g140350140363%_
                (lambda (_%g140351140360%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140351140360%_))))
               (_%g140349140396%_
                (lambda (_%g140351140366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140351140366%_))
                      (let ((_%e140353140368%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140351140366%_))))
                        (let ((_%hd140354140371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140353140368%_)))
                              (_%tl140355140373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140353140368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140355140373%_))
                              (let ((_%e140356140376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140355140373%_))))
                                (let ((_%hd140357140379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140356140376%_)))
                                      (_%tl140358140381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140356140376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl140358140381%_))
                                      ((lambda (_%L140384%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L140384%_)))
                                       _%hd140357140379%_)
                                      (_%g140350140363%_ _%g140351140366%_))))
                              (_%g140350140363%_ _%g140351140366%_))))
                      (_%g140350140363%_ _%g140351140366%_)))))
          (_%g140349140396%_ _%stx140348%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self140279%_ _%stx140280%_)
        (let* ((_%g140282140299%_
                (lambda (_%g140283140296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140283140296%_))))
               (_%g140281140344%_
                (lambda (_%g140283140302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140283140302%_))
                      (let ((_%e140286140304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140283140302%_))))
                        (let ((_%hd140287140307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140286140304%_)))
                              (_%tl140288140309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140286140304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140288140309%_))
                              (let ((_%e140289140312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140288140309%_))))
                                (let ((_%hd140290140315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140289140312%_)))
                                      (_%tl140291140317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140289140312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140291140317%_))
                                      (let ((_%e140292140320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140291140317%_))))
                                        (let ((_%hd140293140323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140292140320%_)))
                                              (_%tl140294140325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140292140320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140294140325%_))
                                              ((lambda (_%L140328%_
                                                        _%L140329%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L140329%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140279%_ _%L140328%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140293140323%_
                                               _%hd140290140315%_)
                                              (_%g140282140299%_
                                               _%g140283140302%_))))
                                      (_%g140282140299%_ _%g140283140302%_))))
                              (_%g140282140299%_ _%g140283140302%_))))
                      (_%g140282140299%_ _%g140283140302%_)))))
          (_%g140281140344%_ _%stx140280%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self140090%_ _%stx140091%_)
        (let* ((_%g140093140110%_
                (lambda (_%g140094140107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140094140107%_))))
               (_%g140092140276%_
                (lambda (_%g140094140113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140094140113%_))
                      (let ((_%e140097140115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140094140113%_))))
                        (let ((_%hd140098140118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140097140115%_)))
                              (_%tl140099140120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140097140115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140099140120%_))
                              (let ((_%e140100140123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140099140120%_))))
                                (let ((_%hd140101140126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140100140123%_)))
                                      (_%tl140102140128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140100140123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140102140128%_))
                                      (let ((_%e140103140131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140102140128%_))))
                                        (let ((_%hd140104140134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140103140131%_)))
                                              (_%tl140105140136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140103140131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140105140136%_))
                                              ((lambda (_%L140139%_
                                                        _%L140140%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self140090%_ _%L140139%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self140090%_ _%L140140%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp140155%_ ((_%rest140158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L140140%_ (cons _%L140139%_ '())))
                                (_%bind140160%_ '())
                                (_%args140161%_ '()))
               (let* ((_%rest140162140170%_ _%rest140158%_)
                      (_%else140164140178%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind140160%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args140161%_)
                                                 '()))))))
                      (_%K140166140264%_
                       (lambda (_%rest140181%_ _%e140182%_)
                         (let* ((_%__stx147182147183%_ _%e140182%_)
                                (_%g140187140205%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147182147183%_)))))
                           (let ((_%__kont147184147185%_
                                  (lambda ()
                                    (_%lp140155%_
                                     _%rest140181%_
                                     _%bind140160%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140182%_))
                                           _%args140161%_))))
                                 (_%__kont147186147187%_
                                  (lambda ()
                                    (_%lp140155%_
                                     _%rest140181%_
                                     _%bind140160%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140182%_))
                                           _%args140161%_))))
                                 (_%__kont147188147189%_
                                  (lambda ()
                                    (let ((_%tmp140212%_
                                           (let ((__tmp147635
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147635))))
                                      (_%lp140155%_
                                       _%rest140181%_
                                       (cons (cons _%tmp140212%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e140182%_))
                                                         '()))
                                             _%bind140160%_)
                                       (cons _%tmp140212%_ _%args140161%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147182147183%_))
                                 (let ((_%e140189140243%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147182147183%_))))
                                   (let ((_%tl140191140248%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140189140243%_)))
                                         (_%hd140190140246%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140189140243%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd140190140246%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd140190140246%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl140191140248%_))
                                                 (let ((_%e140192140251%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl140191140248%_))))
                                                   (let ((_%tl140194140256%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140192140251%_)))
                                                         (_%hd140193140254%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140192140251%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140194140256%_))
                                                         (_%__kont147184147185%_)
                                                         (_%__kont147188147189%_))))
                                                 (_%__kont147188147189%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd140190140246%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140191140248%_))
                                                     (let ((_%e140198140228%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140191140248%_))))
                                                       (let ((_%tl140200140233%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140198140228%_)))
                     (_%hd140199140231%_
                      (let () (declare (not safe)) (##car _%e140198140228%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140200140233%_))
                     (_%__kont147186147187%_)
                     (_%__kont147188147189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147188147189%_))
                                                 (_%__kont147188147189%_)))
                                         (_%__kont147188147189%_))))
                                 (_%__kont147188147189%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest140162140170%_))
                     (let ((_%hd140167140267%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest140162140170%_)))
                           (_%tl140168140269%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest140162140170%_))))
                       (let* ((_%e140272%_ _%hd140167140267%_)
                              (_%rest140274%_ _%tl140168140269%_))
                         (_%K140166140264%_ _%rest140274%_ _%e140272%_)))
                     (_%else140164140178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140104140134%_
                                               _%hd140101140126%_)
                                              (_%g140093140110%_
                                               _%g140094140113%_))))
                                      (_%g140093140110%_ _%g140094140113%_))))
                              (_%g140093140110%_ _%g140094140113%_))))
                      (_%g140093140110%_ _%g140094140113%_)))))
          (_%g140092140276%_ _%stx140091%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self139901%_ _%stx139902%_)
        (let* ((_%g139904139921%_
                (lambda (_%g139905139918%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139905139918%_))))
               (_%g139903140087%_
                (lambda (_%g139905139924%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139905139924%_))
                      (let ((_%e139908139926%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139905139924%_))))
                        (let ((_%hd139909139929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139908139926%_)))
                              (_%tl139910139931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139908139926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139910139931%_))
                              (let ((_%e139911139934%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139910139931%_))))
                                (let ((_%hd139912139937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139911139934%_)))
                                      (_%tl139913139939%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139911139934%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139913139939%_))
                                      (let ((_%e139914139942%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139913139939%_))))
                                        (let ((_%hd139915139945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139914139942%_)))
                                              (_%tl139916139947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139914139942%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139916139947%_))
                                              ((lambda (_%L139950%_
                                                        _%L139951%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139901%_ _%L139950%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139901%_ _%L139951%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139966%_ ((_%rest139969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139951%_ (cons _%L139950%_ '())))
                                (_%bind139971%_ '())
                                (_%args139972%_ '()))
               (let* ((_%rest139973139981%_ _%rest139969%_)
                      (_%else139975139989%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139971%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args139972%_)
                                                 '()))))))
                      (_%K139977140075%_
                       (lambda (_%rest139992%_ _%e139993%_)
                         (let* ((_%__stx147228147229%_ _%e139993%_)
                                (_%g139998140016%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147228147229%_)))))
                           (let ((_%__kont147230147231%_
                                  (lambda ()
                                    (_%lp139966%_
                                     _%rest139992%_
                                     _%bind139971%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139993%_))
                                           _%args139972%_))))
                                 (_%__kont147232147233%_
                                  (lambda ()
                                    (_%lp139966%_
                                     _%rest139992%_
                                     _%bind139971%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139993%_))
                                           _%args139972%_))))
                                 (_%__kont147234147235%_
                                  (lambda ()
                                    (let ((_%tmp140023%_
                                           (let ((__tmp147636
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147636))))
                                      (_%lp139966%_
                                       _%rest139992%_
                                       (cons (cons _%tmp140023%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139993%_))
                                                         '()))
                                             _%bind139971%_)
                                       (cons _%tmp140023%_ _%args139972%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147228147229%_))
                                 (let ((_%e140000140054%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147228147229%_))))
                                   (let ((_%tl140002140059%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140000140054%_)))
                                         (_%hd140001140057%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140000140054%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd140001140057%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd140001140057%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl140002140059%_))
                                                 (let ((_%e140003140062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl140002140059%_))))
                                                   (let ((_%tl140005140067%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140003140062%_)))
                                                         (_%hd140004140065%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140003140062%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140005140067%_))
                                                         (_%__kont147230147231%_)
                                                         (_%__kont147234147235%_))))
                                                 (_%__kont147234147235%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd140001140057%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140002140059%_))
                                                     (let ((_%e140009140039%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140002140059%_))))
                                                       (let ((_%tl140011140044%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140009140039%_)))
                     (_%hd140010140042%_
                      (let () (declare (not safe)) (##car _%e140009140039%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140011140044%_))
                     (_%__kont147232147233%_)
                     (_%__kont147234147235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147234147235%_))
                                                 (_%__kont147234147235%_)))
                                         (_%__kont147234147235%_))))
                                 (_%__kont147234147235%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139973139981%_))
                     (let ((_%hd139978140078%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139973139981%_)))
                           (_%tl139979140080%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139973139981%_))))
                       (let* ((_%e140083%_ _%hd139978140078%_)
                              (_%rest140085%_ _%tl139979140080%_))
                         (_%K139977140075%_ _%rest140085%_ _%e140083%_)))
                     (_%else139975139989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139915139945%_
                                               _%hd139912139937%_)
                                              (_%g139904139921%_
                                               _%g139905139924%_))))
                                      (_%g139904139921%_ _%g139905139924%_))))
                              (_%g139904139921%_ _%g139905139924%_))))
                      (_%g139904139921%_ _%g139905139924%_)))))
          (_%g139903140087%_ _%stx139902%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self139817%_ _%stx139818%_)
        (let* ((_%g139820139841%_
                (lambda (_%g139821139838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139821139838%_))))
               (_%g139819139898%_
                (lambda (_%g139821139844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139821139844%_))
                      (let ((_%e139825139846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139821139844%_))))
                        (let ((_%hd139826139849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139825139846%_)))
                              (_%tl139827139851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139825139846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139827139851%_))
                              (let ((_%e139828139854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139827139851%_))))
                                (let ((_%hd139829139857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139828139854%_)))
                                      (_%tl139830139859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139828139854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139830139859%_))
                                      (let ((_%e139831139862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139830139859%_))))
                                        (let ((_%hd139832139865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139831139862%_)))
                                              (_%tl139833139867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139831139862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139833139867%_))
                                              (let ((_%e139834139870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139833139867%_))))
                                                (let ((_%hd139835139873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139834139870%_)))
                                                      (_%tl139836139875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139834139870%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139836139875%_))
                                                      ((lambda (_%L139878%_
                                                                _%L139879%_
                                                                _%L139880%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139817%_ _%L139878%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139817%_
                                      _%L139879%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139817%_
                                            _%L139880%_))
                                         (cons ''#f '()))))))
               _%hd139835139873%_
               _%hd139832139865%_
               _%hd139829139857%_)
              (_%g139820139841%_ _%g139821139844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139820139841%_
                                               _%g139821139844%_))))
                                      (_%g139820139841%_ _%g139821139844%_))))
                              (_%g139820139841%_ _%g139821139844%_))))
                      (_%g139820139841%_ _%g139821139844%_)))))
          (_%g139819139898%_ _%stx139818%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139717%_ _%stx139718%_)
        (let* ((_%g139720139745%_
                (lambda (_%g139721139742%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139721139742%_))))
               (_%g139719139814%_
                (lambda (_%g139721139748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139721139748%_))
                      (let ((_%e139726139750%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139721139748%_))))
                        (let ((_%hd139727139753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139726139750%_)))
                              (_%tl139728139755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139726139750%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139728139755%_))
                              (let ((_%e139729139758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139728139755%_))))
                                (let ((_%hd139730139761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139729139758%_)))
                                      (_%tl139731139763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139729139758%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139731139763%_))
                                      (let ((_%e139732139766%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139731139763%_))))
                                        (let ((_%hd139733139769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139732139766%_)))
                                              (_%tl139734139771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139732139766%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139734139771%_))
                                              (let ((_%e139735139774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139734139771%_))))
                                                (let ((_%hd139736139777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139735139774%_)))
                                                      (_%tl139737139779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139735139774%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139737139779%_))
                                                      (let ((_%e139738139782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139737139779%_))))
                (let ((_%hd139739139785%_
                       (let () (declare (not safe)) (##car _%e139738139782%_)))
                      (_%tl139740139787%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139738139782%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139740139787%_))
                      ((lambda (_%L139790%_
                                _%L139791%_
                                _%L139792%_
                                _%L139793%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139717%_
                                        _%L139791%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139717%_
                                              _%L139790%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139717%_
                                                    _%L139792%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139717%_
                                                          _%L139793%_))
                                                       (cons ''#f '())))))))
                       _%hd139739139785%_
                       _%hd139736139777%_
                       _%hd139733139769%_
                       _%hd139730139761%_)
                      (_%g139720139745%_ _%g139721139748%_))))
              (_%g139720139745%_ _%g139721139748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139720139745%_
                                               _%g139721139748%_))))
                                      (_%g139720139745%_ _%g139721139748%_))))
                              (_%g139720139745%_ _%g139721139748%_))))
                      (_%g139720139745%_ _%g139721139748%_)))))
          (_%g139719139814%_ _%stx139718%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139633%_ _%stx139634%_)
        (let* ((_%g139636139657%_
                (lambda (_%g139637139654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139637139654%_))))
               (_%g139635139714%_
                (lambda (_%g139637139660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139637139660%_))
                      (let ((_%e139641139662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139637139660%_))))
                        (let ((_%hd139642139665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139641139662%_)))
                              (_%tl139643139667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139641139662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139643139667%_))
                              (let ((_%e139644139670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139643139667%_))))
                                (let ((_%hd139645139673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139644139670%_)))
                                      (_%tl139646139675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139644139670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139646139675%_))
                                      (let ((_%e139647139678%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139646139675%_))))
                                        (let ((_%hd139648139681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139647139678%_)))
                                              (_%tl139649139683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139647139678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139649139683%_))
                                              (let ((_%e139650139686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139649139683%_))))
                                                (let ((_%hd139651139689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139650139686%_)))
                                                      (_%tl139652139691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139650139686%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139652139691%_))
                                                      ((lambda (_%L139694%_
                                                                _%L139695%_
                                                                _%L139696%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139633%_ _%L139694%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139633%_
                                      _%L139695%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139633%_
                                            _%L139696%_))
                                         (cons ''#f '()))))))
               _%hd139651139689%_
               _%hd139648139681%_
               _%hd139645139673%_)
              (_%g139636139657%_ _%g139637139660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139636139657%_
                                               _%g139637139660%_))))
                                      (_%g139636139657%_ _%g139637139660%_))))
                              (_%g139636139657%_ _%g139637139660%_))))
                      (_%g139636139657%_ _%g139637139660%_)))))
          (_%g139635139714%_ _%stx139634%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139533%_ _%stx139534%_)
        (let* ((_%g139536139561%_
                (lambda (_%g139537139558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139537139558%_))))
               (_%g139535139630%_
                (lambda (_%g139537139564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139537139564%_))
                      (let ((_%e139542139566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139537139564%_))))
                        (let ((_%hd139543139569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139542139566%_)))
                              (_%tl139544139571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139542139566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139544139571%_))
                              (let ((_%e139545139574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139544139571%_))))
                                (let ((_%hd139546139577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139545139574%_)))
                                      (_%tl139547139579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139545139574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139547139579%_))
                                      (let ((_%e139548139582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139547139579%_))))
                                        (let ((_%hd139549139585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139548139582%_)))
                                              (_%tl139550139587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139548139582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139550139587%_))
                                              (let ((_%e139551139590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139550139587%_))))
                                                (let ((_%hd139552139593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139551139590%_)))
                                                      (_%tl139553139595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139551139590%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139553139595%_))
                                                      (let ((_%e139554139598%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139553139595%_))))
                (let ((_%hd139555139601%_
                       (let () (declare (not safe)) (##car _%e139554139598%_)))
                      (_%tl139556139603%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139554139598%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139556139603%_))
                      ((lambda (_%L139606%_
                                _%L139607%_
                                _%L139608%_
                                _%L139609%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139533%_
                                        _%L139607%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139533%_
                                              _%L139606%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139533%_
                                                    _%L139608%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139533%_
                                                          _%L139609%_))
                                                       (cons ''#f '())))))))
                       _%hd139555139601%_
                       _%hd139552139593%_
                       _%hd139549139585%_
                       _%hd139546139577%_)
                      (_%g139536139561%_ _%g139537139564%_))))
              (_%g139536139561%_ _%g139537139564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139536139561%_
                                               _%g139537139564%_))))
                                      (_%g139536139561%_ _%g139537139564%_))))
                              (_%g139536139561%_ _%g139537139564%_))))
                      (_%g139536139561%_ _%g139537139564%_)))))
          (_%g139535139630%_ _%stx139534%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self139328%_ _%stx139329%_)
        (let* ((_%g139331139352%_
                (lambda (_%g139332139349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139332139349%_))))
               (_%g139330139530%_
                (lambda (_%g139332139355%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139332139355%_))
                      (let ((_%e139336139357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139332139355%_))))
                        (let ((_%hd139337139360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139336139357%_)))
                              (_%tl139338139362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139336139357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139338139362%_))
                              (let ((_%e139339139365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139338139362%_))))
                                (let ((_%hd139340139368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139339139365%_)))
                                      (_%tl139341139370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139339139365%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139341139370%_))
                                      (let ((_%e139342139373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139341139370%_))))
                                        (let ((_%hd139343139376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139342139373%_)))
                                              (_%tl139344139378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139342139373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139344139378%_))
                                              (let ((_%e139345139381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139344139378%_))))
                                                (let ((_%hd139346139384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139345139381%_)))
                                                      (_%tl139347139386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139345139381%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139347139386%_))
                                                      ((lambda (_%L139389%_
                                                                _%L139390%_
                                                                _%L139391%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self139328%_
                                    _%L139389%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139328%_
                                          _%L139390%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp139409%_ ((_%rest139412%_
                                         (cons _%L139390%_
                                               (cons _%L139389%_ '())))
                                        (_%bind139414%_ '())
                                        (_%args139415%_ '()))
                       (let* ((_%rest139416139424%_ _%rest139412%_)
                              (_%else139418139432%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind139414%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147637 _%args139415%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K139420139518%_
                               (lambda (_%rest139435%_ _%e139436%_)
                                 (let* ((_%__stx147274147275%_ _%e139436%_)
                                        (_%g139441139459%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx147274147275%_)))))
                                   (let ((_%__kont147276147277%_
                                          (lambda ()
                                            (_%lp139409%_
                                             _%rest139435%_
                                             _%bind139414%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139436%_))
                                                   _%args139415%_))))
                                         (_%__kont147278147279%_
                                          (lambda ()
                                            (_%lp139409%_
                                             _%rest139435%_
                                             _%bind139414%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139436%_))
                                                   _%args139415%_))))
                                         (_%__kont147280147281%_
                                          (lambda ()
                                            (let ((_%tmp139466%_
                                                   (let ((__tmp147638
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147638))))
                                              (_%lp139409%_
                                               _%rest139435%_
                                               (cons (cons _%tmp139466%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e139436%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139414%_)
                                               (cons _%tmp139466%_
                                                     _%args139415%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx147274147275%_))
                                         (let ((_%e139443139497%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx147274147275%_))))
                                           (let ((_%tl139445139502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139443139497%_)))
                                                 (_%hd139444139500%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139443139497%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd139444139500%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd139444139500%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl139445139502%_))
                                                         (let ((_%e139446139505%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl139445139502%_))))
                   (let ((_%tl139448139510%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e139446139505%_)))
                         (_%hd139447139508%_
                          (let ()
                            (declare (not safe))
                            (##car _%e139446139505%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139448139510%_))
                         (_%__kont147276147277%_)
                         (_%__kont147280147281%_))))
                 (_%__kont147280147281%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd139444139500%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139445139502%_))
                     (let ((_%e139452139482%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139445139502%_))))
                       (let ((_%tl139454139487%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139452139482%_)))
                             (_%hd139453139485%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139452139482%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139454139487%_))
                             (_%__kont147278147279%_)
                             (_%__kont147280147281%_))))
                     (_%__kont147280147281%_))
                 (_%__kont147280147281%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147280147281%_))))
                                         (_%__kont147280147281%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest139416139424%_))
                             (let ((_%hd139421139521%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest139416139424%_)))
                                   (_%tl139422139523%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest139416139424%_))))
                               (let* ((_%e139526%_ _%hd139421139521%_)
                                      (_%rest139528%_ _%tl139422139523%_))
                                 (_%K139420139518%_
                                  _%rest139528%_
                                  _%e139526%_)))
                             (_%else139418139432%_))))))
               _%hd139346139384%_
               _%hd139343139376%_
               _%hd139340139368%_)
              (_%g139331139352%_ _%g139332139355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139331139352%_
                                               _%g139332139355%_))))
                                      (_%g139331139352%_ _%g139332139355%_))))
                              (_%g139331139352%_ _%g139332139355%_))))
                      (_%g139331139352%_ _%g139332139355%_)))))
          (_%g139330139530%_ _%stx139329%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self139107%_ _%stx139108%_)
        (let* ((_%g139110139135%_
                (lambda (_%g139111139132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139111139132%_))))
               (_%g139109139325%_
                (lambda (_%g139111139138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139111139138%_))
                      (let ((_%e139116139140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139111139138%_))))
                        (let ((_%hd139117139143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139116139140%_)))
                              (_%tl139118139145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139116139140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139118139145%_))
                              (let ((_%e139119139148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139118139145%_))))
                                (let ((_%hd139120139151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139119139148%_)))
                                      (_%tl139121139153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139119139148%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139121139153%_))
                                      (let ((_%e139122139156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139121139153%_))))
                                        (let ((_%hd139123139159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139122139156%_)))
                                              (_%tl139124139161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139122139156%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139124139161%_))
                                              (let ((_%e139125139164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139124139161%_))))
                                                (let ((_%hd139126139167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139125139164%_)))
                                                      (_%tl139127139169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139125139164%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139127139169%_))
                                                      (let ((_%e139128139172%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139127139169%_))))
                (let ((_%hd139129139175%_
                       (let () (declare (not safe)) (##car _%e139128139172%_)))
                      (_%tl139130139177%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139128139172%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139130139177%_))
                      ((lambda (_%L139180%_
                                _%L139181%_
                                _%L139182%_
                                _%L139183%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139107%_
                                            _%L139181%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self139107%_
                                                  _%L139180%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139107%_
                                                        _%L139182%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp139204%_ ((_%rest139207%_
                                                 (cons _%L139182%_
                                                       (cons _%L139180%_
                                                             (cons _%L139181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind139209%_ '())
                                                (_%args139210%_ '()))
                               (let* ((_%rest139211139219%_ _%rest139207%_)
                                      (_%else139213139227%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind139209%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147639 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147639 _%args139210%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K139215139313%_
                                       (lambda (_%rest139230%_ _%e139231%_)
                                         (let* ((_%__stx147320147321%_
                                                 _%e139231%_)
                                                (_%g139236139254%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx147320147321%_)))))
                                           (let ((_%__kont147322147323%_
                                                  (lambda ()
                                                    (_%lp139204%_
                                                     _%rest139230%_
                                                     _%bind139209%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139231%_))
                                                           _%args139210%_))))
                                                 (_%__kont147324147325%_
                                                  (lambda ()
                                                    (_%lp139204%_
                                                     _%rest139230%_
                                                     _%bind139209%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139231%_))
                                                           _%args139210%_))))
                                                 (_%__kont147326147327%_
                                                  (lambda ()
                                                    (let ((_%tmp139261%_
                                                           (let ((__tmp147640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147640))))
              (_%lp139204%_
               _%rest139230%_
               (cons (cons _%tmp139261%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e139231%_))
                                 '()))
                     _%bind139209%_)
               (cons _%tmp139261%_ _%args139210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx147320147321%_))
                                                 (let ((_%e139238139292%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx147320147321%_))))
                                                   (let ((_%tl139240139297%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139238139292%_)))
                                                         (_%hd139239139295%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139238139292%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd139239139295%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd139239139295%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl139240139297%_))
                         (let ((_%e139241139300%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl139240139297%_))))
                           (let ((_%tl139243139305%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e139241139300%_)))
                                 (_%hd139242139303%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e139241139300%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl139243139305%_))
                                 (_%__kont147322147323%_)
                                 (_%__kont147326147327%_))))
                         (_%__kont147326147327%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd139239139295%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl139240139297%_))
                             (let ((_%e139247139277%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl139240139297%_))))
                               (let ((_%tl139249139282%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e139247139277%_)))
                                     (_%hd139248139280%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e139247139277%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl139249139282%_))
                                     (_%__kont147324147325%_)
                                     (_%__kont147326147327%_))))
                             (_%__kont147326147327%_))
                         (_%__kont147326147327%_)))
                 (_%__kont147326147327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147326147327%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest139211139219%_))
                                     (let ((_%hd139216139316%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest139211139219%_)))
                                           (_%tl139217139318%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest139211139219%_))))
                                       (let* ((_%e139321%_ _%hd139216139316%_)
                                              (_%rest139323%_
                                               _%tl139217139318%_))
                                         (_%K139215139313%_
                                          _%rest139323%_
                                          _%e139321%_)))
                                     (_%else139213139227%_))))))
                       _%hd139129139175%_
                       _%hd139126139167%_
                       _%hd139123139159%_
                       _%hd139120139151%_)
                      (_%g139110139135%_ _%g139111139138%_))))
              (_%g139110139135%_ _%g139111139138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139110139135%_
                                               _%g139111139138%_))))
                                      (_%g139110139135%_ _%g139111139138%_))))
                              (_%g139110139135%_ _%g139111139138%_))))
                      (_%g139110139135%_ _%g139111139138%_)))))
          (_%g139109139325%_ _%stx139108%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self138946%_ _%stx138947%_)
        (letrec ((_%import-set-template138949%_
                  (lambda (_%in139052%_ _%phi139053%_)
                    (let ((_%iphi139055%_
                           (fx+ _%phi139053%_
                                (##direct-structure-ref
                                 _%in139052%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports139056%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in139052%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp139058%_ ((_%rest139060%_ _%imports139056%_)
                                         (_%r139061%_ '()))
                        (let* ((_%rest139062139070%_ _%rest139060%_)
                               (_%else139064139078%_ (lambda () _%r139061%_))
                               (_%K139066139095%_
                                (lambda (_%rest139081%_ _%in139082%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in139082%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi139055%_))
                                          (_%lp139058%_
                                           _%rest139081%_
                                           (cons _%in139082%_ _%r139061%_))
                                          (_%lp139058%_
                                           _%rest139081%_
                                           _%r139061%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in139082%_
                                             'gx#module-import::t))
                                          (let ((_%iphi139086%_
                                                 (fx+ _%phi139053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in139082%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi139086%_))
                                                (_%lp139058%_
                                                 _%rest139081%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in139082%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r139061%_))
                                                (_%lp139058%_
                                                 _%rest139081%_
                                                 _%r139061%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in139082%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi139089%_
                                                     (fx+ _%iphi139055%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in139082%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi139089%_))
                                                    (_%lp139058%_
                                                     _%rest139081%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139082%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r139061%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi139089%_))
                                                        (_%lp139058%_
                                                         _%rest139081%_
                                                         (let ((__tmp147641
                                                                (_%import-set-template138949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in139082%_
                         _%iphi139055%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r139061%_ __tmp147641)))
                (_%lp139058%_ _%rest139081%_ _%r139061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp139058%_
                                               _%rest139081%_
                                               _%r139061%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest139062139070%_))
                              (let ((_%hd139067139098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest139062139070%_)))
                                    (_%tl139068139100%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest139062139070%_))))
                                (let* ((_%in139103%_ _%hd139067139098%_)
                                       (_%rest139105%_ _%tl139068139100%_))
                                  (_%K139066139095%_
                                   _%rest139105%_
                                   _%in139103%_)))
                              (_%else139064139078%_))))))))
          (let* ((_%g138951138961%_
                  (lambda (_%g138952138958%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138952138958%_))))
                 (_%g138950139049%_
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
                               (let ((_%ht138985%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp138987%_ ((_%rest138989%_
                                                     _%L138974%_)
                                                    (_%loads138990%_ '()))
                                   (letrec ((_%K138992%_
                                             (lambda (_%ctx139042%_
                                                      _%rest139043%_)
                                               (let ((_%id139045%_
                                                      (##structure-ref
                                                       _%ctx139042%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht138985%_
                                                        _%id139045%_))
                                                     (_%lp138987%_
                                                      _%rest139043%_
                                                      _%loads138990%_)
                                                     (let ((_%rt139047%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id139045%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht138985%_
                                                          _%id139045%_
                                                          _%rt139047%_))
                                                       (_%lp138987%_
                                                        _%rest139043%_
                                                        (cons _%rt139047%_
                                                              _%loads138990%_))))))))
                                     (let* ((_%rest138993139001%_
                                             _%rest138989%_)
                                            (_%else138995139013%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147643
                                                            (lambda (_%g139008139010%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139008139010%_)))
                   (__tmp147642 (reverse _%loads138990%_)))
               (declare (not safe))
               (##map __tmp147643 __tmp147642)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K138997139030%_
                                             (lambda (_%rest139016%_
                                                      _%in139017%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in139017%_
                                                      'gx#module-context::t))
                                                   (_%K138992%_
                                                    _%in139017%_
                                                    _%rest139016%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in139017%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in139017%_
                               '3
                               '#f
                               '#f)))
                   (_%K138992%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in139017%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest139016%_)
                   (_%lp138987%_ _%rest139016%_ _%loads138990%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in139017%_
                      'gx#import-set::t))
                   (let ((_%phi139022%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in139017%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi139022%_)
                         (_%K138992%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in139017%_
                             '1
                             '#f
                             '#f))
                          _%rest139016%_)
                         (if (fxpositive? _%phi139022%_)
                             (let ((_%deps139026%_
                                    (_%import-set-template138949%_
                                     _%in139017%_
                                     '0)))
                               (_%lp138987%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest139016%_
                                   _%deps139026%_))
                                _%loads138990%_))
                             (_%lp138987%_ _%rest139016%_ _%loads138990%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx138947%_
                      _%in139017%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest138993139001%_))
                                           (let ((_%hd138998139033%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest138993139001%_)))
                                                 (_%tl138999139035%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest138993139001%_))))
                                             (let* ((_%in139038%_
                                                     _%hd138998139033%_)
                                                    (_%rest139040%_
                                                     _%tl138999139035%_))
                                               (_%K138997139030%_
                                                _%rest139040%_
                                                _%in139038%_)))
                                           (_%else138995139013%_)))))))
                             _%tl138956138971%_)))
                        (_%g138951138961%_ _%g138952138964%_)))))
            (_%g138950139049%_ _%stx138947%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138759%_ _%stx138760%_)
        (letrec ((_%add-lift!138762%_
                  (lambda (_%expr138944%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr138944%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138763%_
                  (lambda (_%id138941%_ _%marks138942%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id138941%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks138942%_
                                                        '()))))))))
                 (_%generate-simple138764%_
                  (lambda (_%stxq138936%_)
                    (let ((_%gid138938%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid138939%_
                           (gxc#generate-runtime-identifier _%stxq138936%_)))
                      (_%add-lift!138762%_
                       (cons 'define
                             (cons _%gid138938%_
                                   (cons (_%generate-syntax-quote138763%_
                                          _%qid138939%_
                                          ''())
                                         '()))))
                      (let ((__tmp147644
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147644 _%stxq138936%_ _%gid138938%_))
                      _%gid138938%_)))
                 (_%generate-serialized138765%_
                  (lambda (_%stxq138926%_ _%marks138927%_)
                    (let* ((_%mark-refs138929%_
                            (map _%generate-mark138766%_ _%marks138927%_))
                           (_%gid138931%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid138933%_
                            (gxc#generate-runtime-identifier _%stxq138926%_)))
                      (_%add-lift!138762%_
                       (cons 'define
                             (cons _%gid138931%_
                                   (cons (_%generate-syntax-quote138763%_
                                          _%qid138933%_
                                          (cons 'list _%mark-refs138929%_))
                                         '()))))
                      (let ((__tmp147645
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147645 _%stxq138926%_ _%gid138931%_))
                      _%gid138931%_)))
                 (_%generate-mark138766%_
                  (lambda (_%mark138911%_)
                    (let ((_%$e138913%_
                           (let ((__tmp147646
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147646 _%mark138911%_))))
                      (if _%$e138913%_
                          _%$e138913%_
                          (let* ((_%gid138917%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr138919%_
                                  (_%serialize-mark138767%_ _%mark138911%_))
                                 (_%ctx138921%_
                                  (let ((__tmp147647
                                         (##structure-ref
                                          _%mark138911%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147647)))
                                 (_%ctx-ref138923%_
                                  (if (eq? _%ctx138921%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138768%_
                                                               _%ctx138921%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147648
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147648
                               _%mark138911%_
                               _%gid138917%_))
                            (_%add-lift!138762%_
                             (cons 'define
                                   (cons _%gid138917%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr138919%_ '()))
                   (cons _%ctx-ref138923%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid138917%_)))))
                 (_%serialize-mark138767%_
                  (lambda (_%mark138858%_)
                    (letrec ((_%quote-e138860%_
                              (lambda (_%sym138909%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym138909%_))
                                    _%sym138909%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym138909%_))))))
                      (let* ((_%mark138861138870%_ _%mark138858%_)
                             (_%E138863138874%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark138861138870%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K138864138886%_
                              (lambda (_%trace138877%_
                                       _%phi138878%_
                                       _%ctx138879%_
                                       _%subst138880%_)
                                (let ((_%subs138882%_
                                       (if _%subst138880%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst138880%_))
                                           '())))
                                  (cons _%phi138878%_
                                        (map (lambda (_%pair138884%_)
                                               (cons (_%quote-e138860%_
                                                      (car _%pair138884%_))
                                                     (_%quote-e138860%_
                                                      (cdr _%pair138884%_))))
                                             _%subs138882%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark138861138870%_
                               'gx#expander-mark::t))
                            (let* ((_%e138865138889%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138861138870%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst138892%_ _%e138865138889%_)
                                   (_%e138866138894%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138861138870%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx138897%_ _%e138866138894%_)
                                   (_%e138867138899%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138861138870%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi138902%_ _%e138867138899%_)
                                   (_%e138868138904%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138861138870%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace138907%_ _%e138868138904%_))
                              (_%K138864138886%_
                               _%trace138907%_
                               _%phi138902%_
                               _%ctx138897%_
                               _%subst138892%_))
                            (_%E138863138874%_))))))
                 (_%context-ref138768%_
                  (lambda (_%ctx138845%_)
                    (if (let ((__tmp147649
                               (##structure-ref
                                _%ctx138845%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147649
                           'gx#module-context::t))
                        (let ((_%ctx-ref138847%_
                               (_%context-ref-nested138770%_ _%ctx138845%_))
                              (_%ctx-origin138848%_
                               (_%context-ref-origin138769%_ _%ctx138845%_))
                              (_%origin138849%_
                               (_%context-ref-origin138769%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin138849%_ _%ctx-origin138848%_)
                              (let ((_%ref138851%_
                                     (_%context-ref-nested138770%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp138853%_ ((_%ref138855%_
                                                    (cdr _%ref138851%_))
                                                   (_%ctx-ref138856%_
                                                    (cdr _%ctx-ref138847%_)))
                                  (if (and (pair? _%ref138855%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref138855%_))
                                                (car _%ctx-ref138856%_)))
                                      (_%lp138853%_
                                       (cdr _%ref138855%_)
                                       (cdr _%ctx-ref138856%_))
                                      (cons '#f _%ctx-ref138856%_))))
                              _%ctx-ref138847%_))
                        (let ((__tmp147650
                               (##structure-ref
                                _%ctx138845%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147650)))))
                 (_%context-ref-origin138769%_
                  (lambda (_%ctx138837%_)
                    (let _%lp138839%_ ((_%ctx138841%_ _%ctx138837%_))
                      (let ((_%super138843%_
                             (##structure-ref
                              _%ctx138841%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138843%_
                               'gx#module-context::t))
                            (_%lp138839%_ _%super138843%_)
                            _%ctx138841%_)))))
                 (_%context-ref-nested138770%_
                  (lambda (_%ctx138828%_)
                    (let _%lp138830%_ ((_%ctx138832%_ _%ctx138828%_)
                                       (_%r138833%_ '()))
                      (let ((_%super138835%_
                             (##structure-ref
                              _%ctx138832%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138835%_
                               'gx#module-context::t))
                            (_%lp138830%_
                             _%super138835%_
                             (cons (car (##structure-ref
                                         _%ctx138832%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r138833%_))
                            (cons (let ((__tmp147651
                                         (##structure-ref
                                          _%ctx138832%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147651))
                                  _%r138833%_)))))))
          (let* ((_%g138772138785%_
                  (lambda (_%g138773138782%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138773138782%_))))
                 (_%g138771138825%_
                  (lambda (_%g138773138788%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138773138788%_))
                        (let ((_%e138775138790%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138773138788%_))))
                          (let ((_%hd138776138793%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138775138790%_)))
                                (_%tl138777138795%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138775138790%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138777138795%_))
                                (let ((_%e138778138798%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138777138795%_))))
                                  (let ((_%hd138779138801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138778138798%_)))
                                        (_%tl138780138803%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138778138798%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138780138803%_))
                                        ((lambda (_%L138806%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L138806%_))
                                               (let ((_%$e138819%_
                                                      (let ((__tmp147652
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147652 _%L138806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e138819%_
                                                     _%$e138819%_
                                                     (let ((_%marks138823%_
                                                            (##direct-structure-ref
                                                             _%L138806%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks138823%_)
                                                           (_%generate-simple138764%_
                                                            _%L138806%_)
                                                           (_%generate-serialized138765%_
                                                            _%L138806%_
                                                            _%marks138823%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L138806%_))))
                                         _%hd138779138801%_)
                                        (_%g138772138785%_
                                         _%g138773138788%_))))
                                (_%g138772138785%_ _%g138773138788%_))))
                        (_%g138772138785%_ _%g138773138788%_)))))
            (_%g138771138825%_ _%stx138760%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138691%_ _%stx138692%_)
        (let* ((_%g138694138711%_
                (lambda (_%g138695138708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138695138708%_))))
               (_%g138693138756%_
                (lambda (_%g138695138714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138695138714%_))
                      (let ((_%e138698138716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138695138714%_))))
                        (let ((_%hd138699138719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138698138716%_)))
                              (_%tl138700138721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138698138716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138700138721%_))
                              (let ((_%e138701138724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138700138721%_))))
                                (let ((_%hd138702138727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138701138724%_)))
                                      (_%tl138703138729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138701138724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138703138729%_))
                                      (let ((_%e138704138732%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138703138729%_))))
                                        (let ((_%hd138705138735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138704138732%_)))
                                              (_%tl138706138737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138704138732%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138706138737%_))
                                              ((lambda (_%L138740%_
                                                        _%L138741%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138741%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138691%_ _%L138740%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138705138735%_
                                               _%hd138702138727%_)
                                              (_%g138694138711%_
                                               _%g138695138714%_))))
                                      (_%g138694138711%_ _%g138695138714%_))))
                              (_%g138694138711%_ _%g138695138714%_))))
                      (_%g138694138711%_ _%g138695138714%_)))))
          (_%g138693138756%_ _%stx138692%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138640%_ _%stx138641%_)
        (let* ((_%g138643138653%_
                (lambda (_%g138644138650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138644138650%_))))
               (_%g138642138688%_
                (lambda (_%g138644138656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138644138656%_))
                      (let ((_%e138646138658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138644138656%_))))
                        (let ((_%hd138647138661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138646138658%_)))
                              (_%tl138648138663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138646138658%_))))
                          ((lambda (_%L138666%_)
                             (let* ((_%c-body138680%_
                                     (map (lambda (_%g138675138677%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138640%_
                                               _%g138675138677%_)))
                                          _%L138666%_))
                                    (_%c-body138685%_
                                     (let ((__tmp147653
                                            (lambda (_%$obj138682%_)
                                              (not (eq? _%$obj138682%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147653
                                        _%c-body138680%_))))
                               (cons '%#begin _%c-body138685%_)))
                           _%tl138648138663%_)))
                      (_%g138643138653%_ _%g138644138656%_)))))
          (_%g138642138688%_ _%stx138641%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138545%_ _%stx138546%_)
        (let* ((_%g138548138558%_
                (lambda (_%g138549138555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138549138555%_))))
               (_%g138547138637%_
                (lambda (_%g138549138561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138549138561%_))
                      (let ((_%e138551138563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138549138561%_))))
                        (let ((_%hd138552138566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138551138563%_)))
                              (_%tl138553138568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138551138563%_))))
                          ((lambda (_%L138571%_)
                             (let* ((_%phi138581%_
                                     (let ((__tmp147654
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147654 '1)))
                                    (_%block138583%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138545%_ 'state))
                                      _%phi138581%_))
                                    (_%compiled138586%_
                                     (let ((__tmp147655
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138545%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138571%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147655
                                        gx#current-expander-phi
                                        _%phi138581%_)))
                                    (_%g138589138599%_
                                     (lambda (_%g138590138596%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138590138596%_))))
                                    (_%g138588138634%_
                                     (lambda (_%g138590138602%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138590138602%_))
                                           (let ((_%e138592138604%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138590138602%_))))
                                             (let ((_%hd138593138607%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138592138604%_)))
                                                   (_%tl138594138609%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138592138604%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138593138607%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138593138607%_))
                                                       ((lambda (_%L138612%_)
                                                          (let ((_%c-body138629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138626%_)
                                   (not (eq? _%$obj138626%_ '#!void)))
                                 _%L138612%_)))
                    (if _%block138583%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138629%_))
                        (if (null? _%c-body138629%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138629%_)))))
                _%tl138594138609%_)
               (_%g138589138599%_ _%g138590138602%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138589138599%_
                                                    _%g138590138602%_))))
                                           (_%g138589138599%_
                                            _%g138590138602%_)))))
                               (_%g138588138634%_ _%compiled138586%_)))
                           _%tl138553138568%_)))
                      (_%g138548138558%_ _%g138549138561%_)))))
          (_%g138547138637%_ _%stx138546%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138476%_ _%stx138477%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138476%_ 'state)))
        (let* ((_%g138479138493%_
                (lambda (_%g138480138490%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138480138490%_))))
               (_%g138478138542%_
                (lambda (_%g138480138496%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138480138496%_))
                      (let ((_%e138483138498%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138480138496%_))))
                        (let ((_%hd138484138501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138483138498%_)))
                              (_%tl138485138503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138483138498%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138485138503%_))
                              (let ((_%e138486138506%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138485138503%_))))
                                (let ((_%hd138487138509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138486138506%_)))
                                      (_%tl138488138511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138486138506%_))))
                                  ((lambda (_%L138514%_ _%L138515%_)
                                     (let ((_%key138528%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138515%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138528%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138477%_
                                              _%L138515%_
                                              _%key138528%_)))
                                       (let* ((_%ctx138530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138515%_)))
                                              (_%code138533%_
                                               (let ((__tmp147656
                                                      (lambda ()
                                                        (let ((__tmp147657
                                                               (##structure-ref
                                                                _%ctx138530%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138476%_
                                                           __tmp147657)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147656
                                                  gx#current-expander-context
                                                  _%ctx138530%_)))
                                              (_%rt138535%_
                                               (let ((__tmp147658
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147658
                                                  _%ctx138530%_)))
                                              (_%loader138537%_
                                               (if _%rt138535%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138535%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138515%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138476%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138539%_
                                                     (cons _%code138533%_
                                                           _%loader138537%_))))))
                                   _%tl138488138511%_
                                   _%hd138487138509%_)))
                              (_%g138479138493%_ _%g138480138496%_))))
                      (_%g138479138493%_ _%g138480138496%_)))))
          (_%g138478138542%_ _%stx138477%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138463%_ _%context-chain138464%_)
        (let _%lp138466%_ ((_%ctx138468%_ _%ctx138463%_) (_%path138469%_ '()))
          (let ((_%super138471%_
                 (##structure-ref _%ctx138468%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138471%_ _%context-chain138464%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138468%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138469%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138471%_
                       'gx#module-context::t))
                    (_%lp138466%_
                     _%super138471%_
                     (cons (car (##structure-ref
                                 _%ctx138468%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138469%_))
                    (cons (let ((__tmp147659
                                 (##structure-ref
                                  _%ctx138468%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147659))
                          _%path138469%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp138456%_ ((_%ctx138458%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r138459%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx138458%_ 'gx#module-context::t))
              (_%lp138456%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx138458%_ '3 '#f '#f))
               (cons _%ctx138458%_ _%r138459%_))
              _%r138459%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self138219%_ _%stx138220%_)
        (letrec* ((_%context-chain138222%_ (gxc#current-context-chain))
                  (_%make-import-spec138223%_
                   (lambda (_%in138392%_)
                     (let* ((_%in138393138405%_ _%in138392%_)
                            (_%E138395138409%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in138393138405%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K138396138419%_
                             (lambda (_%phi138412%_
                                      _%name138413%_
                                      _%src-name138414%_
                                      _%src-phi138415%_
                                      _%src-key138416%_
                                      _%src-ctx138417%_)
                               (cons _%phi138412%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name138413%_)
                                           (cons _%src-phi138415%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name138414%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in138393138405%_
                              'gx#module-import::t))
                           (let ((_%e138397138422%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in138393138405%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e138397138422%_
                                    'gx#module-export::t))
                                 (let* ((_%e138400138425%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138397138422%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx138428%_ _%e138400138425%_)
                                        (_%e138401138430%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138397138422%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key138433%_ _%e138401138430%_)
                                        (_%e138402138435%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138397138422%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi138438%_ _%e138402138435%_)
                                        (_%e138403138440%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138397138422%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name138443%_ _%e138403138440%_)
                                        (_%e138398138445%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138393138405%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name138448%_ _%e138398138445%_)
                                        (_%e138399138450%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138393138405%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi138453%_ _%e138399138450%_))
                                   (_%K138396138419%_
                                    _%phi138453%_
                                    _%name138448%_
                                    _%src-name138443%_
                                    _%src-phi138438%_
                                    _%src-key138433%_
                                    _%src-ctx138428%_))
                                 (_%E138395138409%_)))
                           (_%E138395138409%_)))))
                  (_%make-import-path138224%_
                   (lambda (_%ctx138390%_)
                     (gxc#generate-meta-import-path
                      _%ctx138390%_
                      _%context-chain138222%_)))
                  (_%make-import-spec-in138225%_
                   (lambda (_%ctx138387%_ _%in138388%_)
                     (cons 'spec:
                           (cons (_%make-import-path138224%_ _%ctx138387%_)
                                 (reverse _%in138388%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self138219%_ 'state)))
          (let* ((_%g138227138237%_
                  (lambda (_%g138228138234%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138228138234%_))))
                 (_%g138226138384%_
                  (lambda (_%g138228138240%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138228138240%_))
                        (let ((_%e138230138242%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138228138240%_))))
                          (let ((_%hd138231138245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138230138242%_)))
                                (_%tl138232138247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138230138242%_))))
                            ((lambda (_%L138250%_)
                               (let _%lp138261%_ ((_%rest138263%_ _%L138250%_)
                                                  (_%current-src138264%_ '#f)
                                                  (_%current-in138265%_ '())
                                                  (_%r138266%_ '()))
                                 (let* ((_%rest138267138275%_ _%rest138263%_)
                                        (_%else138269138285%_
                                         (lambda ()
                                           (let ((_%r138283%_
                                                  (if _%current-src138264%_
                                                      (cons (_%make-import-spec-in138225%_
                                                             _%current-src138264%_
                                                             _%current-in138265%_)
                                                            _%r138266%_)
                                                      _%r138266%_)))
                                             (cons '%#import
                                                   (reverse _%r138283%_)))))
                                        (_%K138271138372%_
                                         (lambda (_%rest138288%_ _%in138289%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in138289%_
                                                  'gx#module-import::t))
                                               (let* ((_%in138291138298%_
                                                       _%in138289%_)
                                                      (_%E138293138302%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in138291138298%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K138294138310%_
               (lambda (_%src-ctx138305%_)
                 (if (eq? _%current-src138264%_ _%src-ctx138305%_)
                     (_%lp138261%_
                      _%rest138288%_
                      _%current-src138264%_
                      (cons (_%make-import-spec138223%_ _%in138289%_)
                            _%current-in138265%_)
                      _%r138266%_)
                     (if _%current-src138264%_
                         (_%lp138261%_
                          _%rest138288%_
                          _%src-ctx138305%_
                          (cons (_%make-import-spec138223%_ _%in138289%_) '())
                          (cons (_%make-import-spec-in138225%_
                                 _%current-src138264%_
                                 _%current-in138265%_)
                                _%r138266%_))
                         (_%lp138261%_
                          _%rest138288%_
                          _%src-ctx138305%_
                          (cons (_%make-import-spec138223%_ _%in138289%_) '())
                          _%r138266%_)))))
              (_%e138295138313%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in138291138298%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e138295138313%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e138296138316%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e138295138313%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx138319%_ _%e138296138316%_))
               (_%K138294138310%_ _%src-ctx138319%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E138293138302%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in138289%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi138322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138289%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src138324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138289%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in138364%_
                                                           (let* ((_%g138325138334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path138224%_ _%src138324%_))
                          (_%E138328138338%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g138325138334%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K138330138354%_
                            (lambda (_%path138352%_) _%path138352%_))
                           (_%K138329138344%_
                            (lambda (_%path138342%_)
                              (cons 'in: _%path138342%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g138325138334%_))
                           (let ((_%tl138332138359%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g138325138334%_)))
                                 (_%hd138331138357%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g138325138334%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl138332138359%_))
                                 (let ((_%path138362%_ _%hd138331138357%_))
                                   (_%K138330138354%_ _%path138362%_))
                                 (let ((_%path138347%_ _%g138325138334%_))
                                   (_%K138329138344%_ _%path138347%_))))
                           (let ((_%path138347%_ _%g138325138334%_))
                             (_%K138329138344%_ _%path138347%_))))))
                  (_%r138366%_
                   (if _%current-src138264%_
                       (cons (_%make-import-spec-in138225%_
                              _%current-src138264%_
                              _%current-in138265%_)
                             _%r138266%_)
                       _%r138266%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp138261%_
                                                      _%rest138288%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi138322%_)
                                                                _%src-in138364%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi138322%_
                                    (cons _%src-in138364%_ '()))))
                    _%r138366%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in138289%_
                                                          'gx#module-context::t))
                                                       (let ((_%r138370%_
                                                              (if _%current-src138264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in138225%_
                                 _%current-src138264%_
                                 _%current-in138265%_)
                                _%r138266%_)
                          _%r138266%_)))
                 (_%lp138261%_
                  _%rest138288%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path138224%_ _%in138289%_))
                        _%r138370%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138267138275%_))
                                       (let ((_%hd138272138375%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138267138275%_)))
                                             (_%tl138273138377%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138267138275%_))))
                                         (let* ((_%in138380%_
                                                 _%hd138272138375%_)
                                                (_%rest138382%_
                                                 _%tl138273138377%_))
                                           (_%K138271138372%_
                                            _%rest138382%_
                                            _%in138380%_)))
                                       (_%else138269138285%_)))))
                             _%tl138232138247%_)))
                        (_%g138227138237%_ _%g138228138240%_)))))
            (_%g138226138384%_ _%stx138220%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self138029%_ _%stx138030%_)
        (letrec* ((_%context-chain138032%_ (gxc#current-context-chain))
                  (_%make-import-path138033%_
                   (lambda (_%ctx138217%_)
                     (gxc#generate-meta-import-path
                      _%ctx138217%_
                      _%context-chain138032%_))))
          (let* ((_%g138035138045%_
                  (lambda (_%g138036138042%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138036138042%_))))
                 (_%g138034138214%_
                  (lambda (_%g138036138048%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138036138048%_))
                        (let ((_%e138038138050%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138036138048%_))))
                          (let ((_%hd138039138053%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138038138050%_)))
                                (_%tl138040138055%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138038138050%_))))
                            ((lambda (_%L138058%_)
                               (let _%lp138069%_ ((_%rest138071%_ _%L138058%_)
                                                  (_%r138072%_ '()))
                                 (let* ((_%rest138073138081%_ _%rest138071%_)
                                        (_%else138075138089%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r138072%_))))
                                        (_%K138077138202%_
                                         (lambda (_%rest138092%_ _%out138093%_)
                                           (let* ((_%out138094138107%_
                                                   _%out138093%_)
                                                  (_%E138097138111%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out138094138107%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K138101138181%_
                                                    (lambda (_%name138177%_
                                                             _%phi138178%_
                                                             _%key138179%_)
                                                      (_%lp138069%_
                                                       _%rest138092%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi138178%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key138179%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name138177%_)
                                             '()))))
                     _%r138072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K138098138161%_
                                                    (lambda (_%phi138115%_
                                                             _%src138116%_)
                                                      (let* ((_%out138156%_
                                                              (if _%src138116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g138117138126%_
                                              (_%make-import-path138033%_
                                               _%src138116%_))
                                             (_%E138120138130%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g138117138126%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K138122138146%_
                                               (lambda (_%path138144%_)
                                                 _%path138144%_))
                                              (_%K138121138136%_
                                               (lambda (_%path138134%_)
                                                 (cons 'in: _%path138134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g138117138126%_))
                                              (let ((_%tl138124138151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g138117138126%_)))
                                                    (_%hd138123138149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g138117138126%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138124138151%_))
                                                    (let ((_%path138154%_
                                                           _%hd138123138149%_))
                                                      (_%K138122138146%_
                                                       _%path138154%_))
                                                    (let ((_%path138139%_
                                                           _%g138117138126%_))
                                                      (_%K138121138136%_
                                                       _%path138139%_))))
                                              (let ((_%path138139%_
                                                     _%g138117138126%_))
                                                (_%K138121138136%_
                                                 _%path138139%_)))))
                                      '()))
                          '#t))
                     (_%out138158%_
                      (if (fxzero? _%phi138115%_)
                          _%out138156%_
                          (cons 'phi:
                                (cons _%phi138115%_
                                      (cons _%out138156%_ '()))))))
                (_%lp138069%_
                 _%rest138092%_
                 (cons _%out138158%_ _%r138072%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match138096138174%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out138094138107%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e138099138164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out138094138107%_
                               '1
                               '#f
                               '#f)))
                           (_%e138100138169%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out138094138107%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src138167%_ _%e138099138164%_)
                            (_%phi138172%_ _%e138100138169%_))
                        (_%K138098138161%_ _%phi138172%_ _%src138167%_)))
                    (_%E138097138111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out138094138107%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e138102138184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out138094138107%_
                        '1
                        '#f
                        '#f)))
                    (_%e138103138187%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138094138107%_
                        '2
                        '#f
                        '#f)))
                    (_%e138104138192%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138094138107%_
                        '3
                        '#f
                        '#f)))
                    (_%e138105138197%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138094138107%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key138190%_ _%e138103138187%_)
                     (_%phi138195%_ _%e138104138192%_)
                     (_%name138200%_ _%e138105138197%_))
                 (_%K138101138181%_
                  _%name138200%_
                  _%phi138195%_
                  _%key138190%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match138096138174%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138073138081%_))
                                       (let ((_%hd138078138205%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138073138081%_)))
                                             (_%tl138079138207%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138073138081%_))))
                                         (let* ((_%out138210%_
                                                 _%hd138078138205%_)
                                                (_%rest138212%_
                                                 _%tl138079138207%_))
                                           (_%K138077138202%_
                                            _%rest138212%_
                                            _%out138210%_)))
                                       (_%else138075138089%_)))))
                             _%tl138040138055%_)))
                        (_%g138035138045%_ _%g138036138048%_)))))
            (_%g138034138214%_ _%stx138030%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self137990%_ _%stx137991%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137990%_ 'state)))
        (let* ((_%g137993138003%_
                (lambda (_%g137994138000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137994138000%_))))
               (_%g137992138026%_
                (lambda (_%g137994138006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137994138006%_))
                      (let ((_%e137996138008%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137994138006%_))))
                        (let ((_%hd137997138011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137996138008%_)))
                              (_%tl137998138013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137996138008%_))))
                          ((lambda (_%L138016%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L138016%_)))
                           _%tl137998138013%_)))
                      (_%g137993138003%_ _%g137994138006%_)))))
          (_%g137992138026%_ _%stx137991%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self137861%_ _%stx137862%_)
        (letrec ((_%generate1137864%_
                  (lambda (_%id137985%_ _%eid137986%_)
                    (let ((_%eid137988%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid137986%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid137988%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx137862%_
                             _%eid137988%_)))
                      (cons (gxc#generate-runtime-identifier _%id137985%_)
                            (cons _%eid137988%_ '()))))))
          (let* ((_%g137866137894%_
                  (lambda (_%g137867137891%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137867137891%_))))
                 (_%g137865137982%_
                  (lambda (_%g137867137897%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137867137897%_))
                        (let ((_%e137870137899%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137867137897%_))))
                          (let ((_%hd137871137902%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137870137899%_)))
                                (_%tl137872137904%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137870137899%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl137872137904%_))
                                (let ((_g147660_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl137872137904%_
                                          '0))))
                                  (begin
                                    (let ((_g147661_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147660_)
                                                 (##vector-length _g147660_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147661_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147661_)))
                                    (let ((_%target137873137907%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147660_ 0)))
                                          (_%tl137875137909%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147660_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137875137909%_))
                                          (letrec ((_%loop137876137912%_
                                                    (lambda (_%hd137874137915%_
                                                             _%eid137880137917%_
                                                             _%id137881137919%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd137874137915%_))
                                                          (let ((_%e137877137922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd137874137915%_))))
                    (let ((_%lp-hd137878137925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137877137922%_)))
                          (_%lp-tl137879137927%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137877137922%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd137878137925%_))
                          (let ((_%e137884137930%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd137878137925%_))))
                            (let ((_%hd137885137933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137884137930%_)))
                                  (_%tl137886137935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137884137930%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl137886137935%_))
                                  (let ((_%e137887137938%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl137886137935%_))))
                                    (let ((_%hd137888137941%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137887137938%_)))
                                          (_%tl137889137943%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137887137938%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137889137943%_))
                                          (_%loop137876137912%_
                                           _%lp-tl137879137927%_
                                           (cons _%hd137888137941%_
                                                 _%eid137880137917%_)
                                           (cons _%hd137885137933%_
                                                 _%id137881137919%_))
                                          (_%g137866137894%_
                                           _%g137867137897%_))))
                                  (_%g137866137894%_ _%g137867137897%_))))
                          (_%g137866137894%_ _%g137867137897%_))))
                  (let ((_%eid137882137946%_ (reverse _%eid137880137917%_))
                        (_%id137883137948%_ (reverse _%id137881137919%_)))
                    ((lambda (_%L137951%_ _%L137952%_)
                       (cons '%#extern
                             (map _%generate1137864%_
                                  (let ((__tmp147662
                                         (lambda (_%g137967137970%_
                                                  _%g137968137972%_)
                                           (cons _%g137967137970%_
                                                 _%g137968137972%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147662 '() _%L137952%_))
                                  (let ((__tmp147663
                                         (lambda (_%g137974137977%_
                                                  _%g137975137979%_)
                                           (cons _%g137974137977%_
                                                 _%g137975137979%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147663 '() _%L137951%_)))))
                     _%eid137882137946%_
                     _%id137883137948%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop137876137912%_
                                             _%target137873137907%_
                                             '()
                                             '()))
                                          (_%g137866137894%_
                                           _%g137867137897%_)))))
                                (_%g137866137894%_ _%g137867137897%_))))
                        (_%g137866137894%_ _%g137867137897%_)))))
            (_%g137865137982%_ _%stx137862%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137651%_ _%stx137652%_)
        (letrec ((_%generate1137654%_
                  (lambda (_%id137856%_)
                    (let ((_%eid137858%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id137856%_)))
                          (_%ident137859%_
                           (gxc#generate-runtime-identifier _%id137856%_)))
                      (cons '%#define-runtime
                            (cons _%ident137859%_ (cons _%eid137858%_ '()))))))
                 (_%generate*137655%_
                  (lambda (_%all137824%_)
                    (let* ((_%all137825137833%_ _%all137824%_)
                           (_%else137827137841%_
                            (lambda () (cons '%#begin _%all137824%_)))
                           (_%K137829137846%_
                            (lambda (_%one137844%_) _%one137844%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all137825137833%_))
                          (let ((_%hd137830137849%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all137825137833%_)))
                                (_%tl137831137851%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all137825137833%_))))
                            (let ((_%one137854%_ _%hd137830137849%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl137831137851%_))
                                  (_%K137829137846%_ _%one137854%_)
                                  (_%else137827137841%_))))
                          (_%else137827137841%_))))))
          (let* ((_%g137657137674%_
                  (lambda (_%g137658137671%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137658137671%_))))
                 (_%g137656137821%_
                  (lambda (_%g137658137677%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137658137677%_))
                        (let ((_%e137661137679%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137658137677%_))))
                          (let ((_%hd137662137682%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137661137679%_)))
                                (_%tl137663137684%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137661137679%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137663137684%_))
                                (let ((_%e137664137687%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137663137684%_))))
                                  (let ((_%hd137665137690%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137664137687%_)))
                                        (_%tl137666137692%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137664137687%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137666137692%_))
                                        (let ((_%e137667137695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137666137692%_))))
                                          (let ((_%hd137668137698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137667137695%_)))
                                                (_%tl137669137700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137667137695%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137669137700%_))
                                                ((lambda (_%L137703%_
                                                          _%L137704%_)
                                                   (let _%lp137720%_ ((_%rest137722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137704%_)
                              (_%r137723%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx147399147400%_
                                                             _%rest137722%_)
                                                            (_%g137728137745%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx147399147400%_)))))
               (let ((_%__kont147401147402%_
                      (lambda (_%L137808%_)
                        (_%lp137720%_ _%L137808%_ _%r137723%_)))
                     (_%__kont147403147404%_
                      (lambda (_%L137781%_ _%L137782%_)
                        (_%lp137720%_
                         _%L137781%_
                         (cons (_%generate1137654%_ _%L137782%_)
                               _%r137723%_))))
                     (_%__kont147405147406%_
                      (lambda (_%L137757%_)
                        (_%generate*137655%_
                         (let ((__tmp147664
                                (cons (_%generate1137654%_ _%L137757%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147664 _%r137723%_)))))
                     (_%__kont147407147408%_
                      (lambda () (_%generate*137655%_ (reverse _%r137723%_)))))
                 (let ((_%g137726137768%_
                        (lambda ()
                          (let ((_%L137757%_ _%__stx147399147400%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137757%_))
                                (_%__kont147405147406%_ _%L137757%_)
                                (_%__kont147407147408%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx147399147400%_))
                       (let ((_%e137731137797%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx147399147400%_))))
                         (let ((_%tl137733137802%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137731137797%_)))
                               (_%hd137732137800%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137731137797%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137732137800%_))
                               (let ((_%e137734137805%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137732137800%_))))
                                 (if (equal? _%e137734137805%_ '#f)
                                     (_%__kont147401147402%_
                                      _%tl137733137802%_)
                                     (_%__kont147403147404%_
                                      _%tl137733137802%_
                                      _%hd137732137800%_)))
                               (_%__kont147403147404%_
                                _%tl137733137802%_
                                _%hd137732137800%_))))
                       (let () (declare (not safe)) (_%g137726137768%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137668137698%_
                                                 _%hd137665137690%_)
                                                (_%g137657137674%_
                                                 _%g137658137677%_))))
                                        (_%g137657137674%_
                                         _%g137658137677%_))))
                                (_%g137657137674%_ _%g137658137677%_))))
                        (_%g137657137674%_ _%g137658137677%_)))))
            (_%g137656137821%_ _%stx137652%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137548%_ _%stx137549%_)
        (let* ((_%g137551137568%_
                (lambda (_%g137552137565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137552137565%_))))
               (_%g137550137648%_
                (lambda (_%g137552137571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137552137571%_))
                      (let ((_%e137555137573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137552137571%_))))
                        (let ((_%hd137556137576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137555137573%_)))
                              (_%tl137557137578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137555137573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137557137578%_))
                              (let ((_%e137558137581%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137557137578%_))))
                                (let ((_%hd137559137584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137558137581%_)))
                                      (_%tl137560137586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137558137581%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137560137586%_))
                                      (let ((_%e137561137589%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137560137586%_))))
                                        (let ((_%hd137562137592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137561137589%_)))
                                              (_%tl137563137594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137561137589%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137563137594%_))
                                              ((lambda (_%L137597%_
                                                        _%L137598%_)
                                                 (let* ((_%eid137613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137598%_)))
                                                        (_%phi137615%_
                                                         (let ((__tmp147665
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147665 '1)))
                (_%block137617%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137548%_ 'state))
                  _%phi137615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137620137627%_
                                                           (lambda (_%g137621137624%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137621137624%_))))
                  (_%g137619137645%_
                   (lambda (_%g137621137630%_)
                     ((lambda (_%L137632%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137548%_ 'state))
                         _%phi137615%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137632%_ (cons _%L137597%_ '())))))
                      _%g137621137630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137619137645%_
                                                      _%eid137613%_))
                                                   (if _%block137617%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137598%_)
                                             (cons _%eid137613%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137598%_)
                           (cons _%eid137613%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137562137592%_
                                               _%hd137559137584%_)
                                              (_%g137551137568%_
                                               _%g137552137571%_))))
                                      (_%g137551137568%_ _%g137552137571%_))))
                              (_%g137551137568%_ _%g137552137571%_))))
                      (_%g137551137568%_ _%g137552137571%_)))))
          (_%g137550137648%_ _%stx137549%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137480%_ _%stx137481%_)
        (let* ((_%g137483137500%_
                (lambda (_%g137484137497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137484137497%_))))
               (_%g137482137545%_
                (lambda (_%g137484137503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137484137503%_))
                      (let ((_%e137487137505%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137484137503%_))))
                        (let ((_%hd137488137508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137487137505%_)))
                              (_%tl137489137510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137487137505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137489137510%_))
                              (let ((_%e137490137513%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137489137510%_))))
                                (let ((_%hd137491137516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137490137513%_)))
                                      (_%tl137492137518%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137490137513%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137492137518%_))
                                      (let ((_%e137493137521%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137492137518%_))))
                                        (let ((_%hd137494137524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137493137521%_)))
                                              (_%tl137495137526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137493137521%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137495137526%_))
                                              ((lambda (_%L137529%_
                                                        _%L137530%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137530%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137529%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137494137524%_
                                               _%hd137491137516%_)
                                              (_%g137483137500%_
                                               _%g137484137503%_))))
                                      (_%g137483137500%_ _%g137484137503%_))))
                              (_%g137483137500%_ _%g137484137503%_))))
                      (_%g137483137500%_ _%g137484137503%_)))))
          (_%g137482137545%_ _%stx137481%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137477%_ _%stx137478%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137477%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137478%_)
        (gxc#generate-meta-define-values% _%self137477%_ _%stx137478%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137474%_ _%stx137475%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137474%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137475%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147667 (list)) (__tmp147666 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147667
         '(src n open blocks)
         __tmp147666
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137471%_
        (apply make-instance gxc#meta-state::t _%$args137471%_)))
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
      (lambda (_%self136816137455%_ _%ctx137457%_)
        (let* ((_%self137459%_ _%self136816137455%_)
               (_%self137461%_ _%self137459%_))
          (if (let ((__tmp147668
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137461%_))))
                (declare (not safe))
                (##fx< '4 __tmp147668))
              (begin
                (let ((__tmp147669
                       (let ((__tmp147670
                              (##structure-ref
                               _%ctx137457%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147670))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137461%_
                   __tmp147669
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137461%_ '1 '2 '#f '#f))
                (let ((__tmp147671
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137461%_
                   __tmp147671
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137461%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147672
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137461%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137461%_
                       '4
                       __tmp147672))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147674 (list)) (__tmp147673 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147674
         '(ctx phi n code)
         __tmp147673
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args137330%_
        (apply make-instance gxc#meta-state-block::t _%$args137330%_)))
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
      (lambda (_%state137289%_ _%phi137290%_)
        (let* ((_%state137291137299%_ _%state137289%_)
               (_%E137293137303%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state137291137299%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K137294137312%_
                (lambda (_%open137306%_ _%n137307%_ _%src137308%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open137306%_ _%phi137290%_))
                      '#f
                      (let ((_%block-ref137310%_
                             (let ((__tmp147675 (number->string _%n137307%_)))
                               (declare (not safe))
                               (##string-append
                                _%src137308%_
                                '"~"
                                __tmp147675))))
                        (##structure-set!
                         _%state137289%_
                         (let () (declare (not safe)) (##fx+ _%n137307%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147676
                               (let ((__tmp147677
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147677
                                  _%phi137290%_
                                  _%n137307%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open137306%_ _%phi137290%_ __tmp147676))
                        _%block-ref137310%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state137291137299%_
                 'gxc#meta-state::t))
              (let* ((_%e137295137315%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137291137299%_
                         '1
                         '#f
                         '#f)))
                     (_%src137318%_ _%e137295137315%_)
                     (_%e137296137320%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137291137299%_
                         '2
                         '#f
                         '#f)))
                     (_%n137323%_ _%e137296137320%_)
                     (_%e137297137325%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137291137299%_
                         '3
                         '#f
                         '#f)))
                     (_%open137328%_ _%e137297137325%_))
                (_%K137294137312%_ _%open137328%_ _%n137323%_ _%src137318%_))
              (_%E137293137303%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state137283%_ _%phi137284%_ _%stx137285%_)
        (let ((_%block137287%_
               (let ((__tmp147678
                      (##structure-ref
                       _%state137283%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147678 _%phi137284%_))))
          (##structure-set!
           _%block137287%_
           (cons _%stx137285%_
                 (##structure-ref
                  _%block137287%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state137277%_)
        (##structure-set!
         _%state137277%_
         (let ((__tmp147681
                (lambda (_%_137279%_ _%block137280%_ _%r137281%_)
                  (cons _%block137280%_ _%r137281%_)))
               (__tmp147680
                (##structure-ref _%state137277%_ '4 gxc#meta-state::t '#f))
               (__tmp147679
                (##structure-ref _%state137277%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147681 __tmp147680 __tmp147679))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state137277%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state137229%_)
        (gxc#meta-state-end-phi! _%state137229%_)
        (let ((__tmp147683
               (lambda (_%block137231%_ _%r137232%_)
                 (let* ((_%block137233137242%_ _%block137231%_)
                        (_%E137235137246%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block137233137242%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K137236137254%_
                         (lambda (_%code137249%_
                                  _%n137250%_
                                  _%phi137251%_
                                  _%ctx137252%_)
                           (if (null? _%code137249%_)
                               _%r137232%_
                               (cons (cons _%ctx137252%_
                                           (cons _%phi137251%_
                                                 (cons _%n137250%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code137249%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r137232%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block137233137242%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e137237137257%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137233137242%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx137260%_ _%e137237137257%_)
                              (_%e137238137262%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137233137242%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi137265%_ _%e137238137262%_)
                              (_%e137239137267%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137233137242%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n137270%_ _%e137239137267%_)
                              (_%e137240137272%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137233137242%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code137275%_ _%e137240137272%_))
                         (_%K137236137254%_
                          _%code137275%_
                          _%n137270%_
                          _%phi137265%_
                          _%ctx137260%_))
                       (_%E137235137246%_)))))
              (__tmp147682
               (##structure-ref _%state137229%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147683 '() __tmp147682))))
    (define gxc#collect-expression-refs
      (lambda (_%stx137225%_)
        (let ((_%ht137227%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht137227%_ _%stx137225%_)
          _%ht137227%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self137168%_ _%stx137169%_)
        (let* ((_%g137171137184%_
                (lambda (_%g137172137181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137172137181%_))))
               (_%g137170137222%_
                (lambda (_%g137172137187%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137172137187%_))
                      (let ((_%e137174137189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137172137187%_))))
                        (let ((_%hd137175137192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137174137189%_)))
                              (_%tl137176137194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137174137189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137176137194%_))
                              (let ((_%e137177137197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137176137194%_))))
                                (let ((_%hd137178137200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137177137197%_)))
                                      (_%tl137179137202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137177137197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137179137202%_))
                                      ((lambda (_%L137205%_)
                                         (let* ((_%bind137217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L137205%_)))
                                                (_%eid137219%_
                                                 (if _%bind137217%_
                                                     (##structure-ref
                                                      _%bind137217%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L137205%_))))
                                                (__tmp147684
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self137168%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147684
                                            _%eid137219%_
                                            _%eid137219%_)))
                                       _%hd137178137200%_)
                                      (_%g137171137184%_ _%g137172137187%_))))
                              (_%g137171137184%_ _%g137172137187%_))))
                      (_%g137171137184%_ _%g137172137187%_)))))
          (_%g137170137222%_ _%stx137169%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self137095%_ _%stx137096%_)
        (let* ((_%g137098137115%_
                (lambda (_%g137099137112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137099137112%_))))
               (_%g137097137165%_
                (lambda (_%g137099137118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137099137118%_))
                      (let ((_%e137102137120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137099137118%_))))
                        (let ((_%hd137103137123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137102137120%_)))
                              (_%tl137104137125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137102137120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137104137125%_))
                              (let ((_%e137105137128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137104137125%_))))
                                (let ((_%hd137106137131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137105137128%_)))
                                      (_%tl137107137133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137105137128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137107137133%_))
                                      (let ((_%e137108137136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137107137133%_))))
                                        (let ((_%hd137109137139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137108137136%_)))
                                              (_%tl137110137141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137108137136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137110137141%_))
                                              ((lambda (_%L137144%_
                                                        _%L137145%_)
                                                 (let* ((_%bind137160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L137145%_)))
                                                        (_%eid137162%_
                                                         (if _%bind137160%_
                                                             (##structure-ref
                                                              _%bind137160%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L137145%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147685
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self137095%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147685
                                                      _%eid137162%_
                                                      _%eid137162%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self137095%_
                                                      _%L137144%_))))
                                               _%hd137109137139%_
                                               _%hd137106137131%_)
                                              (_%g137098137115%_
                                               _%g137099137118%_))))
                                      (_%g137098137115%_ _%g137099137118%_))))
                              (_%g137098137115%_ _%g137099137118%_))))
                      (_%g137098137115%_ _%g137099137118%_)))))
          (_%g137097137165%_ _%stx137096%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self137052%_ _%stx137053%_)
        (let* ((_%g137055137065%_
                (lambda (_%g137056137062%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137056137062%_))))
               (_%g137054137092%_
                (lambda (_%g137056137068%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137056137068%_))
                      (let ((_%e137058137070%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137056137068%_))))
                        (let ((_%hd137059137073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137058137070%_)))
                              (_%tl137060137075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137058137070%_))))
                          ((lambda (_%L137078%_)
                             (let ((__tmp147686
                                    (lambda (_%g137087137089%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self137052%_
                                         _%g137087137089%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147686 _%L137078%_)))
                           _%tl137060137075%_)))
                      (_%g137055137065%_ _%g137056137068%_)))))
          (_%g137054137092%_ _%stx137053%_))))
    (define gxc#count-values-single%
      (lambda (_%self137049%_ _%stx137050%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self136915%_ _%stx136916%_)
        (let* ((_%__stx147429147430%_ _%stx136916%_)
               (_%g136919136948%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147429147430%_)))))
          (let ((_%__kont147431147432%_
                 (lambda (_%L137016%_ _%L137017%_)
                   (length (let ((__tmp147687
                                  (lambda (_%g137038137041%_ _%g137039137043%_)
                                    (cons _%g137038137041%_
                                          _%g137039137043%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147687 '() _%L137016%_)))))
                (_%__kont147435147436%_ (lambda () '#f)))
            (let ((_%__match147474147475%_
                   (lambda (_%e136923136960%_
                            _%hd136924136963%_
                            _%tl136925136965%_
                            _%e136926136968%_
                            _%hd136927136971%_
                            _%tl136928136973%_
                            _%e136929136976%_
                            _%hd136930136979%_
                            _%tl136931136981%_
                            _%e136932136984%_
                            _%hd136933136987%_
                            _%tl136934136989%_
                            _%__splice147433147434%_
                            _%target136935136992%_
                            _%tl136937136994%_)
                     (letrec ((_%loop136938136997%_
                               (lambda (_%hd136936137000%_
                                        _%rand136942137002%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd136936137000%_))
                                     (let ((_%e136939137005%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd136936137000%_))))
                                       (let ((_%lp-tl136941137010%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e136939137005%_)))
                                             (_%lp-hd136940137008%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e136939137005%_))))
                                         (_%loop136938136997%_
                                          _%lp-tl136941137010%_
                                          (cons _%lp-hd136940137008%_
                                                _%rand136942137002%_))))
                                     (let ((_%rand136943137013%_
                                            (reverse _%rand136942137002%_)))
                                       (let ((_%L137016%_ _%rand136943137013%_)
                                             (_%L137017%_ _%hd136933136987%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L137017%_
                                                'values))
                                             (_%__kont147431147432%_
                                              _%L137016%_
                                              _%L137017%_)
                                             (_%__kont147435147436%_))))))))
                       (_%loop136938136997%_ _%target136935136992%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147429147430%_))
                  (let ((_%e136923136960%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147429147430%_))))
                    (let ((_%tl136925136965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136923136960%_)))
                          (_%hd136924136963%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136923136960%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl136925136965%_))
                          (let ((_%e136926136968%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl136925136965%_))))
                            (let ((_%tl136928136973%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136926136968%_)))
                                  (_%hd136927136971%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136926136968%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd136927136971%_))
                                  (let ((_%e136929136976%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd136927136971%_))))
                                    (let ((_%tl136931136981%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136929136976%_)))
                                          (_%hd136930136979%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136929136976%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd136930136979%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd136930136979%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl136931136981%_))
                                                  (let ((_%e136932136984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl136931136981%_))))
                                                    (let ((_%tl136934136989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e136932136984%_)))
                                                          (_%hd136933136987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e136932136984%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl136934136989%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl136928136973%_))
                      (let ((_%__splice147433147434%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl136928136973%_
                                '0))))
                        (let ((_%tl136937136994%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147433147434%_ '1)))
                              (_%target136935136992%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147433147434%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl136937136994%_))
                              (_%__match147474147475%_
                               _%e136923136960%_
                               _%hd136924136963%_
                               _%tl136925136965%_
                               _%e136926136968%_
                               _%hd136927136971%_
                               _%tl136928136973%_
                               _%e136929136976%_
                               _%hd136930136979%_
                               _%tl136931136981%_
                               _%e136932136984%_
                               _%hd136933136987%_
                               _%tl136934136989%_
                               _%__splice147433147434%_
                               _%target136935136992%_
                               _%tl136937136994%_)
                              (_%__kont147435147436%_))))
                      (_%__kont147435147436%_))
                  (_%__kont147435147436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147435147436%_))
                                              (_%__kont147435147436%_))
                                          (_%__kont147435147436%_))))
                                  (_%__kont147435147436%_))))
                          (_%__kont147435147436%_))))
                  (_%__kont147435147436%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self136818%_ _%stx136819%_)
        (let* ((_%g136821136842%_
                (lambda (_%g136822136839%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136822136839%_))))
               (_%g136820136912%_
                (lambda (_%g136822136845%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136822136845%_))
                      (let ((_%e136826136847%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136822136845%_))))
                        (let ((_%hd136827136850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136826136847%_)))
                              (_%tl136828136852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136826136847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136828136852%_))
                              (let ((_%e136829136855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136828136852%_))))
                                (let ((_%hd136830136858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136829136855%_)))
                                      (_%tl136831136860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136829136855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136831136860%_))
                                      (let ((_%e136832136863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136831136860%_))))
                                        (let ((_%hd136833136866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136832136863%_)))
                                              (_%tl136834136868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136832136863%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136834136868%_))
                                              (let ((_%e136835136871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136834136868%_))))
                                                (let ((_%hd136836136874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136835136871%_)))
                                                      (_%tl136837136876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136835136871%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136837136876%_))
                                                      ((lambda (_%L136879%_
                                                                _%L136880%_
                                                                _%L136881%_)
                                                         (let ((_%c1136898136900%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self136818%_ _%L136880%_))))
                   (if _%c1136898136900%_
                       (let* ((_%c1136903%_ _%c1136898136900%_)
                              (_%c2136904136906%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self136818%_
                                  _%L136879%_))))
                         (if _%c2136904136906%_
                             (let ((_%c2136909%_ _%c2136904136906%_))
                               (if (fx= _%c1136903%_ _%c2136909%_)
                                   _%c1136903%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd136836136874%_
               _%hd136833136866%_
               _%hd136830136858%_)
              (_%g136821136842%_ _%g136822136845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136821136842%_
                                               _%g136822136845%_))))
                                      (_%g136821136842%_ _%g136822136845%_))))
                              (_%g136821136842%_ _%g136822136845%_))))
                      (_%g136821136842%_ _%g136822136845%_)))))
          (_%g136820136912%_ _%stx136819%_))))))
