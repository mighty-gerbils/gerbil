(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1781138357)
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
    (define gxc#::collect-bindings::t
      (let ((__tmp208264 (list gxc#::void::t))
            (__tmp208263 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp208264
         '()
         __tmp208263
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args206878%_
        (apply make-instance gxc#::collect-bindings::t _%$args206878%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp208265
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
        (__make-atomic-promise __tmp208265)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx206870%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self206873%_
                (let ((__obj208239
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj208239))
               (__tmp208266
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206873%_ _%stx206870%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208266
           gxc#current-compile-method
           _%self206873%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp208268 (list gxc#::void::t))
            (__tmp208267 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp208268
         '(modules)
         __tmp208267
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args206867%_
        (apply make-instance gxc#::lift-modules::t _%$args206867%_)))
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
      (let ((__tmp208269
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
        (__make-atomic-promise __tmp208269)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords206842%_ _%$%modules206839206843%_ _%stx206844%_)
        (let ((_%modules206847%_
               (if (eq? _%$%modules206839206843%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules206839206843%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self206849%_
                  (let ((__obj208241
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208241
                       _%modules206847%_
                       '1
                       '#f
                       '#f))
                    __obj208241))
                 (__tmp208270
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206849%_ _%stx206844%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208270
             gxc#current-compile-method
             _%self206849%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords206856%_ . _%args206857%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords206856%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206856%_
                  'modules:
                  absent-value))
               _%args206857%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args206840206863%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args206840206863%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp208272 (list)) (__tmp208271 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp208272
         '()
         __tmp208271
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args206835%_
        (apply make-instance gxc#::find-runtime-code::t _%$args206835%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp208273
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
        (__make-atomic-promise __tmp208273)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx206827%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self206830%_
                (let ((__obj208243
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj208243))
               (__tmp208274
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206830%_ _%stx206827%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208274
           gxc#current-compile-method
           _%self206830%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp208276 (list gxc#::false::t))
            (__tmp208275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp208276
         '()
         __tmp208275
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args206824%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args206824%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp208277
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
        (__make-atomic-promise __tmp208277)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx206816%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self206819%_
                (let ((__obj208245
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj208245))
               (__tmp208278
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206819%_ _%stx206816%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208278
           gxc#current-compile-method
           _%self206819%_))))
    (define gxc#::count-values::t
      (let ((__tmp208280 (list gxc#::false-expression::t))
            (__tmp208279 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp208280
         '()
         __tmp208279
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args206813%_
        (apply make-instance gxc#::count-values::t _%$args206813%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp208281
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
        (__make-atomic-promise __tmp208281)))
    (define gxc#apply-count-values
      (lambda (_%stx206805%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self206808%_
                (let ((__obj208247
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj208247))
               (__tmp208282
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206808%_ _%stx206805%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208282
           gxc#current-compile-method
           _%self206808%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp208283 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp208283
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args206802%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args206802%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp208284
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
                  '%#define-runtime
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
        (__make-atomic-promise __tmp208284)))
    (define gxc#::generate-loader::t
      (let ((__tmp208286 (list gxc#::generate-runtime-empty::t))
            (__tmp208285 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp208286
         '()
         __tmp208285
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args206798%_
        (apply make-instance gxc#::generate-loader::t _%$args206798%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp208287
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
        (__make-atomic-promise __tmp208287)))
    (define gxc#apply-generate-loader
      (lambda (_%stx206790%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self206793%_
                (let ((__obj208250
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj208250))
               (__tmp208288
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206793%_ _%stx206790%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208288
           gxc#current-compile-method
           _%self206793%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp208289 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp208289
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args206787%_
        (apply make-instance gxc#::generate-runtime::t _%$args206787%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp208290
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
        (__make-atomic-promise __tmp208290)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx206779%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self206782%_
                (let ((__obj208252
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj208252))
               (__tmp208291
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206782%_ _%stx206779%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208291
           gxc#current-compile-method
           _%self206782%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp208293 (list gxc#::generate-runtime::t))
            (__tmp208292 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp208293
         '()
         __tmp208292
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args206776%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args206776%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp208294
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
        (__make-atomic-promise __tmp208294)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx206768%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self206771%_
                (let ((__obj208254
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj208254))
               (__tmp208295
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206771%_ _%stx206768%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208295
           gxc#current-compile-method
           _%self206771%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp208296 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp208296
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args206765%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args206765%_)))
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
      (let ((__tmp208297
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
        (__make-atomic-promise __tmp208297)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords206740%_ _%$%table206737206741%_ _%stx206742%_)
        (let ((_%table206745%_
               (if (eq? _%$%table206737206741%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table206737206741%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self206747%_
                  (let ((__obj208256
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208256
                       _%table206745%_
                       '1
                       '#f
                       '#f))
                    __obj208256))
                 (__tmp208298
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206747%_ _%stx206742%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208298
             gxc#current-compile-method
             _%self206747%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords206754%_ . _%args206755%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords206754%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206754%_
                  'table:
                  absent-value))
               _%args206755%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args206738206761%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args206738206761%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp208300 (list gxc#::void-expression::t))
            (__tmp208299 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp208300
         '(state)
         __tmp208299
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args206733%_
        (apply make-instance gxc#::generate-meta::t _%$args206733%_)))
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
      (let ((__tmp208301
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
                  '%#define-runtime
                  gxc#generate-meta-define-runtime%))
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
        (__make-atomic-promise __tmp208301)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords206708%_ _%$%state206705206709%_ _%stx206710%_)
        (let ((_%state206713%_
               (if (eq? _%$%state206705206709%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state206705206709%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self206715%_
                  (let ((__obj208258
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208258
                       _%state206713%_
                       '1
                       '#f
                       '#f))
                    __obj208258))
                 (__tmp208302
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206715%_ _%stx206710%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208302
             gxc#current-compile-method
             _%self206715%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords206722%_ . _%args206723%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords206722%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206722%_
                  'state:
                  absent-value))
               _%args206723%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args206706206729%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args206706206729%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp208304 (list)) (__tmp208303 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp208304
         '(state)
         __tmp208303
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args206701%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args206701%_)))
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
      (let ((__tmp208305
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
        (__make-atomic-promise __tmp208305)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords206676%_ _%$%state206673206677%_ _%stx206678%_)
        (let ((_%state206681%_
               (if (eq? _%$%state206673206677%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state206673206677%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self206683%_
                  (let ((__obj208260
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208260
                       _%state206681%_
                       '1
                       '#f
                       '#f))
                    __obj208260))
                 (__tmp208306
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206683%_ _%stx206678%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208306
             gxc#current-compile-method
             _%self206683%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords206690%_ . _%args206691%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords206690%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206690%_
                  'state:
                  absent-value))
               _%args206691%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args206674206697%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args206674206697%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self206602%_ _%stx206603%_)
        (let* ((_%$%g206605206622%_
                (lambda (_%$%g206606206619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206606206619%_))))
               (_%$%g206604206669%_
                (lambda (_%$%g206606206625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206606206625%_))
                      (let ((_%$%e206609206627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206606206625%_))))
                        (let ((_%$%hd206610206630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206609206627%_)))
                              (_%$%tl206611206632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206609206627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206611206632%_))
                              (let ((_%$%e206612206635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206611206632%_))))
                                (let ((_%$%hd206613206638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206612206635%_)))
                                      (_%$%tl206614206640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206612206635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206614206640%_))
                                      (let ((_%$%e206615206643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206614206640%_))))
                                        (let ((_%$%hd206616206646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206615206643%_)))
                                              (_%$%tl206617206648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206615206643%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206617206648%_))
                                              (let ((__tmp208307
                                                     (lambda (_%bind206667%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind206667%_))
                                                           (gxc#add-module-binding!
                                                            _%bind206667%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp208307
                                                 _%$%hd206613206638%_))
                                              (_%$%g206605206622%_
                                               _%$%g206606206625%_))))
                                      (_%$%g206605206622%_
                                       _%$%g206606206625%_))))
                              (_%$%g206605206622%_ _%$%g206606206625%_))))
                      (_%$%g206605206622%_ _%$%g206606206625%_)))))
          (_%$%g206604206669%_ _%stx206603%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self206534%_ _%stx206535%_)
        (let* ((_%$%g206537206554%_
                (lambda (_%$%g206538206551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206538206551%_))))
               (_%$%g206536206599%_
                (lambda (_%$%g206538206557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206538206557%_))
                      (let ((_%$%e206541206559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206538206557%_))))
                        (let ((_%$%hd206542206562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206541206559%_)))
                              (_%$%tl206543206564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206541206559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206543206564%_))
                              (let ((_%$%e206544206567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206543206564%_))))
                                (let ((_%$%hd206545206570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206544206567%_)))
                                      (_%$%tl206546206572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206544206567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206546206572%_))
                                      (let ((_%$%e206547206575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206546206572%_))))
                                        (let ((_%$%hd206548206578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206547206575%_)))
                                              (_%$%tl206549206580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206547206575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206549206580%_))
                                              (gxc#add-module-binding!
                                               _%$%hd206545206570%_
                                               '#t)
                                              (_%$%g206537206554%_
                                               _%$%g206538206557%_))))
                                      (_%$%g206537206554%_
                                       _%$%g206538206557%_))))
                              (_%$%g206537206554%_ _%$%g206538206557%_))))
                      (_%$%g206537206554%_ _%$%g206538206557%_)))))
          (_%$%g206536206599%_ _%stx206535%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self206476%_ _%stx206477%_)
        (let* ((_%$%g206479206493%_
                (lambda (_%$%g206480206490%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206480206490%_))))
               (_%$%g206478206531%_
                (lambda (_%$%g206480206496%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206480206496%_))
                      (let ((_%$%e206483206498%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206480206496%_))))
                        (let ((_%$%hd206484206501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206483206498%_)))
                              (_%$%tl206485206503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206483206498%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206485206503%_))
                              (let ((_%$%e206486206506%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206485206503%_))))
                                (let ((_%$%hd206487206509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206486206506%_)))
                                      (_%$%tl206488206511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206486206506%_))))
                                  (let ((_%ctx206528%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd206487206509%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self206476%_ 'modules))
                                     (cons _%ctx206528%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self206476%_
                                                     'modules)))))
                                    (let ((__tmp208308
                                           (lambda ()
                                             (let ((__tmp208309
                                                    (##structure-ref
                                                     _%ctx206528%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self206476%_
                                                __tmp208309)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp208308
                                       gx#current-expander-context
                                       _%ctx206528%_)))))
                              (_%$%g206479206493%_ _%$%g206480206496%_))))
                      (_%$%g206479206493%_ _%$%g206480206496%_)))))
          (_%$%g206478206531%_ _%stx206477%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls206430206432%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls206430206432%_
              (let ((_%decls206434%_ _%$%decls206430206432%_))
                (let _%lp206436%_ ((_%rest206438%_ _%decls206434%_))
                  (let* ((_%$%rest206439206447%_ _%rest206438%_)
                         (_%$%else206441206455%_ (lambda () '#f))
                         (_%$%K206443206464%_
                          (lambda (_%decls206458%_ _%decl206459%_)
                            (if (equal? _%decl206459%_ '(not safe))
                                '#t
                                (if (equal? _%decl206459%_ '(safe))
                                    '#f
                                    (_%lp206436%_ _%decls206458%_))))))
                    (if (pair? _%$%rest206439206447%_)
                        (let ((_%$%hd206444206467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest206439206447%_)))
                              (_%$%tl206445206469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest206439206447%_))))
                          (let* ((_%decl206472%_ _%$%hd206444206467%_)
                                 (_%decls206474%_ _%$%tl206445206469%_))
                            (_%$%K206443206464%_
                             _%decls206474%_
                             _%decl206472%_)))
                        (_%$%else206441206455%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id206424%_ _%syntax?206425%_)
        (let ((_%eid206427%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id206424%_))
                '1
                gx#binding::t
                '#f))
              (_%ht206428%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid206427%_))
              '#!void
              (let ((__tmp208310
                     (let ((__tmp208311
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid206427%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp208311 _%syntax?206425%_))))
                (declare (not safe))
                (hash-put! _%ht206428%_ _%eid206427%_ __tmp208310))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self206421%_ _%stx206422%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self206268%_ _%stx206269%_)
        (letrec ((_%simplify206271%_
                  (lambda (_%body206319%_)
                    (let _%lp206321%_ ((_%rest206323%_ _%body206319%_)
                                       (_%r206324%_ '()))
                      (let* ((_%$%rest206325206333%_ _%rest206323%_)
                             (_%$%else206327206341%_
                              (lambda () (reverse _%r206324%_)))
                             (_%$%K206329206409%_
                              (lambda (_%rest206344%_ _%hd206345%_)
                                (let* ((_%$%hd206346206362%_ _%hd206345%_)
                                       (_%$%else206350206370%_
                                        (lambda ()
                                          (_%lp206321%_
                                           _%rest206344%_
                                           (cons _%hd206345%_ _%r206324%_)))))
                                  (let ((_%$%K206358206399%_
                                         (lambda (_%exprs206397%_)
                                           (_%lp206321%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest206344%_
                                               _%exprs206397%_))
                                            _%r206324%_)))
                                        (_%$%K206353206383%_
                                         (lambda ()
                                           (if (null? _%rest206344%_)
                                               (_%lp206321%_
                                                _%rest206344%_
                                                (cons _%hd206345%_
                                                      _%r206324%_))
                                               (_%lp206321%_
                                                _%rest206344%_
                                                _%r206324%_))))
                                        (_%$%K206352206375%_
                                         (lambda ()
                                           (if (null? _%rest206344%_)
                                               (_%lp206321%_
                                                _%rest206344%_
                                                (cons _%hd206345%_
                                                      _%r206324%_))
                                               (_%lp206321%_
                                                _%rest206344%_
                                                _%r206324%_)))))
                                    (let ((_%$%try-match206349206378%_
                                           (lambda ()
                                             (if (symbol? _%$%hd206346206362%_)
                                                 (_%$%K206352206375%_)
                                                 (_%$%else206350206370%_)))))
                                      (if (pair? _%$%hd206346206362%_)
                                          (let ((_%$%tl206360206404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd206346206362%_)))
                                                (_%$%hd206359206402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd206346206362%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd206359206402%_
                                                         'begin))
                                                (let ((_%exprs206407%_
                                                       _%$%tl206360206404%_))
                                                  (_%$%K206358206399%_
                                                   _%exprs206407%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd206359206402%_
                                                             'quote))
                                                    (if (pair? _%$%tl206360206404%_)
                                                        (let ((_%$%tl206357206391%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl206360206404%_))))
                  (if (null? _%$%tl206357206391%_)
                      (_%$%K206353206383%_)
                      (_%$%try-match206349206378%_)))
                (_%$%try-match206349206378%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match206349206378%_))))
                                          (_%$%try-match206349206378%_))))))))
                        (if (pair? _%$%rest206325206333%_)
                            (let ((_%$%hd206330206412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest206325206333%_)))
                                  (_%$%tl206331206414%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest206325206333%_))))
                              (let* ((_%hd206417%_ _%$%hd206330206412%_)
                                     (_%rest206419%_ _%$%tl206331206414%_))
                                (_%$%K206329206409%_
                                 _%rest206419%_
                                 _%hd206417%_)))
                            (_%$%else206327206341%_)))))))
          (let* ((_%$%g206273206283%_
                  (lambda (_%$%g206274206280%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206274206280%_))))
                 (_%$%g206272206316%_
                  (lambda (_%$%g206274206286%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206274206286%_))
                        (let ((_%$%e206276206288%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206274206286%_))))
                          (let ((_%$%hd206277206291%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206276206288%_)))
                                (_%$%tl206278206293%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206276206288%_))))
                            (let* ((_%body206311%_
                                    (map (lambda (_%$%g206306206308%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self206268%_
                                              _%$%g206306206308%_)))
                                         _%$%tl206278206293%_))
                                   (_%body206313%_
                                    (_%simplify206271%_ _%body206311%_)))
                              (if (let ((__tmp208312 (length _%body206313%_)))
                                    (declare (not safe))
                                    (##fx= __tmp208312 '1))
                                  (car _%body206313%_)
                                  (cons 'begin _%body206313%_)))))
                        (_%$%g206273206283%_ _%$%g206274206286%_)))))
            (_%$%g206272206316%_ _%stx206269%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self206229%_ _%stx206230%_)
        (let* ((_%$%g206232206242%_
                (lambda (_%$%g206233206239%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206233206239%_))))
               (_%$%g206231206265%_
                (lambda (_%$%g206233206245%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206233206245%_))
                      (let ((_%$%e206235206247%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206233206245%_))))
                        (let ((_%$%hd206236206250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206235206247%_)))
                              (_%$%tl206237206252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206235206247%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl206237206252%_)))))
                      (_%$%g206232206242%_ _%$%g206233206245%_)))))
          (_%$%g206231206265%_ _%stx206230%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self205995%_ _%stx205996%_)
        (let* ((_%__stx206902206903%_ _%stx205996%_)
               (_%$%g206000206052%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206902206903%_)))))
          (let ((_%__kont206904206905%_
                 (lambda (_%$%g206002206211%_ _%$%g206003206212%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205995%_ _%$%g206002206211%_))))
                (_%__kont206906206907%_
                 (lambda (_%$%g206013206159%_
                          _%$%g206014206160%_
                          _%$%g206015206161%_)
                   (if (let ((__tmp208313
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g206015206161%_))))
                         (declare (not safe))
                         (##memq __tmp208313 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self205995%_
                          _%$%g206013206159%_)))))
                (_%__kont206910206911%_
                 (lambda (_%$%g206037206081%_ _%$%g206038206082%_)
                   (let ((_%decls206097%_
                          (map gx#syntax->datum _%$%g206038206082%_)))
                     (let ((__tmp208316
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls206097%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205995%_
                                                   _%$%g206037206081%_))
                                                '())))))
                           (__tmp208314
                            (let ((__tmp208315
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp208315 _%decls206097%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp208316
                        gxc#current-compile-decls
                        __tmp208314))))))
            (let* ((_%__match206957206958%_
                    (lambda (_%$%e206016206105%_
                             _%$%hd206017206108%_
                             _%$%tl206018206110%_
                             _%$%e206019206113%_
                             _%$%hd206020206116%_
                             _%$%tl206021206118%_
                             _%$%e206022206121%_
                             _%$%hd206023206124%_
                             _%$%tl206024206126%_
                             _%__splice206908206909%_
                             _%$%target206025206129%_
                             _%$%tl206027206131%_)
                      (letrec ((_%$%loop206028206134%_
                                (lambda (_%$%hd206026206137%_
                                         _%$%param206032206139%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd206026206137%_))
                                      (let ((_%$%e206029206141%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd206026206137%_))))
                                        (let ((_%$%lp-tl206031206146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206029206141%_)))
                                              (_%$%lp-hd206030206144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206029206141%_))))
                                          (_%$%loop206028206134%_
                                           _%$%lp-tl206031206146%_
                                           (cons _%$%lp-hd206030206144%_
                                                 _%$%param206032206139%_))))
                                      (let ((_%$%param206033206149%_
                                             (reverse _%$%param206032206139%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl206021206118%_))
                                            (let ((_%$%e206034206151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl206021206118%_))))
                                              (let ((_%$%tl206036206156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e206034206151%_)))
                                                    (_%$%hd206035206154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e206034206151%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl206036206156%_))
                                                    (let ((_%$%g206013206159%_
                                                           _%$%hd206035206154%_)
                                                          (_%$%g206014206160%_
                                                           _%$%param206033206149%_)
                                                          (_%$%g206015206161%_
                                                           _%$%hd206023206124%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g206015206161%_))
                       (not (let ((__tmp208317
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g206015206161%_))))
                              (declare (not safe))
                              (##memq __tmp208317 gxc#gambit-annotations))))
                  (_%__kont206906206907%_
                   _%$%g206013206159%_
                   _%$%g206014206160%_
                   _%$%g206015206161%_)
                  (_%__kont206910206911%_
                   _%$%hd206035206154%_
                   _%$%hd206020206116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g206000206052%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g206000206052%_))))))))
                        (_%$%loop206028206134%_
                         _%$%target206025206129%_
                         '()))))
                   (_%__match206931206932%_
                    (lambda (_%$%e206004206187%_
                             _%$%hd206005206190%_
                             _%$%tl206006206192%_
                             _%$%e206007206195%_
                             _%$%hd206008206198%_
                             _%$%tl206009206200%_
                             _%$%e206010206203%_
                             _%$%hd206011206206%_
                             _%$%tl206012206208%_)
                      (let ((_%$%g206002206211%_ _%$%hd206011206206%_)
                            (_%$%g206003206212%_ _%$%hd206008206198%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g206003206212%_))
                            (_%__kont206904206905%_
                             _%$%g206002206211%_
                             _%$%g206003206212%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd206008206198%_))
                                (let ((_%$%e206022206121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd206008206198%_))))
                                  (let ((_%$%tl206024206126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206022206121%_)))
                                        (_%$%hd206023206124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206022206121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl206024206126%_))
                                        (let ((_%__splice206908206909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl206024206126%_
                                                  '0))))
                                          (let ((_%$%tl206027206131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice206908206909%_
                                                    '1)))
                                                (_%$%target206025206129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice206908206909%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206027206131%_))
                                                (_%__match206957206958%_
                                                 _%$%e206004206187%_
                                                 _%$%hd206005206190%_
                                                 _%$%tl206006206192%_
                                                 _%$%e206007206195%_
                                                 _%$%hd206008206198%_
                                                 _%$%tl206009206200%_
                                                 _%$%e206022206121%_
                                                 _%$%hd206023206124%_
                                                 _%$%tl206024206126%_
                                                 _%__splice206908206909%_
                                                 _%$%target206025206129%_
                                                 _%$%tl206027206131%_)
                                                (_%__kont206910206911%_
                                                 _%$%hd206011206206%_
                                                 _%$%hd206008206198%_))))
                                        (_%__kont206910206911%_
                                         _%$%hd206011206206%_
                                         _%$%hd206008206198%_))))
                                (_%__kont206910206911%_
                                 _%$%hd206011206206%_
                                 _%$%hd206008206198%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206902206903%_))
                  (let ((_%$%e206004206187%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206902206903%_))))
                    (let ((_%$%tl206006206192%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e206004206187%_)))
                          (_%$%hd206005206190%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e206004206187%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl206006206192%_))
                          (let ((_%$%e206007206195%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl206006206192%_))))
                            (let ((_%$%tl206009206200%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206007206195%_)))
                                  (_%$%hd206008206198%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206007206195%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl206009206200%_))
                                  (let ((_%$%e206010206203%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl206009206200%_))))
                                    (let ((_%$%tl206012206208%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206010206203%_)))
                                          (_%$%hd206011206206%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206010206203%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206012206208%_))
                                          (_%__match206931206932%_
                                           _%$%e206004206187%_
                                           _%$%hd206005206190%_
                                           _%$%tl206006206192%_
                                           _%$%e206007206195%_
                                           _%$%hd206008206198%_
                                           _%$%tl206009206200%_
                                           _%$%e206010206203%_
                                           _%$%hd206011206206%_
                                           _%$%tl206012206208%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd206008206198%_))
                                              (let ((_%$%e206022206121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd206008206198%_))))
                                                (let ((_%$%tl206024206126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206022206121%_)))
                                                      (_%$%hd206023206124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206022206121%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl206024206126%_))
                                                      (let ((_%__splice206908206909%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl206024206126%_
                        '0))))
                (let ((_%$%tl206027206131%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206908206909%_ '1)))
                      (_%$%target206025206129%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206908206909%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl206027206131%_))
                      (_%__match206957206958%_
                       _%$%e206004206187%_
                       _%$%hd206005206190%_
                       _%$%tl206006206192%_
                       _%$%e206007206195%_
                       _%$%hd206008206198%_
                       _%$%tl206009206200%_
                       _%$%e206022206121%_
                       _%$%hd206023206124%_
                       _%$%tl206024206126%_
                       _%__splice206908206909%_
                       _%$%target206025206129%_
                       _%$%tl206027206131%_)
                      (let () (declare (not safe)) (_%$%g206000206052%_)))))
              (let () (declare (not safe)) (_%$%g206000206052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g206000206052%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd206008206198%_))
                                      (let ((_%$%e206022206121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd206008206198%_))))
                                        (let ((_%$%tl206024206126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206022206121%_)))
                                              (_%$%hd206023206124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206022206121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl206024206126%_))
                                              (let ((_%__splice206908206909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl206024206126%_
                                                        '0))))
                                                (let ((_%$%tl206027206131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206908206909%_
                                                          '1)))
                                                      (_%$%target206025206129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206908206909%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl206027206131%_))
                                                      (_%__match206957206958%_
                                                       _%$%e206004206187%_
                                                       _%$%hd206005206190%_
                                                       _%$%tl206006206192%_
                                                       _%$%e206007206195%_
                                                       _%$%hd206008206198%_
                                                       _%$%tl206009206200%_
                                                       _%$%e206022206121%_
                                                       _%$%hd206023206124%_
                                                       _%$%tl206024206126%_
                                                       _%__splice206908206909%_
                                                       _%$%target206025206129%_
                                                       _%$%tl206027206131%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g206000206052%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g206000206052%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g206000206052%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g206000206052%_)))))
                  (let () (declare (not safe)) (_%$%g206000206052%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self205954%_ _%stx205955%_)
        (let* ((_%$%g205957205967%_
                (lambda (_%$%g205958205964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205958205964%_))))
               (_%$%g205956205992%_
                (lambda (_%$%g205958205970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205958205970%_))
                      (let ((_%$%e205960205972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205958205970%_))))
                        (let ((_%$%hd205961205975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205960205972%_)))
                              (_%$%tl205962205977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205960205972%_))))
                          (let ((_%decls205990%_
                                 (map gx#syntax->datum _%$%tl205962205977%_)))
                            (let ((__tmp208318
                                   (let ((__tmp208319
                                          (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls))))
                                     (declare (not safe))
                                     (foldr__0
                                      cons
                                      __tmp208319
                                      _%decls205990%_))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp208318))
                            (cons 'declare _%decls205990%_))))
                      (_%$%g205957205967%_ _%$%g205958205970%_)))))
          (_%$%g205956205992%_ _%stx205955%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self205701%_ _%stx205702%_)
        (let* ((_%$%g205704205721%_
                (lambda (_%$%g205705205718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205705205718%_))))
               (_%$%g205703205951%_
                (lambda (_%$%g205705205724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205705205724%_))
                      (let ((_%$%e205708205726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205705205724%_))))
                        (let ((_%$%hd205709205729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205708205726%_)))
                              (_%$%tl205710205731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205708205726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205710205731%_))
                              (let ((_%$%e205711205734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205710205731%_))))
                                (let ((_%$%hd205712205737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205711205734%_)))
                                      (_%$%tl205713205739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205711205734%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205713205739%_))
                                      (let ((_%$%e205714205742%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205713205739%_))))
                                        (let ((_%$%hd205715205745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205714205742%_)))
                                              (_%$%tl205716205747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205714205742%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205716205747%_))
                                              (let* ((_%__stx207010207011%_
                                                      _%$%hd205712205737%_)
                                                     (_%$%g205768205782%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx207010207011%_)))))
                                                (let ((_%__kont207012207013%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self205701%_
                                                            _%$%hd205715205745%_))))
                                                      (_%__kont207014207015%_
                                                       (lambda (_%$%g205774205914%_)
                                                         (let ((_%eid205923%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g205774205914%_))))
                   (let ((_%$%lambda-expr205924205926%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd205715205745%_)))
                     (if _%$%lambda-expr205924205926%_
                         (let* ((_%lambda-expr205928%_
                                 _%$%lambda-expr205924205926%_)
                                (__tmp208320
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp208320
                            _%lambda-expr205928%_
                            _%eid205923%_))
                         '#f))
                   (cons 'define
                         (cons _%eid205923%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self205701%_
                                        _%$%hd205715205745%_))
                                     '()))))))
              (_%__kont207016207017%_
               (lambda ()
                 (let* ((_%tmp205789%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body205898%_
                         (let _%lp205791%_ ((_%rest205793%_
                                             _%$%hd205712205737%_)
                                            (_%k205794%_ '0)
                                            (_%r205795%_ '()))
                           (let* ((_%__stx206980206981%_ _%rest205793%_)
                                  (_%$%g205800205817%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx206980206981%_)))))
                             (let ((_%__kont206982206983%_
                                    (lambda (_%$%g205802205885%_)
                                      (_%lp205791%_
                                       _%$%g205802205885%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k205794%_ '1))
                                       _%r205795%_)))
                                   (_%__kont206984206985%_
                                    (lambda (_%$%g205807205858%_
                                             _%$%g205808205859%_)
                                      (_%lp205791%_
                                       _%$%g205807205858%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k205794%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g205808205859%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp205789%_
                                                                _%k205794%_
                                                                _%$%g205807205858%_)
                                                               '())))
                                             _%r205795%_))))
                                   (_%__kont206986206987%_
                                    (lambda (_%$%g205812205829%_)
                                      (let ((__tmp208321
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g205812205829%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp205789%_
                              _%k205794%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp208321
                                         _%r205795%_))))
                                   (_%__kont206988206989%_
                                    (lambda () (reverse _%r205795%_))))
                               (let ((_%$%g205798205845%_
                                      (lambda ()
                                        (let ((_%$%g205812205829%_
                                               _%__stx206980206981%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g205812205829%_))
                                              (_%__kont206986206987%_
                                               _%$%g205812205829%_)
                                              (_%__kont206988206989%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx206980206981%_))
                                     (let ((_%$%e205803205874%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx206980206981%_))))
                                       (let ((_%$%tl205805205879%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e205803205874%_)))
                                             (_%$%hd205804205877%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e205803205874%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd205804205877%_))
                                             (let ((_%$%e205806205882%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd205804205877%_))))
                                               (if (equal? _%$%e205806205882%_
                                                           '#f)
                                                   (_%__kont206982206983%_
                                                    _%$%tl205805205879%_)
                                                   (_%__kont206984206985%_
                                                    _%$%tl205805205879%_
                                                    _%$%hd205804205877%_)))
                                             (_%__kont206984206985%_
                                              _%$%tl205805205879%_
                                              _%$%hd205804205877%_))))
                                     (_%$%g205798205845%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp205789%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self205701%_
                                                    _%$%hd205715205745%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp205789%_
                                      _%$%hd205712205737%_
                                      _%$%hd205715205745%_)
                                     _%body205898%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx207010207011%_))
                                                      (let ((_%$%e205770205935%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx207010207011%_))))
                (let ((_%$%tl205772205940%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e205770205935%_)))
                      (_%$%hd205771205938%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e205770205935%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd205771205938%_))
                      (let ((_%$%e205773205943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd205771205938%_))))
                        (if (equal? _%$%e205773205943%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl205772205940%_))
                                (_%__kont207012207013%_)
                                (_%__kont207016207017%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl205772205940%_))
                                (_%__kont207014207015%_ _%$%hd205771205938%_)
                                (_%__kont207016207017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl205772205940%_))
                          (_%__kont207014207015%_ _%$%hd205771205938%_)
                          (_%__kont207016207017%_)))))
              (_%__kont207016207017%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205704205721%_
                                               _%$%g205705205724%_))))
                                      (_%$%g205704205721%_
                                       _%$%g205705205724%_))))
                              (_%$%g205704205721%_ _%$%g205705205724%_))))
                      (_%$%g205704205721%_ _%$%g205705205724%_)))))
          (_%$%g205703205951%_ _%stx205702%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals205676%_ _%hd205677%_ _%expr205678%_)
        (let ((_%$e205680%_ (gxc#apply-count-values _%expr205678%_)))
          (if _%$e205680%_
              (let ((_%len205685%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd205677%_)))
                    (_%cmp205686%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd205677%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len205685%_ '0))
                        (_%cmp205686%_ _%$e205680%_ _%len205685%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr205678%_
                       _%hd205677%_))))
              (let* ((_%len205692%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd205677%_)))
                     (_%cmp205694%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd205677%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg205696%_
                      (let ((__tmp208323
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd205677%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp208322 (number->string _%len205692%_)))
                        (declare (not safe))
                        (##string-append __tmp208323 __tmp208322 '" values")))
                     (_%count205698%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd205677%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len205692%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count205698%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals205676%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp205694%_
                                (cons _%count205698%_
                                      (cons _%len205692%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp205694%_
                                                        (cons _%count205698%_
                                                              (cons _%len205692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg205696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count205698%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var205671%_)
        (letrec ((_%generate-inline205673%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var205671%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var205671%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline205673%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline205673%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var205664%_ _%i205665%_ _%rest205666%_)
        (letrec ((_%generate-inline205668%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i205665%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest205666%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var205664%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var205664%_
                                                      (cons '0 '())))
                                          (cons _%var205664%_ '()))))
                        (cons '##values-ref
                              (cons _%var205664%_ (cons _%i205665%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline205668%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline205668%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var205658%_ _%i205659%_)
        (if (let () (declare (not safe)) (##fx= _%i205659%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var205658%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var205658%_ '()))
                                  (cons (cons 'list (cons _%var205658%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var205658%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var205658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var205658%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i205659%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var205658%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var205658%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var205658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var205658%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var205658%_ '()))
                                (cons _%i205659%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var205658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i205659%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self205590%_ _%stx205591%_)
        (let* ((_%$%g205593205610%_
                (lambda (_%$%g205594205607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205594205607%_))))
               (_%$%g205592205655%_
                (lambda (_%$%g205594205613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205594205613%_))
                      (let ((_%$%e205597205615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205594205613%_))))
                        (let ((_%$%hd205598205618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205597205615%_)))
                              (_%$%tl205599205620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205597205615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205599205620%_))
                              (let ((_%$%e205600205623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205599205620%_))))
                                (let ((_%$%hd205601205626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205600205623%_)))
                                      (_%$%tl205602205628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205600205623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205602205628%_))
                                      (let ((_%$%e205603205631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205602205628%_))))
                                        (let ((_%$%hd205604205634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205603205631%_)))
                                              (_%$%tl205605205636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205603205631%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205605205636%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self205590%_
                                               _%$%hd205601205626%_
                                               _%$%hd205604205634%_)
                                              (_%$%g205593205610%_
                                               _%$%g205594205613%_))))
                                      (_%$%g205593205610%_
                                       _%$%g205594205613%_))))
                              (_%$%g205593205610%_ _%$%g205594205613%_))))
                      (_%$%g205593205610%_ _%$%g205594205613%_)))))
          (_%$%g205592205655%_ _%stx205591%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self205549%_ _%hd205550%_ _%body205551%_)
        (let* ((_%hd205553%_ (gxc#generate-runtime-lambda-head _%hd205550%_))
               (_%body205555%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self205549%_ _%body205551%_)))
               (_%body205587%_
                (let* ((_%$%body205556205564%_ _%body205555%_)
                       (_%$%else205558205572%_
                        (lambda () (cons _%body205555%_ '())))
                       (_%$%K205560205577%_
                        (lambda (_%exprs205575%_) _%exprs205575%_)))
                  (if (pair? _%$%body205556205564%_)
                      (let ((_%$%hd205561205580%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body205556205564%_)))
                            (_%$%tl205562205582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body205556205564%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd205561205580%_ 'begin))
                            (let ((_%exprs205585%_ _%$%tl205562205582%_))
                              (_%$%K205560205577%_ _%exprs205585%_))
                            (_%$%else205558205572%_)))
                      (_%$%else205558205572%_)))))
          (cons 'lambda (cons _%hd205553%_ _%body205587%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd205547%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd205547%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self204104%_ _%stx204105%_)
        (letrec ((_%dispatch-case?204107%_
                  (lambda (_%hd204785%_ _%body204786%_)
                    (let* ((_%form204788%_
                            (cons _%hd204785%_ (cons _%body204786%_ '())))
                           (_%__stx207042207043%_ _%form204788%_)
                           (_%$%g204793204950%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx207042207043%_)))))
                      (let ((_%__kont207044207045%_
                             (lambda (_%$%g204795205467%_
                                      _%$%g204796205468%_
                                      _%$%g204797205469%_)
                               '#t))
                            (_%__kont207050207051%_
                             (lambda (_%$%g204840205259%_
                                      _%$%g204841205260%_
                                      _%$%g204842205261%_
                                      _%$%g204843205262%_
                                      _%$%g204844205263%_
                                      _%$%g204845205264%_)
                               '#t))
                            (_%__kont207056207057%_
                             (lambda (_%$%g204906205058%_
                                      _%$%g204907205059%_
                                      _%$%g204908205060%_
                                      _%$%g204909205061%_)
                               '#t))
                            (_%__kont207058207059%_ (lambda () '#f)))
                        (let* ((_%__match207183207184%_
                                (lambda (_%$%e204910204962%_
                                         _%$%hd204911204965%_
                                         _%$%tl204912204967%_
                                         _%$%e204913204970%_
                                         _%$%hd204914204973%_
                                         _%$%tl204915204975%_
                                         _%$%e204916204978%_
                                         _%$%hd204917204981%_
                                         _%$%tl204918204983%_
                                         _%$%e204919204986%_
                                         _%$%hd204920204989%_
                                         _%$%tl204921204991%_
                                         _%$%e204922204994%_
                                         _%$%hd204923204997%_
                                         _%$%tl204924204999%_
                                         _%$%e204925205002%_
                                         _%$%hd204926205005%_
                                         _%$%tl204927205007%_
                                         _%$%e204928205010%_
                                         _%$%hd204929205013%_
                                         _%$%tl204930205015%_
                                         _%$%e204931205018%_
                                         _%$%hd204932205021%_
                                         _%$%tl204933205023%_
                                         _%$%e204934205026%_
                                         _%$%hd204935205029%_
                                         _%$%tl204936205031%_
                                         _%$%e204937205034%_
                                         _%$%hd204938205037%_
                                         _%$%tl204939205039%_
                                         _%$%e204940205042%_
                                         _%$%hd204941205045%_
                                         _%$%tl204942205047%_
                                         _%$%e204943205050%_
                                         _%$%hd204944205053%_
                                         _%$%tl204945205055%_)
                                  (let ((_%$%g204906205058%_
                                         _%$%hd204944205053%_)
                                        (_%$%g204907205059%_
                                         _%$%hd204935205029%_)
                                        (_%$%g204908205060%_
                                         _%$%hd204926205005%_)
                                        (_%$%g204909205061%_
                                         _%$%hd204911204965%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g204909205061%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g204908205060%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g204909205061%_
                                                _%$%g204906205058%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g204907205059%_
                                                     _%$%g204909205061%_))))
                                        (_%__kont207056207057%_
                                         _%$%g204906205058%_
                                         _%$%g204907205059%_
                                         _%$%g204908205060%_
                                         _%$%g204909205061%_)
                                        (_%__kont207058207059%_)))))
                               (_%__match207155207156%_
                                (lambda (_%$%e204910204962%_
                                         _%$%hd204911204965%_
                                         _%$%tl204912204967%_
                                         _%$%e204913204970%_
                                         _%$%hd204914204973%_
                                         _%$%tl204915204975%_
                                         _%$%e204916204978%_
                                         _%$%hd204917204981%_
                                         _%$%tl204918204983%_
                                         _%$%e204919204986%_
                                         _%$%hd204920204989%_
                                         _%$%tl204921204991%_
                                         _%$%e204922204994%_
                                         _%$%hd204923204997%_
                                         _%$%tl204924204999%_
                                         _%$%e204925205002%_
                                         _%$%hd204926205005%_
                                         _%$%tl204927205007%_
                                         _%$%e204928205010%_
                                         _%$%hd204929205013%_
                                         _%$%tl204930205015%_
                                         _%$%e204931205018%_
                                         _%$%hd204932205021%_
                                         _%$%tl204933205023%_
                                         _%$%e204934205026%_
                                         _%$%hd204935205029%_
                                         _%$%tl204936205031%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204930205015%_))
                                      (let ((_%$%e204937205034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204930205015%_))))
                                        (let ((_%$%tl204939205039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204937205034%_)))
                                              (_%$%hd204938205037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204937205034%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd204938205037%_))
                                              (let ((_%$%e204940205042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd204938205037%_))))
                                                (let ((_%$%tl204942205047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204940205042%_)))
                                                      (_%$%hd204941205045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204940205042%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd204941205045%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd204941205045%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl204942205047%_))
                      (let ((_%$%e204943205050%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl204942205047%_))))
                        (let ((_%$%tl204945205055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204943205050%_)))
                              (_%$%hd204944205053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204943205050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl204945205055%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl204939205039%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl204915204975%_))
                                      (_%__match207183207184%_
                                       _%$%e204910204962%_
                                       _%$%hd204911204965%_
                                       _%$%tl204912204967%_
                                       _%$%e204913204970%_
                                       _%$%hd204914204973%_
                                       _%$%tl204915204975%_
                                       _%$%e204916204978%_
                                       _%$%hd204917204981%_
                                       _%$%tl204918204983%_
                                       _%$%e204919204986%_
                                       _%$%hd204920204989%_
                                       _%$%tl204921204991%_
                                       _%$%e204922204994%_
                                       _%$%hd204923204997%_
                                       _%$%tl204924204999%_
                                       _%$%e204925205002%_
                                       _%$%hd204926205005%_
                                       _%$%tl204927205007%_
                                       _%$%e204928205010%_
                                       _%$%hd204929205013%_
                                       _%$%tl204930205015%_
                                       _%$%e204931205018%_
                                       _%$%hd204932205021%_
                                       _%$%tl204933205023%_
                                       _%$%e204934205026%_
                                       _%$%hd204935205029%_
                                       _%$%tl204936205031%_
                                       _%$%e204937205034%_
                                       _%$%hd204938205037%_
                                       _%$%tl204939205039%_
                                       _%$%e204940205042%_
                                       _%$%hd204941205045%_
                                       _%$%tl204942205047%_
                                       _%$%e204943205050%_
                                       _%$%hd204944205053%_
                                       _%$%tl204945205055%_)
                                      (_%__kont207058207059%_))
                                  (_%__kont207058207059%_))
                              (_%__kont207058207059%_))))
                      (_%__kont207058207059%_))
                  (_%__kont207058207059%_))
              (_%__kont207058207059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207058207059%_))))
                                      (_%__kont207058207059%_))))
                               (_%__match207085207086%_
                                (lambda (_%$%e204846205103%_
                                         _%$%hd204847205106%_
                                         _%$%tl204848205108%_
                                         _%__splice207052207053%_
                                         _%$%target204849205111%_
                                         _%$%tl204851205113%_)
                                  (letrec ((_%$%loop204852205116%_
                                            (lambda (_%$%hd204850205119%_
                                                     _%$%arg204856205121%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd204850205119%_))
                                                  (let ((_%$%e204853205123%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd204850205119%_))))
                                                    (let ((_%$%lp-tl204855205128%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204853205123%_)))
                                                          (_%$%lp-hd204854205126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204853205123%_))))
                                                      (_%$%loop204852205116%_
                                                       _%$%lp-tl204855205128%_
                                                       (cons _%$%lp-hd204854205126%_
                                                             _%$%arg204856205121%_))))
                                                  (let ((_%$%arg204857205131%_
                                                         (reverse _%$%arg204856205121%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl204848205108%_))
                                                        (let ((_%$%e204858205133%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl204848205108%_))))
                  (let ((_%$%tl204860205138%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204858205133%_)))
                        (_%$%hd204859205136%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204858205133%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204859205136%_))
                        (let ((_%$%e204861205141%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204859205136%_))))
                          (let ((_%$%tl204863205146%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204861205141%_)))
                                (_%$%hd204862205144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204861205141%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd204862205144%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd204862205144%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204863205146%_))
                                        (let ((_%$%e204864205149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204863205146%_))))
                                          (let ((_%$%tl204866205154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204864205149%_)))
                                                (_%$%hd204865205152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204864205149%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd204865205152%_))
                                                (let ((_%$%e204867205157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd204865205152%_))))
                                                  (let ((_%$%tl204869205162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e204867205157%_)))
                                                        (_%$%hd204868205160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e204867205157%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd204868205160%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd204868205160%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl204869205162%_))
                        (let ((_%$%e204870205165%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl204869205162%_))))
                          (let ((_%$%tl204872205170%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204870205165%_)))
                                (_%$%hd204871205168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204870205165%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl204872205170%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl204866205154%_))
                                    (let ((_%$%e204873205173%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl204866205154%_))))
                                      (let ((_%$%tl204875205178%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e204873205173%_)))
                                            (_%$%hd204874205176%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e204873205173%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd204874205176%_))
                                            (let ((_%$%e204876205181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd204874205176%_))))
                                              (let ((_%$%tl204878205186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e204876205181%_)))
                                                    (_%$%hd204877205184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e204876205181%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd204877205184%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd204877205184%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl204878205186%_))
                                                            (let ((_%$%e204879205189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl204878205186%_))))
                      (let ((_%$%tl204881205194%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e204879205189%_)))
                            (_%$%hd204880205192%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e204879205189%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl204881205194%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl204875205178%_))
                                (if (let ((__tmp208324
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl204875205178%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp208324 '1))
                                    (let ((_%__splice207054207055%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl204875205178%_
                                              '1))))
                                      (let ((_%$%tl204884205199%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207054207055%_
                                                '1)))
                                            (_%$%target204882205197%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207054207055%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl204884205199%_))
                                            (let ((_%$%e204891205202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl204884205199%_))))
                                              (let ((_%$%tl204893205207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e204891205202%_)))
                                                    (_%$%hd204892205205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e204891205202%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd204892205205%_))
                                                    (let ((_%$%e204894205210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd204892205205%_))))
                                                      (let ((_%$%tl204896205215%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e204894205210%_)))
                    (_%$%hd204895205213%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e204894205210%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd204895205213%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd204895205213%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl204896205215%_))
                            (let ((_%$%e204897205218%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl204896205215%_))))
                              (let ((_%$%tl204899205223%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e204897205218%_)))
                                    (_%$%hd204898205221%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e204897205218%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl204899205223%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl204893205207%_))
                                        (letrec ((_%$%loop204885205226%_
                                                  (lambda (_%$%hd204883205229%_
                                                           _%$%xarg204889205231%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd204883205229%_))
                                                        (let ((_%$%e204886205233%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd204883205229%_))))
                  (let ((_%$%lp-tl204888205238%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204886205233%_)))
                        (_%$%lp-hd204887205236%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204886205233%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd204887205236%_))
                        (let ((_%$%e204900205241%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd204887205236%_))))
                          (let ((_%$%tl204902205246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204900205241%_)))
                                (_%$%hd204901205244%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204900205241%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd204901205244%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd204901205244%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204902205246%_))
                                        (let ((_%$%e204903205249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204902205246%_))))
                                          (let ((_%$%tl204905205254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204903205249%_)))
                                                (_%$%hd204904205252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204903205249%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl204905205254%_))
                                                (_%$%loop204885205226%_
                                                 _%$%lp-tl204888205238%_
                                                 (cons _%$%hd204904205252%_
                                                       _%$%xarg204889205231%_))
                                                (_%__match207155207156%_
                                                 _%$%e204846205103%_
                                                 _%$%hd204847205106%_
                                                 _%$%tl204848205108%_
                                                 _%$%e204858205133%_
                                                 _%$%hd204859205136%_
                                                 _%$%tl204860205138%_
                                                 _%$%e204861205141%_
                                                 _%$%hd204862205144%_
                                                 _%$%tl204863205146%_
                                                 _%$%e204864205149%_
                                                 _%$%hd204865205152%_
                                                 _%$%tl204866205154%_
                                                 _%$%e204867205157%_
                                                 _%$%hd204868205160%_
                                                 _%$%tl204869205162%_
                                                 _%$%e204870205165%_
                                                 _%$%hd204871205168%_
                                                 _%$%tl204872205170%_
                                                 _%$%e204873205173%_
                                                 _%$%hd204874205176%_
                                                 _%$%tl204875205178%_
                                                 _%$%e204876205181%_
                                                 _%$%hd204877205184%_
                                                 _%$%tl204878205186%_
                                                 _%$%e204879205189%_
                                                 _%$%hd204880205192%_
                                                 _%$%tl204881205194%_))))
                                        (_%__match207155207156%_
                                         _%$%e204846205103%_
                                         _%$%hd204847205106%_
                                         _%$%tl204848205108%_
                                         _%$%e204858205133%_
                                         _%$%hd204859205136%_
                                         _%$%tl204860205138%_
                                         _%$%e204861205141%_
                                         _%$%hd204862205144%_
                                         _%$%tl204863205146%_
                                         _%$%e204864205149%_
                                         _%$%hd204865205152%_
                                         _%$%tl204866205154%_
                                         _%$%e204867205157%_
                                         _%$%hd204868205160%_
                                         _%$%tl204869205162%_
                                         _%$%e204870205165%_
                                         _%$%hd204871205168%_
                                         _%$%tl204872205170%_
                                         _%$%e204873205173%_
                                         _%$%hd204874205176%_
                                         _%$%tl204875205178%_
                                         _%$%e204876205181%_
                                         _%$%hd204877205184%_
                                         _%$%tl204878205186%_
                                         _%$%e204879205189%_
                                         _%$%hd204880205192%_
                                         _%$%tl204881205194%_))
                                    (_%__match207155207156%_
                                     _%$%e204846205103%_
                                     _%$%hd204847205106%_
                                     _%$%tl204848205108%_
                                     _%$%e204858205133%_
                                     _%$%hd204859205136%_
                                     _%$%tl204860205138%_
                                     _%$%e204861205141%_
                                     _%$%hd204862205144%_
                                     _%$%tl204863205146%_
                                     _%$%e204864205149%_
                                     _%$%hd204865205152%_
                                     _%$%tl204866205154%_
                                     _%$%e204867205157%_
                                     _%$%hd204868205160%_
                                     _%$%tl204869205162%_
                                     _%$%e204870205165%_
                                     _%$%hd204871205168%_
                                     _%$%tl204872205170%_
                                     _%$%e204873205173%_
                                     _%$%hd204874205176%_
                                     _%$%tl204875205178%_
                                     _%$%e204876205181%_
                                     _%$%hd204877205184%_
                                     _%$%tl204878205186%_
                                     _%$%e204879205189%_
                                     _%$%hd204880205192%_
                                     _%$%tl204881205194%_))
                                (_%__match207155207156%_
                                 _%$%e204846205103%_
                                 _%$%hd204847205106%_
                                 _%$%tl204848205108%_
                                 _%$%e204858205133%_
                                 _%$%hd204859205136%_
                                 _%$%tl204860205138%_
                                 _%$%e204861205141%_
                                 _%$%hd204862205144%_
                                 _%$%tl204863205146%_
                                 _%$%e204864205149%_
                                 _%$%hd204865205152%_
                                 _%$%tl204866205154%_
                                 _%$%e204867205157%_
                                 _%$%hd204868205160%_
                                 _%$%tl204869205162%_
                                 _%$%e204870205165%_
                                 _%$%hd204871205168%_
                                 _%$%tl204872205170%_
                                 _%$%e204873205173%_
                                 _%$%hd204874205176%_
                                 _%$%tl204875205178%_
                                 _%$%e204876205181%_
                                 _%$%hd204877205184%_
                                 _%$%tl204878205186%_
                                 _%$%e204879205189%_
                                 _%$%hd204880205192%_
                                 _%$%tl204881205194%_))))
                        (_%__match207155207156%_
                         _%$%e204846205103%_
                         _%$%hd204847205106%_
                         _%$%tl204848205108%_
                         _%$%e204858205133%_
                         _%$%hd204859205136%_
                         _%$%tl204860205138%_
                         _%$%e204861205141%_
                         _%$%hd204862205144%_
                         _%$%tl204863205146%_
                         _%$%e204864205149%_
                         _%$%hd204865205152%_
                         _%$%tl204866205154%_
                         _%$%e204867205157%_
                         _%$%hd204868205160%_
                         _%$%tl204869205162%_
                         _%$%e204870205165%_
                         _%$%hd204871205168%_
                         _%$%tl204872205170%_
                         _%$%e204873205173%_
                         _%$%hd204874205176%_
                         _%$%tl204875205178%_
                         _%$%e204876205181%_
                         _%$%hd204877205184%_
                         _%$%tl204878205186%_
                         _%$%e204879205189%_
                         _%$%hd204880205192%_
                         _%$%tl204881205194%_))))
                (let ((_%$%xarg204890205257%_
                       (reverse _%$%xarg204889205231%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204860205138%_))
                      (let ((_%$%g204840205259%_ _%$%hd204898205221%_)
                            (_%$%g204841205260%_ _%$%xarg204890205257%_)
                            (_%$%g204842205261%_ _%$%hd204880205192%_)
                            (_%$%g204843205262%_ _%$%hd204871205168%_)
                            (_%$%g204844205263%_ _%$%tl204851205113%_)
                            (_%$%g204845205264%_ _%$%arg204857205131%_))
                        (if (and (let ((__tmp208325
                                        (let ((__tmp208326
                                               (lambda (_%$%g205307205310%_
                                                        _%$%g205308205312%_)
                                                 (cons _%$%g205307205310%_
                                                       _%$%g205308205312%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp208326
                                           '()
                                           _%$%g204845205264%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp208325))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g204844205263%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g204843205262%_
                                    'apply))
                                 (let ((__tmp208329
                                        (length (let ((__tmp208330
                                                       (lambda (_%$%g205314205317%_
                                                                _%$%g205315205319%_)
                                                         (cons _%$%g205314205317%_
                                                               _%$%g205315205319%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp208330
                                                   '()
                                                   _%$%g204845205264%_))))
                                       (__tmp208327
                                        (length (let ((__tmp208328
                                                       (lambda (_%$%g205321205324%_
                                                                _%$%g205322205326%_)
                                                         (cons _%$%g205321205324%_
                                                               _%$%g205322205326%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp208328
                                                   '()
                                                   _%$%g204841205260%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp208329 __tmp208327))
                                 (let ((__tmp208333
                                        (let ((__tmp208334
                                               (lambda (_%$%g205328205331%_
                                                        _%$%g205329205333%_)
                                                 (cons _%$%g205328205331%_
                                                       _%$%g205329205333%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp208334
                                           '()
                                           _%$%g204845205264%_)))
                                       (__tmp208331
                                        (let ((__tmp208332
                                               (lambda (_%$%g205335205338%_
                                                        _%$%g205336205340%_)
                                                 (cons _%$%g205335205338%_
                                                       _%$%g205336205340%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp208332
                                           '()
                                           _%$%g204841205260%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp208333
                                    __tmp208331))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g204844205263%_
                                    _%$%g204840205259%_))
                                 (not (let ((__tmp208338
                                             (lambda (_%$%g205342205344%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g205342205344%_
                                                  _%$%g204842205261%_))))
                                            (__tmp208335
                                             (let ((__tmp208337
                                                    (lambda (_%$%g205346205349%_
                                                             _%$%g205347205351%_)
                                                      (cons _%$%g205346205349%_
                                                            _%$%g205347205351%_)))
                                                   (__tmp208336
                                                    (cons _%$%g204844205263%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp208337
                                                __tmp208336
                                                _%$%g204845205264%_))))
                                        (declare (not safe))
                                        (__find __tmp208338 __tmp208335))))
                            (_%__kont207050207051%_
                             _%$%g204840205259%_
                             _%$%g204841205260%_
                             _%$%g204842205261%_
                             _%$%g204843205262%_
                             _%$%g204844205263%_
                             _%$%g204845205264%_)
                            (_%__match207155207156%_
                             _%$%e204846205103%_
                             _%$%hd204847205106%_
                             _%$%tl204848205108%_
                             _%$%e204858205133%_
                             _%$%hd204859205136%_
                             _%$%tl204860205138%_
                             _%$%e204861205141%_
                             _%$%hd204862205144%_
                             _%$%tl204863205146%_
                             _%$%e204864205149%_
                             _%$%hd204865205152%_
                             _%$%tl204866205154%_
                             _%$%e204867205157%_
                             _%$%hd204868205160%_
                             _%$%tl204869205162%_
                             _%$%e204870205165%_
                             _%$%hd204871205168%_
                             _%$%tl204872205170%_
                             _%$%e204873205173%_
                             _%$%hd204874205176%_
                             _%$%tl204875205178%_
                             _%$%e204876205181%_
                             _%$%hd204877205184%_
                             _%$%tl204878205186%_
                             _%$%e204879205189%_
                             _%$%hd204880205192%_
                             _%$%tl204881205194%_)))
                      (_%__match207155207156%_
                       _%$%e204846205103%_
                       _%$%hd204847205106%_
                       _%$%tl204848205108%_
                       _%$%e204858205133%_
                       _%$%hd204859205136%_
                       _%$%tl204860205138%_
                       _%$%e204861205141%_
                       _%$%hd204862205144%_
                       _%$%tl204863205146%_
                       _%$%e204864205149%_
                       _%$%hd204865205152%_
                       _%$%tl204866205154%_
                       _%$%e204867205157%_
                       _%$%hd204868205160%_
                       _%$%tl204869205162%_
                       _%$%e204870205165%_
                       _%$%hd204871205168%_
                       _%$%tl204872205170%_
                       _%$%e204873205173%_
                       _%$%hd204874205176%_
                       _%$%tl204875205178%_
                       _%$%e204876205181%_
                       _%$%hd204877205184%_
                       _%$%tl204878205186%_
                       _%$%e204879205189%_
                       _%$%hd204880205192%_
                       _%$%tl204881205194%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop204885205226%_
                                           _%$%target204882205197%_
                                           '()))
                                        (_%__match207155207156%_
                                         _%$%e204846205103%_
                                         _%$%hd204847205106%_
                                         _%$%tl204848205108%_
                                         _%$%e204858205133%_
                                         _%$%hd204859205136%_
                                         _%$%tl204860205138%_
                                         _%$%e204861205141%_
                                         _%$%hd204862205144%_
                                         _%$%tl204863205146%_
                                         _%$%e204864205149%_
                                         _%$%hd204865205152%_
                                         _%$%tl204866205154%_
                                         _%$%e204867205157%_
                                         _%$%hd204868205160%_
                                         _%$%tl204869205162%_
                                         _%$%e204870205165%_
                                         _%$%hd204871205168%_
                                         _%$%tl204872205170%_
                                         _%$%e204873205173%_
                                         _%$%hd204874205176%_
                                         _%$%tl204875205178%_
                                         _%$%e204876205181%_
                                         _%$%hd204877205184%_
                                         _%$%tl204878205186%_
                                         _%$%e204879205189%_
                                         _%$%hd204880205192%_
                                         _%$%tl204881205194%_))
                                    (_%__match207155207156%_
                                     _%$%e204846205103%_
                                     _%$%hd204847205106%_
                                     _%$%tl204848205108%_
                                     _%$%e204858205133%_
                                     _%$%hd204859205136%_
                                     _%$%tl204860205138%_
                                     _%$%e204861205141%_
                                     _%$%hd204862205144%_
                                     _%$%tl204863205146%_
                                     _%$%e204864205149%_
                                     _%$%hd204865205152%_
                                     _%$%tl204866205154%_
                                     _%$%e204867205157%_
                                     _%$%hd204868205160%_
                                     _%$%tl204869205162%_
                                     _%$%e204870205165%_
                                     _%$%hd204871205168%_
                                     _%$%tl204872205170%_
                                     _%$%e204873205173%_
                                     _%$%hd204874205176%_
                                     _%$%tl204875205178%_
                                     _%$%e204876205181%_
                                     _%$%hd204877205184%_
                                     _%$%tl204878205186%_
                                     _%$%e204879205189%_
                                     _%$%hd204880205192%_
                                     _%$%tl204881205194%_))))
                            (_%__match207155207156%_
                             _%$%e204846205103%_
                             _%$%hd204847205106%_
                             _%$%tl204848205108%_
                             _%$%e204858205133%_
                             _%$%hd204859205136%_
                             _%$%tl204860205138%_
                             _%$%e204861205141%_
                             _%$%hd204862205144%_
                             _%$%tl204863205146%_
                             _%$%e204864205149%_
                             _%$%hd204865205152%_
                             _%$%tl204866205154%_
                             _%$%e204867205157%_
                             _%$%hd204868205160%_
                             _%$%tl204869205162%_
                             _%$%e204870205165%_
                             _%$%hd204871205168%_
                             _%$%tl204872205170%_
                             _%$%e204873205173%_
                             _%$%hd204874205176%_
                             _%$%tl204875205178%_
                             _%$%e204876205181%_
                             _%$%hd204877205184%_
                             _%$%tl204878205186%_
                             _%$%e204879205189%_
                             _%$%hd204880205192%_
                             _%$%tl204881205194%_))
                        (_%__match207155207156%_
                         _%$%e204846205103%_
                         _%$%hd204847205106%_
                         _%$%tl204848205108%_
                         _%$%e204858205133%_
                         _%$%hd204859205136%_
                         _%$%tl204860205138%_
                         _%$%e204861205141%_
                         _%$%hd204862205144%_
                         _%$%tl204863205146%_
                         _%$%e204864205149%_
                         _%$%hd204865205152%_
                         _%$%tl204866205154%_
                         _%$%e204867205157%_
                         _%$%hd204868205160%_
                         _%$%tl204869205162%_
                         _%$%e204870205165%_
                         _%$%hd204871205168%_
                         _%$%tl204872205170%_
                         _%$%e204873205173%_
                         _%$%hd204874205176%_
                         _%$%tl204875205178%_
                         _%$%e204876205181%_
                         _%$%hd204877205184%_
                         _%$%tl204878205186%_
                         _%$%e204879205189%_
                         _%$%hd204880205192%_
                         _%$%tl204881205194%_))
                    (_%__match207155207156%_
                     _%$%e204846205103%_
                     _%$%hd204847205106%_
                     _%$%tl204848205108%_
                     _%$%e204858205133%_
                     _%$%hd204859205136%_
                     _%$%tl204860205138%_
                     _%$%e204861205141%_
                     _%$%hd204862205144%_
                     _%$%tl204863205146%_
                     _%$%e204864205149%_
                     _%$%hd204865205152%_
                     _%$%tl204866205154%_
                     _%$%e204867205157%_
                     _%$%hd204868205160%_
                     _%$%tl204869205162%_
                     _%$%e204870205165%_
                     _%$%hd204871205168%_
                     _%$%tl204872205170%_
                     _%$%e204873205173%_
                     _%$%hd204874205176%_
                     _%$%tl204875205178%_
                     _%$%e204876205181%_
                     _%$%hd204877205184%_
                     _%$%tl204878205186%_
                     _%$%e204879205189%_
                     _%$%hd204880205192%_
                     _%$%tl204881205194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match207155207156%_
                                                     _%$%e204846205103%_
                                                     _%$%hd204847205106%_
                                                     _%$%tl204848205108%_
                                                     _%$%e204858205133%_
                                                     _%$%hd204859205136%_
                                                     _%$%tl204860205138%_
                                                     _%$%e204861205141%_
                                                     _%$%hd204862205144%_
                                                     _%$%tl204863205146%_
                                                     _%$%e204864205149%_
                                                     _%$%hd204865205152%_
                                                     _%$%tl204866205154%_
                                                     _%$%e204867205157%_
                                                     _%$%hd204868205160%_
                                                     _%$%tl204869205162%_
                                                     _%$%e204870205165%_
                                                     _%$%hd204871205168%_
                                                     _%$%tl204872205170%_
                                                     _%$%e204873205173%_
                                                     _%$%hd204874205176%_
                                                     _%$%tl204875205178%_
                                                     _%$%e204876205181%_
                                                     _%$%hd204877205184%_
                                                     _%$%tl204878205186%_
                                                     _%$%e204879205189%_
                                                     _%$%hd204880205192%_
                                                     _%$%tl204881205194%_))))
                                            (_%__match207155207156%_
                                             _%$%e204846205103%_
                                             _%$%hd204847205106%_
                                             _%$%tl204848205108%_
                                             _%$%e204858205133%_
                                             _%$%hd204859205136%_
                                             _%$%tl204860205138%_
                                             _%$%e204861205141%_
                                             _%$%hd204862205144%_
                                             _%$%tl204863205146%_
                                             _%$%e204864205149%_
                                             _%$%hd204865205152%_
                                             _%$%tl204866205154%_
                                             _%$%e204867205157%_
                                             _%$%hd204868205160%_
                                             _%$%tl204869205162%_
                                             _%$%e204870205165%_
                                             _%$%hd204871205168%_
                                             _%$%tl204872205170%_
                                             _%$%e204873205173%_
                                             _%$%hd204874205176%_
                                             _%$%tl204875205178%_
                                             _%$%e204876205181%_
                                             _%$%hd204877205184%_
                                             _%$%tl204878205186%_
                                             _%$%e204879205189%_
                                             _%$%hd204880205192%_
                                             _%$%tl204881205194%_))))
                                    (_%__match207155207156%_
                                     _%$%e204846205103%_
                                     _%$%hd204847205106%_
                                     _%$%tl204848205108%_
                                     _%$%e204858205133%_
                                     _%$%hd204859205136%_
                                     _%$%tl204860205138%_
                                     _%$%e204861205141%_
                                     _%$%hd204862205144%_
                                     _%$%tl204863205146%_
                                     _%$%e204864205149%_
                                     _%$%hd204865205152%_
                                     _%$%tl204866205154%_
                                     _%$%e204867205157%_
                                     _%$%hd204868205160%_
                                     _%$%tl204869205162%_
                                     _%$%e204870205165%_
                                     _%$%hd204871205168%_
                                     _%$%tl204872205170%_
                                     _%$%e204873205173%_
                                     _%$%hd204874205176%_
                                     _%$%tl204875205178%_
                                     _%$%e204876205181%_
                                     _%$%hd204877205184%_
                                     _%$%tl204878205186%_
                                     _%$%e204879205189%_
                                     _%$%hd204880205192%_
                                     _%$%tl204881205194%_))
                                (_%__match207155207156%_
                                 _%$%e204846205103%_
                                 _%$%hd204847205106%_
                                 _%$%tl204848205108%_
                                 _%$%e204858205133%_
                                 _%$%hd204859205136%_
                                 _%$%tl204860205138%_
                                 _%$%e204861205141%_
                                 _%$%hd204862205144%_
                                 _%$%tl204863205146%_
                                 _%$%e204864205149%_
                                 _%$%hd204865205152%_
                                 _%$%tl204866205154%_
                                 _%$%e204867205157%_
                                 _%$%hd204868205160%_
                                 _%$%tl204869205162%_
                                 _%$%e204870205165%_
                                 _%$%hd204871205168%_
                                 _%$%tl204872205170%_
                                 _%$%e204873205173%_
                                 _%$%hd204874205176%_
                                 _%$%tl204875205178%_
                                 _%$%e204876205181%_
                                 _%$%hd204877205184%_
                                 _%$%tl204878205186%_
                                 _%$%e204879205189%_
                                 _%$%hd204880205192%_
                                 _%$%tl204881205194%_))
                            (_%__kont207058207059%_))))
                    (_%__kont207058207059%_))
                (_%__kont207058207059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont207058207059%_))))
                                            (_%__kont207058207059%_))))
                                    (_%__kont207058207059%_))
                                (_%__kont207058207059%_))))
                        (_%__kont207058207059%_))
                    (_%__kont207058207059%_))
                (_%__kont207058207059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont207058207059%_))))
                                        (_%__kont207058207059%_))
                                    (_%__kont207058207059%_))
                                (_%__kont207058207059%_))))
                        (_%__kont207058207059%_))))
                (_%__kont207058207059%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop204852205116%_
                                     _%$%target204849205111%_
                                     '()))))
                               (_%__match207073207074%_
                                (lambda (_%$%e204798205359%_
                                         _%$%hd204799205362%_
                                         _%$%tl204800205364%_
                                         _%__splice207046207047%_
                                         _%$%target204801205367%_
                                         _%$%tl204803205369%_)
                                  (letrec ((_%$%loop204804205372%_
                                            (lambda (_%$%hd204802205375%_
                                                     _%$%arg204808205377%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd204802205375%_))
                                                  (let ((_%$%e204805205379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd204802205375%_))))
                                                    (let ((_%$%lp-tl204807205384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204805205379%_)))
                                                          (_%$%lp-hd204806205382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204805205379%_))))
                                                      (_%$%loop204804205372%_
                                                       _%$%lp-tl204807205384%_
                                                       (cons _%$%lp-hd204806205382%_
                                                             _%$%arg204808205377%_))))
                                                  (let ((_%$%arg204809205387%_
                                                         (reverse _%$%arg204808205377%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl204800205364%_))
                                                        (let ((_%$%e204810205389%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl204800205364%_))))
                  (let ((_%$%tl204812205394%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204810205389%_)))
                        (_%$%hd204811205392%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204810205389%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204811205392%_))
                        (let ((_%$%e204813205397%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204811205392%_))))
                          (let ((_%$%tl204815205402%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204813205397%_)))
                                (_%$%hd204814205400%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204813205397%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd204814205400%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd204814205400%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204815205402%_))
                                        (let ((_%$%e204816205405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204815205402%_))))
                                          (let ((_%$%tl204818205410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204816205405%_)))
                                                (_%$%hd204817205408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204816205405%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd204817205408%_))
                                                (let ((_%$%e204819205413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd204817205408%_))))
                                                  (let ((_%$%tl204821205418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e204819205413%_)))
                                                        (_%$%hd204820205416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e204819205413%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd204820205416%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd204820205416%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl204821205418%_))
                        (let ((_%$%e204822205421%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl204821205418%_))))
                          (let ((_%$%tl204824205426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204822205421%_)))
                                (_%$%hd204823205424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204822205421%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl204824205426%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl204818205410%_))
                                    (let ((_%__splice207048207049%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl204818205410%_
                                              '0))))
                                      (let ((_%$%tl204827205431%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207048207049%_
                                                '1)))
                                            (_%$%target204825205429%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207048207049%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl204827205431%_))
                                            (letrec ((_%$%loop204828205434%_
                                                      (lambda (_%$%hd204826205437%_
                                                               _%$%xarg204832205439%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd204826205437%_))
                                                            (let ((_%$%e204829205441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd204826205437%_))))
                      (let ((_%$%lp-tl204831205446%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e204829205441%_)))
                            (_%$%lp-hd204830205444%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e204829205441%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd204830205444%_))
                            (let ((_%$%e204834205449%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd204830205444%_))))
                              (let ((_%$%tl204836205454%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e204834205449%_)))
                                    (_%$%hd204835205452%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e204834205449%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd204835205452%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd204835205452%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl204836205454%_))
                                            (let ((_%$%e204837205457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl204836205454%_))))
                                              (let ((_%$%tl204839205462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e204837205457%_)))
                                                    (_%$%hd204838205460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e204837205457%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl204839205462%_))
                                                    (_%$%loop204828205434%_
                                                     _%$%lp-tl204831205446%_
                                                     (cons _%$%hd204838205460%_
                                                           _%$%xarg204832205439%_))
                                                    (_%__match207085207086%_
                                                     _%$%e204798205359%_
                                                     _%$%hd204799205362%_
                                                     _%$%tl204800205364%_
                                                     _%__splice207046207047%_
                                                     _%$%target204801205367%_
                                                     _%$%tl204803205369%_))))
                                            (_%__match207085207086%_
                                             _%$%e204798205359%_
                                             _%$%hd204799205362%_
                                             _%$%tl204800205364%_
                                             _%__splice207046207047%_
                                             _%$%target204801205367%_
                                             _%$%tl204803205369%_))
                                        (_%__match207085207086%_
                                         _%$%e204798205359%_
                                         _%$%hd204799205362%_
                                         _%$%tl204800205364%_
                                         _%__splice207046207047%_
                                         _%$%target204801205367%_
                                         _%$%tl204803205369%_))
                                    (_%__match207085207086%_
                                     _%$%e204798205359%_
                                     _%$%hd204799205362%_
                                     _%$%tl204800205364%_
                                     _%__splice207046207047%_
                                     _%$%target204801205367%_
                                     _%$%tl204803205369%_))))
                            (_%__match207085207086%_
                             _%$%e204798205359%_
                             _%$%hd204799205362%_
                             _%$%tl204800205364%_
                             _%__splice207046207047%_
                             _%$%target204801205367%_
                             _%$%tl204803205369%_))))
                    (let ((_%$%xarg204833205465%_
                           (reverse _%$%xarg204832205439%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl204812205394%_))
                          (let ((_%$%g204795205467%_ _%$%xarg204833205465%_)
                                (_%$%g204796205468%_ _%$%hd204823205424%_)
                                (_%$%g204797205469%_ _%$%arg204809205387%_))
                            (if (and (let ((__tmp208339
                                            (let ((__tmp208340
                                                   (lambda (_%$%g205497205500%_
                                                            _%$%g205498205502%_)
                                                     (cons _%$%g205497205500%_
                                                           _%$%g205498205502%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208340
                                               '()
                                               _%$%g204797205469%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp208339))
                                     (let ((__tmp208343
                                            (length (let ((__tmp208344
                                                           (lambda (_%$%g205504205507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g205505205509%_)
                     (cons _%$%g205504205507%_ _%$%g205505205509%_))))
              (declare (not safe))
              (foldr__0 __tmp208344 '() _%$%g204797205469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp208341
                                            (length (let ((__tmp208342
                                                           (lambda (_%$%g205511205514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g205512205516%_)
                     (cons _%$%g205511205514%_ _%$%g205512205516%_))))
              (declare (not safe))
              (foldr__0 __tmp208342 '() _%$%g204795205467%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp208343 __tmp208341))
                                     (let ((__tmp208347
                                            (let ((__tmp208348
                                                   (lambda (_%$%g205518205521%_
                                                            _%$%g205519205523%_)
                                                     (cons _%$%g205518205521%_
                                                           _%$%g205519205523%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208348
                                               '()
                                               _%$%g204797205469%_)))
                                           (__tmp208345
                                            (let ((__tmp208346
                                                   (lambda (_%$%g205525205528%_
                                                            _%$%g205526205530%_)
                                                     (cons _%$%g205525205528%_
                                                           _%$%g205526205530%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208346
                                               '()
                                               _%$%g204795205467%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp208347
                                        __tmp208345))
                                     (not (let ((__tmp208351
                                                 (lambda (_%$%g205532205534%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g205532205534%_
                                                      _%$%g204796205468%_))))
                                                (__tmp208349
                                                 (let ((__tmp208350
                                                        (lambda (_%$%g205536205539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g205537205541%_)
                  (cons _%$%g205536205539%_ _%$%g205537205541%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp208350
                                                    '()
                                                    _%$%g204797205469%_))))
                                            (declare (not safe))
                                            (__find __tmp208351 __tmp208349))))
                                (_%__kont207044207045%_
                                 _%$%g204795205467%_
                                 _%$%g204796205468%_
                                 _%$%g204797205469%_)
                                (_%__match207085207086%_
                                 _%$%e204798205359%_
                                 _%$%hd204799205362%_
                                 _%$%tl204800205364%_
                                 _%__splice207046207047%_
                                 _%$%target204801205367%_
                                 _%$%tl204803205369%_)))
                          (_%__match207085207086%_
                           _%$%e204798205359%_
                           _%$%hd204799205362%_
                           _%$%tl204800205364%_
                           _%__splice207046207047%_
                           _%$%target204801205367%_
                           _%$%tl204803205369%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop204828205434%_
                                               _%$%target204825205429%_
                                               '()))
                                            (_%__match207085207086%_
                                             _%$%e204798205359%_
                                             _%$%hd204799205362%_
                                             _%$%tl204800205364%_
                                             _%__splice207046207047%_
                                             _%$%target204801205367%_
                                             _%$%tl204803205369%_))))
                                    (_%__match207085207086%_
                                     _%$%e204798205359%_
                                     _%$%hd204799205362%_
                                     _%$%tl204800205364%_
                                     _%__splice207046207047%_
                                     _%$%target204801205367%_
                                     _%$%tl204803205369%_))
                                (_%__match207085207086%_
                                 _%$%e204798205359%_
                                 _%$%hd204799205362%_
                                 _%$%tl204800205364%_
                                 _%__splice207046207047%_
                                 _%$%target204801205367%_
                                 _%$%tl204803205369%_))))
                        (_%__match207085207086%_
                         _%$%e204798205359%_
                         _%$%hd204799205362%_
                         _%$%tl204800205364%_
                         _%__splice207046207047%_
                         _%$%target204801205367%_
                         _%$%tl204803205369%_))
                    (_%__match207085207086%_
                     _%$%e204798205359%_
                     _%$%hd204799205362%_
                     _%$%tl204800205364%_
                     _%__splice207046207047%_
                     _%$%target204801205367%_
                     _%$%tl204803205369%_))
                (_%__match207085207086%_
                 _%$%e204798205359%_
                 _%$%hd204799205362%_
                 _%$%tl204800205364%_
                 _%__splice207046207047%_
                 _%$%target204801205367%_
                 _%$%tl204803205369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match207085207086%_
                                                 _%$%e204798205359%_
                                                 _%$%hd204799205362%_
                                                 _%$%tl204800205364%_
                                                 _%__splice207046207047%_
                                                 _%$%target204801205367%_
                                                 _%$%tl204803205369%_))))
                                        (_%__match207085207086%_
                                         _%$%e204798205359%_
                                         _%$%hd204799205362%_
                                         _%$%tl204800205364%_
                                         _%__splice207046207047%_
                                         _%$%target204801205367%_
                                         _%$%tl204803205369%_))
                                    (_%__match207085207086%_
                                     _%$%e204798205359%_
                                     _%$%hd204799205362%_
                                     _%$%tl204800205364%_
                                     _%__splice207046207047%_
                                     _%$%target204801205367%_
                                     _%$%tl204803205369%_))
                                (_%__match207085207086%_
                                 _%$%e204798205359%_
                                 _%$%hd204799205362%_
                                 _%$%tl204800205364%_
                                 _%__splice207046207047%_
                                 _%$%target204801205367%_
                                 _%$%tl204803205369%_))))
                        (_%__match207085207086%_
                         _%$%e204798205359%_
                         _%$%hd204799205362%_
                         _%$%tl204800205364%_
                         _%__splice207046207047%_
                         _%$%target204801205367%_
                         _%$%tl204803205369%_))))
                (_%__match207085207086%_
                 _%$%e204798205359%_
                 _%$%hd204799205362%_
                 _%$%tl204800205364%_
                 _%__splice207046207047%_
                 _%$%target204801205367%_
                 _%$%tl204803205369%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop204804205372%_
                                     _%$%target204801205367%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207042207043%_))
                              (let ((_%$%e204798205359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207042207043%_))))
                                (let ((_%$%tl204800205364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204798205359%_)))
                                      (_%$%hd204799205362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204798205359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd204799205362%_))
                                      (let ((_%__splice207046207047%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd204799205362%_
                                                '0))))
                                        (let ((_%$%tl204803205369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207046207047%_
                                                  '1)))
                                              (_%$%target204801205367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207046207047%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204803205369%_))
                                              (_%__match207073207074%_
                                               _%$%e204798205359%_
                                               _%$%hd204799205362%_
                                               _%$%tl204800205364%_
                                               _%__splice207046207047%_
                                               _%$%target204801205367%_
                                               _%$%tl204803205369%_)
                                              (_%__match207085207086%_
                                               _%$%e204798205359%_
                                               _%$%hd204799205362%_
                                               _%$%tl204800205364%_
                                               _%__splice207046207047%_
                                               _%$%target204801205367%_
                                               _%$%tl204803205369%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl204800205364%_))
                                          (let ((_%$%e204913204970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl204800205364%_))))
                                            (let ((_%$%tl204915204975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e204913204970%_)))
                                                  (_%$%hd204914204973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e204913204970%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd204914204973%_))
                                                  (let ((_%$%e204916204978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd204914204973%_))))
                                                    (let ((_%$%tl204918204983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204916204978%_)))
                                                          (_%$%hd204917204981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204916204978%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd204917204981%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd204917204981%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl204918204983%_))
                          (let ((_%$%e204919204986%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl204918204983%_))))
                            (let ((_%$%tl204921204991%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204919204986%_)))
                                  (_%$%hd204920204989%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204919204986%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd204920204989%_))
                                  (let ((_%$%e204922204994%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd204920204989%_))))
                                    (let ((_%$%tl204924204999%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e204922204994%_)))
                                          (_%$%hd204923204997%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e204922204994%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd204923204997%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd204923204997%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl204924204999%_))
                                                  (let ((_%$%e204925205002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl204924204999%_))))
                                                    (let ((_%$%tl204927205007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204925205002%_)))
                                                          (_%$%hd204926205005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204925205002%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl204927205007%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl204921204991%_))
                      (let ((_%$%e204928205010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl204921204991%_))))
                        (let ((_%$%tl204930205015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204928205010%_)))
                              (_%$%hd204929205013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204928205010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd204929205013%_))
                              (let ((_%$%e204931205018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd204929205013%_))))
                                (let ((_%$%tl204933205023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204931205018%_)))
                                      (_%$%hd204932205021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204931205018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd204932205021%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd204932205021%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204933205023%_))
                                              (let ((_%$%e204934205026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204933205023%_))))
                                                (let ((_%$%tl204936205031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204934205026%_)))
                                                      (_%$%hd204935205029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204934205026%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204936205031%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl204930205015%_))
                                                          (let ((_%$%e204937205034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl204930205015%_))))
                    (let ((_%$%tl204939205039%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204937205034%_)))
                          (_%$%hd204938205037%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204937205034%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd204938205037%_))
                          (let ((_%$%e204940205042%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd204938205037%_))))
                            (let ((_%$%tl204942205047%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204940205042%_)))
                                  (_%$%hd204941205045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204940205042%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd204941205045%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd204941205045%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl204942205047%_))
                                          (let ((_%$%e204943205050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl204942205047%_))))
                                            (let ((_%$%tl204945205055%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e204943205050%_)))
                                                  (_%$%hd204944205053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e204943205050%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl204945205055%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204939205039%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl204915204975%_))
                                                          (_%__match207183207184%_
                                                           _%$%e204798205359%_
                                                           _%$%hd204799205362%_
                                                           _%$%tl204800205364%_
                                                           _%$%e204913204970%_
                                                           _%$%hd204914204973%_
                                                           _%$%tl204915204975%_
                                                           _%$%e204916204978%_
                                                           _%$%hd204917204981%_
                                                           _%$%tl204918204983%_
                                                           _%$%e204919204986%_
                                                           _%$%hd204920204989%_
                                                           _%$%tl204921204991%_
                                                           _%$%e204922204994%_
                                                           _%$%hd204923204997%_
                                                           _%$%tl204924204999%_
                                                           _%$%e204925205002%_
                                                           _%$%hd204926205005%_
                                                           _%$%tl204927205007%_
                                                           _%$%e204928205010%_
                                                           _%$%hd204929205013%_
                                                           _%$%tl204930205015%_
                                                           _%$%e204931205018%_
                                                           _%$%hd204932205021%_
                                                           _%$%tl204933205023%_
                                                           _%$%e204934205026%_
                                                           _%$%hd204935205029%_
                                                           _%$%tl204936205031%_
                                                           _%$%e204937205034%_
                                                           _%$%hd204938205037%_
                                                           _%$%tl204939205039%_
                                                           _%$%e204940205042%_
                                                           _%$%hd204941205045%_
                                                           _%$%tl204942205047%_
                                                           _%$%e204943205050%_
                                                           _%$%hd204944205053%_
                                                           _%$%tl204945205055%_)
                                                          (_%__kont207058207059%_))
                                                      (_%__kont207058207059%_))
                                                  (_%__kont207058207059%_))))
                                          (_%__kont207058207059%_))
                                      (_%__kont207058207059%_))
                                  (_%__kont207058207059%_))))
                          (_%__kont207058207059%_))))
                  (_%__kont207058207059%_))
              (_%__kont207058207059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207058207059%_))
                                          (_%__kont207058207059%_))
                                      (_%__kont207058207059%_))))
                              (_%__kont207058207059%_))))
                      (_%__kont207058207059%_))
                  (_%__kont207058207059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207058207059%_))
                                              (_%__kont207058207059%_))
                                          (_%__kont207058207059%_))))
                                  (_%__kont207058207059%_))))
                          (_%__kont207058207059%_))
                      (_%__kont207058207059%_))
                  (_%__kont207058207059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207058207059%_))))
                                          (_%__kont207058207059%_)))))
                              (_%__kont207058207059%_)))))))
                 (_%dispatch-case-e204108%_
                  (lambda (_%hd204255%_ _%body204256%_)
                    (let* ((_%form204258%_
                            (cons _%hd204255%_ (cons _%body204256%_ '())))
                           (_%__stx207186207187%_ _%form204258%_)
                           (_%$%g204262204386%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx207186207187%_)))))
                      (let ((_%__kont207188207189%_
                             (lambda (_%$%g204264204751%_
                                      _%$%g204265204752%_
                                      _%$%g204266204753%_)
                               (let ((__tmp208352
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g204265204752%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self204104%_
                                  __tmp208352))))
                            (_%__kont207194207195%_
                             (lambda (_%$%g204309204603%_
                                      _%$%g204310204604%_
                                      _%$%g204311204605%_
                                      _%$%g204312204606%_)
                               (let ((__tmp208353
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g204309204603%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self204104%_
                                  __tmp208353))))
                            (_%__kont207198207199%_
                             (lambda (_%$%g204349204471%_
                                      _%$%g204350204472%_
                                      _%$%g204351204473%_)
                               (let ((__tmp208354
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g204349204471%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self204104%_
                                  __tmp208354)))))
                        (let* ((_%__match207295207296%_
                                (lambda (_%$%e204352204391%_
                                         _%$%hd204353204394%_
                                         _%$%tl204354204396%_
                                         _%$%e204355204399%_
                                         _%$%hd204356204402%_
                                         _%$%tl204357204404%_
                                         _%$%e204358204407%_
                                         _%$%hd204359204410%_
                                         _%$%tl204360204412%_
                                         _%$%e204361204415%_
                                         _%$%hd204362204418%_
                                         _%$%tl204363204420%_
                                         _%$%e204364204423%_
                                         _%$%hd204365204426%_
                                         _%$%tl204366204428%_
                                         _%$%e204367204431%_
                                         _%$%hd204368204434%_
                                         _%$%tl204369204436%_
                                         _%$%e204370204439%_
                                         _%$%hd204371204442%_
                                         _%$%tl204372204444%_
                                         _%$%e204373204447%_
                                         _%$%hd204374204450%_
                                         _%$%tl204375204452%_
                                         _%$%e204376204455%_
                                         _%$%hd204377204458%_
                                         _%$%tl204378204460%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204372204444%_))
                                      (let ((_%$%e204379204463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204372204444%_))))
                                        (let ((_%$%tl204381204468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204379204463%_)))
                                              (_%$%hd204380204466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204379204463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204381204468%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl204357204404%_))
                                                  (_%__kont207198207199%_
                                                   _%$%hd204377204458%_
                                                   _%$%hd204368204434%_
                                                   _%$%hd204353204394%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g204262204386%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g204262204386%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g204262204386%_)))))
                               (_%__match207225207226%_
                                (lambda (_%$%e204313204509%_
                                         _%$%hd204314204512%_
                                         _%$%tl204315204514%_
                                         _%__splice207196207197%_
                                         _%$%target204316204517%_
                                         _%$%tl204318204519%_)
                                  (letrec ((_%$%loop204319204522%_
                                            (lambda (_%$%hd204317204525%_
                                                     _%$%arg204323204527%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd204317204525%_))
                                                  (let ((_%$%e204320204529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd204317204525%_))))
                                                    (let ((_%$%lp-tl204322204534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204320204529%_)))
                                                          (_%$%lp-hd204321204532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204320204529%_))))
                                                      (_%$%loop204319204522%_
                                                       _%$%lp-tl204322204534%_
                                                       (cons _%$%lp-hd204321204532%_
                                                             _%$%arg204323204527%_))))
                                                  (let ((_%$%arg204324204537%_
                                                         (reverse _%$%arg204323204527%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl204315204514%_))
                                                        (let ((_%$%e204325204539%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl204315204514%_))))
                  (let ((_%$%tl204327204544%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204325204539%_)))
                        (_%$%hd204326204542%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204325204539%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204326204542%_))
                        (let ((_%$%e204328204547%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204326204542%_))))
                          (let ((_%$%tl204330204552%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204328204547%_)))
                                (_%$%hd204329204550%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204328204547%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd204329204550%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd204329204550%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204330204552%_))
                                        (let ((_%$%e204331204555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204330204552%_))))
                                          (let ((_%$%tl204333204560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204331204555%_)))
                                                (_%$%hd204332204558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204331204555%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd204332204558%_))
                                                (let ((_%$%e204334204563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd204332204558%_))))
                                                  (let ((_%$%tl204336204568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e204334204563%_)))
                                                        (_%$%hd204335204566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e204334204563%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd204335204566%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd204335204566%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl204336204568%_))
                        (let ((_%$%e204337204571%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl204336204568%_))))
                          (let ((_%$%tl204339204576%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204337204571%_)))
                                (_%$%hd204338204574%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204337204571%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl204339204576%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl204333204560%_))
                                    (let ((_%$%e204340204579%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl204333204560%_))))
                                      (let ((_%$%tl204342204584%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e204340204579%_)))
                                            (_%$%hd204341204582%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e204340204579%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd204341204582%_))
                                            (let ((_%$%e204343204587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd204341204582%_))))
                                              (let ((_%$%tl204345204592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e204343204587%_)))
                                                    (_%$%hd204344204590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e204343204587%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd204344204590%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd204344204590%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl204345204592%_))
                                                            (let ((_%$%e204346204595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl204345204592%_))))
                      (let ((_%$%tl204348204600%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e204346204595%_)))
                            (_%$%hd204347204598%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e204346204595%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl204348204600%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl204327204544%_))
                                (_%__kont207194207195%_
                                 _%$%hd204347204598%_
                                 _%$%hd204338204574%_
                                 _%$%tl204318204519%_
                                 _%$%arg204324204537%_)
                                (_%__match207295207296%_
                                 _%$%e204313204509%_
                                 _%$%hd204314204512%_
                                 _%$%tl204315204514%_
                                 _%$%e204325204539%_
                                 _%$%hd204326204542%_
                                 _%$%tl204327204544%_
                                 _%$%e204328204547%_
                                 _%$%hd204329204550%_
                                 _%$%tl204330204552%_
                                 _%$%e204331204555%_
                                 _%$%hd204332204558%_
                                 _%$%tl204333204560%_
                                 _%$%e204334204563%_
                                 _%$%hd204335204566%_
                                 _%$%tl204336204568%_
                                 _%$%e204337204571%_
                                 _%$%hd204338204574%_
                                 _%$%tl204339204576%_
                                 _%$%e204340204579%_
                                 _%$%hd204341204582%_
                                 _%$%tl204342204584%_
                                 _%$%e204343204587%_
                                 _%$%hd204344204590%_
                                 _%$%tl204345204592%_
                                 _%$%e204346204595%_
                                 _%$%hd204347204598%_
                                 _%$%tl204348204600%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g204262204386%_)))))
                    (let () (declare (not safe)) (_%$%g204262204386%_)))
                (let () (declare (not safe)) (_%$%g204262204386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g204262204386%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g204262204386%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g204262204386%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g204262204386%_)))))
                        (let () (declare (not safe)) (_%$%g204262204386%_)))
                    (let () (declare (not safe)) (_%$%g204262204386%_)))
                (let () (declare (not safe)) (_%$%g204262204386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g204262204386%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g204262204386%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g204262204386%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g204262204386%_)))))
                        (let () (declare (not safe)) (_%$%g204262204386%_)))))
                (let () (declare (not safe)) (_%$%g204262204386%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop204319204522%_
                                     _%$%target204316204517%_
                                     '()))))
                               (_%__match207213207214%_
                                (lambda (_%$%e204267204643%_
                                         _%$%hd204268204646%_
                                         _%$%tl204269204648%_
                                         _%__splice207190207191%_
                                         _%$%target204270204651%_
                                         _%$%tl204272204653%_)
                                  (letrec ((_%$%loop204273204656%_
                                            (lambda (_%$%hd204271204659%_
                                                     _%$%arg204277204661%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd204271204659%_))
                                                  (let ((_%$%e204274204663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd204271204659%_))))
                                                    (let ((_%$%lp-tl204276204668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204274204663%_)))
                                                          (_%$%lp-hd204275204666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204274204663%_))))
                                                      (_%$%loop204273204656%_
                                                       _%$%lp-tl204276204668%_
                                                       (cons _%$%lp-hd204275204666%_
                                                             _%$%arg204277204661%_))))
                                                  (let ((_%$%arg204278204671%_
                                                         (reverse _%$%arg204277204661%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl204269204648%_))
                                                        (let ((_%$%e204279204673%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl204269204648%_))))
                  (let ((_%$%tl204281204678%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204279204673%_)))
                        (_%$%hd204280204676%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204279204673%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204280204676%_))
                        (let ((_%$%e204282204681%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204280204676%_))))
                          (let ((_%$%tl204284204686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204282204681%_)))
                                (_%$%hd204283204684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204282204681%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd204283204684%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd204283204684%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204284204686%_))
                                        (let ((_%$%e204285204689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204284204686%_))))
                                          (let ((_%$%tl204287204694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204285204689%_)))
                                                (_%$%hd204286204692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204285204689%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd204286204692%_))
                                                (let ((_%$%e204288204697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd204286204692%_))))
                                                  (let ((_%$%tl204290204702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e204288204697%_)))
                                                        (_%$%hd204289204700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e204288204697%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd204289204700%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd204289204700%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl204290204702%_))
                        (let ((_%$%e204291204705%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl204290204702%_))))
                          (let ((_%$%tl204293204710%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204291204705%_)))
                                (_%$%hd204292204708%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204291204705%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl204293204710%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl204287204694%_))
                                    (let ((_%__splice207192207193%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl204287204694%_
                                              '0))))
                                      (let ((_%$%tl204296204715%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207192207193%_
                                                '1)))
                                            (_%$%target204294204713%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207192207193%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl204296204715%_))
                                            (letrec ((_%$%loop204297204718%_
                                                      (lambda (_%$%hd204295204721%_
                                                               _%$%xarg204301204723%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd204295204721%_))
                                                            (let ((_%$%e204298204725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd204295204721%_))))
                      (let ((_%$%lp-tl204300204730%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e204298204725%_)))
                            (_%$%lp-hd204299204728%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e204298204725%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd204299204728%_))
                            (let ((_%$%e204303204733%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd204299204728%_))))
                              (let ((_%$%tl204305204738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e204303204733%_)))
                                    (_%$%hd204304204736%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e204303204733%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd204304204736%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd204304204736%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl204305204738%_))
                                            (let ((_%$%e204306204741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl204305204738%_))))
                                              (let ((_%$%tl204308204746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e204306204741%_)))
                                                    (_%$%hd204307204744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e204306204741%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl204308204746%_))
                                                    (_%$%loop204297204718%_
                                                     _%$%lp-tl204300204730%_
                                                     (cons _%$%hd204307204744%_
                                                           _%$%xarg204301204723%_))
                                                    (_%__match207225207226%_
                                                     _%$%e204267204643%_
                                                     _%$%hd204268204646%_
                                                     _%$%tl204269204648%_
                                                     _%__splice207190207191%_
                                                     _%$%target204270204651%_
                                                     _%$%tl204272204653%_))))
                                            (_%__match207225207226%_
                                             _%$%e204267204643%_
                                             _%$%hd204268204646%_
                                             _%$%tl204269204648%_
                                             _%__splice207190207191%_
                                             _%$%target204270204651%_
                                             _%$%tl204272204653%_))
                                        (_%__match207225207226%_
                                         _%$%e204267204643%_
                                         _%$%hd204268204646%_
                                         _%$%tl204269204648%_
                                         _%__splice207190207191%_
                                         _%$%target204270204651%_
                                         _%$%tl204272204653%_))
                                    (_%__match207225207226%_
                                     _%$%e204267204643%_
                                     _%$%hd204268204646%_
                                     _%$%tl204269204648%_
                                     _%__splice207190207191%_
                                     _%$%target204270204651%_
                                     _%$%tl204272204653%_))))
                            (_%__match207225207226%_
                             _%$%e204267204643%_
                             _%$%hd204268204646%_
                             _%$%tl204269204648%_
                             _%__splice207190207191%_
                             _%$%target204270204651%_
                             _%$%tl204272204653%_))))
                    (let ((_%$%xarg204302204749%_
                           (reverse _%$%xarg204301204723%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl204281204678%_))
                          (_%__kont207188207189%_
                           _%$%xarg204302204749%_
                           _%$%hd204292204708%_
                           _%$%arg204278204671%_)
                          (_%__match207225207226%_
                           _%$%e204267204643%_
                           _%$%hd204268204646%_
                           _%$%tl204269204648%_
                           _%__splice207190207191%_
                           _%$%target204270204651%_
                           _%$%tl204272204653%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop204297204718%_
                                               _%$%target204294204713%_
                                               '()))
                                            (_%__match207225207226%_
                                             _%$%e204267204643%_
                                             _%$%hd204268204646%_
                                             _%$%tl204269204648%_
                                             _%__splice207190207191%_
                                             _%$%target204270204651%_
                                             _%$%tl204272204653%_))))
                                    (_%__match207225207226%_
                                     _%$%e204267204643%_
                                     _%$%hd204268204646%_
                                     _%$%tl204269204648%_
                                     _%__splice207190207191%_
                                     _%$%target204270204651%_
                                     _%$%tl204272204653%_))
                                (_%__match207225207226%_
                                 _%$%e204267204643%_
                                 _%$%hd204268204646%_
                                 _%$%tl204269204648%_
                                 _%__splice207190207191%_
                                 _%$%target204270204651%_
                                 _%$%tl204272204653%_))))
                        (_%__match207225207226%_
                         _%$%e204267204643%_
                         _%$%hd204268204646%_
                         _%$%tl204269204648%_
                         _%__splice207190207191%_
                         _%$%target204270204651%_
                         _%$%tl204272204653%_))
                    (_%__match207225207226%_
                     _%$%e204267204643%_
                     _%$%hd204268204646%_
                     _%$%tl204269204648%_
                     _%__splice207190207191%_
                     _%$%target204270204651%_
                     _%$%tl204272204653%_))
                (_%__match207225207226%_
                 _%$%e204267204643%_
                 _%$%hd204268204646%_
                 _%$%tl204269204648%_
                 _%__splice207190207191%_
                 _%$%target204270204651%_
                 _%$%tl204272204653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match207225207226%_
                                                 _%$%e204267204643%_
                                                 _%$%hd204268204646%_
                                                 _%$%tl204269204648%_
                                                 _%__splice207190207191%_
                                                 _%$%target204270204651%_
                                                 _%$%tl204272204653%_))))
                                        (_%__match207225207226%_
                                         _%$%e204267204643%_
                                         _%$%hd204268204646%_
                                         _%$%tl204269204648%_
                                         _%__splice207190207191%_
                                         _%$%target204270204651%_
                                         _%$%tl204272204653%_))
                                    (_%__match207225207226%_
                                     _%$%e204267204643%_
                                     _%$%hd204268204646%_
                                     _%$%tl204269204648%_
                                     _%__splice207190207191%_
                                     _%$%target204270204651%_
                                     _%$%tl204272204653%_))
                                (_%__match207225207226%_
                                 _%$%e204267204643%_
                                 _%$%hd204268204646%_
                                 _%$%tl204269204648%_
                                 _%__splice207190207191%_
                                 _%$%target204270204651%_
                                 _%$%tl204272204653%_))))
                        (_%__match207225207226%_
                         _%$%e204267204643%_
                         _%$%hd204268204646%_
                         _%$%tl204269204648%_
                         _%__splice207190207191%_
                         _%$%target204270204651%_
                         _%$%tl204272204653%_))))
                (_%__match207225207226%_
                 _%$%e204267204643%_
                 _%$%hd204268204646%_
                 _%$%tl204269204648%_
                 _%__splice207190207191%_
                 _%$%target204270204651%_
                 _%$%tl204272204653%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop204273204656%_
                                     _%$%target204270204651%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207186207187%_))
                              (let ((_%$%e204267204643%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207186207187%_))))
                                (let ((_%$%tl204269204648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204267204643%_)))
                                      (_%$%hd204268204646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204267204643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd204268204646%_))
                                      (let ((_%__splice207190207191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd204268204646%_
                                                '0))))
                                        (let ((_%$%tl204272204653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207190207191%_
                                                  '1)))
                                              (_%$%target204270204651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207190207191%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204272204653%_))
                                              (_%__match207213207214%_
                                               _%$%e204267204643%_
                                               _%$%hd204268204646%_
                                               _%$%tl204269204648%_
                                               _%__splice207190207191%_
                                               _%$%target204270204651%_
                                               _%$%tl204272204653%_)
                                              (_%__match207225207226%_
                                               _%$%e204267204643%_
                                               _%$%hd204268204646%_
                                               _%$%tl204269204648%_
                                               _%__splice207190207191%_
                                               _%$%target204270204651%_
                                               _%$%tl204272204653%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl204269204648%_))
                                          (let ((_%$%e204355204399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl204269204648%_))))
                                            (let ((_%$%tl204357204404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e204355204399%_)))
                                                  (_%$%hd204356204402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e204355204399%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd204356204402%_))
                                                  (let ((_%$%e204358204407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd204356204402%_))))
                                                    (let ((_%$%tl204360204412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204358204407%_)))
                                                          (_%$%hd204359204410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204358204407%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd204359204410%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd204359204410%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl204360204412%_))
                          (let ((_%$%e204361204415%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl204360204412%_))))
                            (let ((_%$%tl204363204420%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204361204415%_)))
                                  (_%$%hd204362204418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204361204415%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd204362204418%_))
                                  (let ((_%$%e204364204423%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd204362204418%_))))
                                    (let ((_%$%tl204366204428%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e204364204423%_)))
                                          (_%$%hd204365204426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e204364204423%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd204365204426%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd204365204426%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl204366204428%_))
                                                  (let ((_%$%e204367204431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl204366204428%_))))
                                                    (let ((_%$%tl204369204436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204367204431%_)))
                                                          (_%$%hd204368204434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204367204431%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl204369204436%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl204363204420%_))
                      (let ((_%$%e204370204439%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl204363204420%_))))
                        (let ((_%$%tl204372204444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204370204439%_)))
                              (_%$%hd204371204442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204370204439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd204371204442%_))
                              (let ((_%$%e204373204447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd204371204442%_))))
                                (let ((_%$%tl204375204452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204373204447%_)))
                                      (_%$%hd204374204450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204373204447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd204374204450%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd204374204450%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204375204452%_))
                                              (let ((_%$%e204376204455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204375204452%_))))
                                                (let ((_%$%tl204378204460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204376204455%_)))
                                                      (_%$%hd204377204458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204376204455%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204378204460%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl204372204444%_))
                                                          (let ((_%$%e204379204463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl204372204444%_))))
                    (let ((_%$%tl204381204468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204379204463%_)))
                          (_%$%hd204380204466%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204379204463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl204381204468%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl204357204404%_))
                              (_%__kont207198207199%_
                               _%$%hd204377204458%_
                               _%$%hd204368204434%_
                               _%$%hd204268204646%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g204262204386%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g204262204386%_)))))
                  (let () (declare (not safe)) (_%$%g204262204386%_)))
              (let () (declare (not safe)) (_%$%g204262204386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g204262204386%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g204262204386%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g204262204386%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g204262204386%_)))))
                      (let () (declare (not safe)) (_%$%g204262204386%_)))
                  (let () (declare (not safe)) (_%$%g204262204386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g204262204386%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g204262204386%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g204262204386%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g204262204386%_)))))
                          (let () (declare (not safe)) (_%$%g204262204386%_)))
                      (let () (declare (not safe)) (_%$%g204262204386%_)))
                  (let () (declare (not safe)) (_%$%g204262204386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g204262204386%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g204262204386%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g204262204386%_))))))))
                 (_%generate1204109%_
                  (lambda (_%args204240%_
                           _%arglen204241%_
                           _%hd204242%_
                           _%body204243%_)
                    (let* ((_%len204245%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd204242%_)))
                           (_%condition204250%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd204242%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen204241%_
                                                (cons _%len204245%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen204241%_ (cons _%len204245%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len204245%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen204241%_
                                                    (cons _%len204245%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen204241%_ (cons _%len204245%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch204252%_
                            (if (_%dispatch-case?204107%_
                                 _%hd204242%_
                                 _%body204243%_)
                                (_%dispatch-case-e204108%_
                                 _%hd204242%_
                                 _%body204243%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self204104%_
                                 _%hd204242%_
                                 _%body204243%_))))
                      (cons _%condition204250%_
                            (cons (cons 'apply
                                        (cons _%dispatch204252%_
                                              (cons _%args204240%_ '())))
                                  '()))))))
          (let* ((_%$%g204111204139%_
                  (lambda (_%$%g204112204136%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g204112204136%_))))
                 (_%$%g204110204237%_
                  (lambda (_%$%g204112204142%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g204112204142%_))
                        (let ((_%$%e204115204144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g204112204142%_))))
                          (let ((_%$%hd204116204147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204115204144%_)))
                                (_%$%tl204117204149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204115204144%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl204117204149%_))
                                (let ((_g208355_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl204117204149%_
                                          '0))))
                                  (begin
                                    (let ((_g208356_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g208355_)
                                                 (##values-length _g208355_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g208356_ 2)))
                                          (error "Context expects 2 values"
                                                 _g208356_)))
                                    (let ((_%$%target204118204152%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208355_ 0)))
                                          (_%$%tl204120204154%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208355_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl204120204154%_))
                                          (letrec ((_%$%loop204121204157%_
                                                    (lambda (_%$%hd204119204160%_
                                                             _%$%body204125204162%_
                                                             _%$%hd204126204163%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd204119204160%_))
                                                          (let ((_%$%e204122204165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd204119204160%_))))
                    (let ((_%$%lp-hd204123204168%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204122204165%_)))
                          (_%$%lp-tl204124204170%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204122204165%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd204123204168%_))
                          (let ((_%$%e204129204173%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd204123204168%_))))
                            (let ((_%$%hd204130204176%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204129204173%_)))
                                  (_%$%tl204131204178%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204129204173%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl204131204178%_))
                                  (let ((_%$%e204132204181%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl204131204178%_))))
                                    (let ((_%$%hd204133204184%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e204132204181%_)))
                                          (_%$%tl204134204186%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e204132204181%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl204134204186%_))
                                          (_%$%loop204121204157%_
                                           _%$%lp-tl204124204170%_
                                           (cons _%$%hd204133204184%_
                                                 _%$%body204125204162%_)
                                           (cons _%$%hd204130204176%_
                                                 _%$%hd204126204163%_))
                                          (_%$%g204111204139%_
                                           _%$%g204112204142%_))))
                                  (_%$%g204111204139%_ _%$%g204112204142%_))))
                          (_%$%g204111204139%_ _%$%g204112204142%_))))
                  (let ((_%$%body204127204189%_
                         (reverse _%$%body204125204162%_))
                        (_%$%hd204128204190%_ (reverse _%$%hd204126204163%_)))
                    (let ((_%args204212%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen204213%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name204214%_
                           (let ((_%$e204209%_
                                  (let ((__tmp208357
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp208357 _%stx204105%_))))
                             (if _%$e204209%_
                                 _%$e204209%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args204212%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen204213%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args204212%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args204212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp208361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name204214%_
                                                             (cons _%args204212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '()))
                              (__tmp208358
                               (map (lambda (_%$%g204215204218%_
                                             _%$%g204216204220%_)
                                      (_%generate1204109%_
                                       _%args204212%_
                                       _%arglen204213%_
                                       _%$%g204215204218%_
                                       _%$%g204216204220%_))
                                    (let ((__tmp208359
                                           (lambda (_%$%g204222204225%_
                                                    _%$%g204223204227%_)
                                             (cons _%$%g204222204225%_
                                                   _%$%g204223204227%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp208359
                                       '()
                                       _%$%hd204128204190%_))
                                    (let ((__tmp208360
                                           (lambda (_%$%g204229204232%_
                                                    _%$%g204230204234%_)
                                             (cons _%$%g204229204232%_
                                                   _%$%g204230204234%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp208360
                                       '()
                                       _%$%body204127204189%_)))))
                          (declare (not safe))
                          (foldr__0 cons __tmp208361 __tmp208358)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop204121204157%_
                                             _%$%target204118204152%_
                                             '()
                                             '()))
                                          (_%$%g204111204139%_
                                           _%$%g204112204142%_)))))
                                (_%$%g204111204139%_ _%$%g204112204142%_))))
                        (_%$%g204111204139%_ _%$%g204112204142%_)))))
            (_%$%g204110204237%_ _%stx204105%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self203341%_ _%stx203342%_ _%compiled-body?203343%_)
        (letrec ((_%generate-simple203345%_
                  (lambda (_%hd204089%_ _%body204090%_)
                    (_%coalesce-boolean203346%_
                     (_%simplify-let203347%_
                      (gxc#generate-runtime-simple-let
                       _%self203341%_
                       'let
                       _%hd204089%_
                       _%body204090%_
                       _%compiled-body?203343%_)))))
                 (_%coalesce-boolean203346%_
                  (lambda (_%code203950%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code203951203977%_ _%code203950%_)
                               (_%$%else203953203985%_
                                (lambda () _%code203950%_))
                               (_%$%K203955204022%_
                                (lambda (_%expr2203988%_
                                         _%expr1203989%_
                                         _%id203990%_)
                                  (let* ((_%$%expr2203991203999%_
                                          _%expr2203988%_)
                                         (_%$%else203993204007%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1203989%_
                                                        (cons _%expr2203988%_
                                                              '())))))
                                         (_%$%K203995204012%_
                                          (lambda (_%exprs204010%_)
                                            (cons 'or
                                                  (cons _%expr1203989%_
                                                        _%exprs204010%_)))))
                                    (if (pair? _%$%expr2203991203999%_)
                                        (let ((_%$%hd203996204015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2203991203999%_)))
                                              (_%$%tl203997204017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2203991203999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd203996204015%_
                                                       'or))
                                              (let ((_%exprs204020%_
                                                     _%$%tl203997204017%_))
                                                (_%$%K203995204012%_
                                                 _%exprs204020%_))
                                              (_%$%else203993204007%_)))
                                        (_%$%else203993204007%_))))))
                          (if (pair? _%$%code203951203977%_)
                              (let ((_%$%hd203956204025%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code203951203977%_)))
                                    (_%$%tl203957204027%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code203951203977%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd203956204025%_ 'let))
                                    (if (pair? _%$%tl203957204027%_)
                                        (let ((_%$%hd203958204030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl203957204027%_)))
                                              (_%$%tl203959204032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl203957204027%_))))
                                          (if (pair? _%$%hd203958204030%_)
                                              (let ((_%$%hd203970204035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd203958204030%_)))
                                                    (_%$%tl203971204037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd203958204030%_))))
                                                (if (pair? _%$%hd203970204035%_)
                                                    (let ((_%$%hd203972204040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd203970204035%_)))
                                                          (_%$%tl203973204042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd203970204035%_))))
                                                      (let ((_%id204045%_
                                                             _%$%hd203972204040%_))
                                                        (if (pair? _%$%tl203973204042%_)
                                                            (let ((_%$%hd203974204047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl203973204042%_)))
                          (_%$%tl203975204049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl203973204042%_))))
                      (let ((_%expr1204052%_ _%$%hd203974204047%_))
                        (if (null? _%$%tl203975204049%_)
                            (if (null? _%$%tl203971204037%_)
                                (if (pair? _%$%tl203959204032%_)
                                    (let ((_%$%hd203960204054%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl203959204032%_)))
                                          (_%$%tl203961204056%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl203959204032%_))))
                                      (if (pair? _%$%hd203960204054%_)
                                          (let ((_%$%hd203962204059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd203960204054%_)))
                                                (_%$%tl203963204061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd203960204054%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd203962204059%_
                                                         'if))
                                                (if (pair? _%$%tl203963204061%_)
                                                    (let ((_%$%hd203964204064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl203963204061%_)))
                                                          (_%$%tl203965204066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl203963204061%_))))
                                                      (if (eq? _%$%hd203964204064%_
                                                               _%id204045%_)
                                                          (if (pair? _%$%tl203965204066%_)
                                                              (let ((_%$%hd203966204073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl203965204066%_)))
                            (_%$%tl203967204075%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl203965204066%_))))
                        (if (eq? _%$%hd203966204073%_ _%id204045%_)
                            (if (pair? _%$%tl203967204075%_)
                                (let ((_%$%hd203968204082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl203967204075%_)))
                                      (_%$%tl203969204084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl203967204075%_))))
                                  (let ((_%expr2204087%_ _%$%hd203968204082%_))
                                    (if (null? _%$%tl203969204084%_)
                                        (if (null? _%$%tl203961204056%_)
                                            (_%$%K203955204022%_
                                             _%expr2204087%_
                                             _%expr1204052%_
                                             _%id204045%_)
                                            (_%$%else203953203985%_))
                                        (_%$%else203953203985%_))))
                                (_%$%else203953203985%_))
                            (_%$%else203953203985%_)))
                      (_%$%else203953203985%_))
                  (_%$%else203953203985%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else203953203985%_))
                                                (_%$%else203953203985%_)))
                                          (_%$%else203953203985%_)))
                                    (_%$%else203953203985%_))
                                (_%$%else203953203985%_))
                            (_%$%else203953203985%_))))
                    (_%$%else203953203985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else203953203985%_)))
                                              (_%$%else203953203985%_)))
                                        (_%$%else203953203985%_))
                                    (_%$%else203953203985%_)))
                              (_%$%else203953203985%_)))
                        _%code203950%_)))
                 (_%simplify-let203347%_
                  (lambda (_%code203649%_)
                    (let* ((_%$%code203650203722%_ _%code203649%_)
                           (_%$%else203655203730%_ (lambda () _%code203649%_)))
                      (let ((_%$%K203714203930%_
                             (lambda (_%expr203928%_) _%expr203928%_))
                            (_%$%K203697203876%_
                             (lambda (_%body203872%_
                                      _%expr203873%_
                                      _%id203874%_)
                               (cons 'let
                                     (cons (cons (cons _%id203874%_
                                                       (cons _%expr203873%_
                                                             '()))
                                                 '())
                                           _%body203872%_))))
                            (_%$%K203674203800%_
                             (lambda (_%body203794%_
                                      _%expr2203795%_
                                      _%id2203796%_
                                      _%expr1203797%_
                                      _%id1203798%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1203798%_
                                                       (cons _%expr1203797%_
                                                             '()))
                                                 (cons (cons _%id2203796%_
                                                             (cons _%expr2203795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body203794%_))))
                            (_%$%K203657203739%_
                             (lambda (_%body203734%_
                                      _%bind203735%_
                                      _%expr1203736%_
                                      _%id1203737%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1203737%_
                                                       (cons _%expr1203736%_
                                                             '()))
                                                 _%bind203735%_)
                                           _%body203734%_)))))
                        (if (pair? _%$%code203650203722%_)
                            (let ((_%$%tl203716203935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code203650203722%_)))
                                  (_%$%hd203715203933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code203650203722%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd203715203933%_ 'let))
                                  (if (pair? _%$%tl203716203935%_)
                                      (let ((_%$%tl203718203940%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl203716203935%_)))
                                            (_%$%hd203717203938%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl203716203935%_))))
                                        (if (null? _%$%hd203717203938%_)
                                            (if (pair? _%$%tl203718203940%_)
                                                (let ((_%$%tl203720203945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl203718203940%_)))
                                                      (_%$%hd203719203943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl203718203940%_))))
                                                  (if (null? _%$%tl203720203945%_)
                                                      (let ((_%expr203948%_
                                                             _%$%hd203719203943%_))
                                                        (_%$%K203714203930%_
                                                         _%expr203948%_))
                                                      (_%$%else203655203730%_)))
                                                (_%$%else203655203730%_))
                                            (if (pair? _%$%hd203717203938%_)
                                                (let ((_%$%tl203709203891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd203717203938%_)))
                                                      (_%$%hd203708203889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd203717203938%_))))
                                                  (if (pair? _%$%hd203708203889%_)
                                                      (let ((_%$%tl203711203896%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd203708203889%_)))
                    (_%$%hd203710203894%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd203708203889%_))))
                (if (pair? _%$%tl203711203896%_)
                    (let ((_%$%tl203713203903%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl203711203896%_)))
                          (_%$%hd203712203901%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl203711203896%_))))
                      (if (null? _%$%tl203713203903%_)
                          (if (null? _%$%tl203709203891%_)
                              (if (pair? _%$%tl203718203940%_)
                                  (let ((_%$%tl203703203910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl203718203940%_)))
                                        (_%$%hd203702203908%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl203718203940%_))))
                                    (if (pair? _%$%hd203702203908%_)
                                        (let ((_%$%tl203705203915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd203702203908%_)))
                                              (_%$%hd203704203913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd203702203908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd203704203913%_
                                                       'let))
                                              (if (pair? _%$%tl203705203915%_)
                                                  (let ((_%$%tl203707203920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl203705203915%_)))
                                                        (_%$%hd203706203918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl203705203915%_))))
                                                    (if (null? _%$%hd203706203918%_)
                                                        (if (null? _%$%tl203703203910%_)
                                                            (let ((_%id203899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd203710203894%_)
                          (_%expr203906%_ _%$%hd203712203901%_)
                          (_%body203923%_ _%$%tl203707203920%_))
                      (_%$%K203697203876%_
                       _%body203923%_
                       _%expr203906%_
                       _%id203899%_))
                    (_%$%else203655203730%_))
                (if (pair? _%$%hd203706203918%_)
                    (let ((_%$%tl203686203849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd203706203918%_)))
                          (_%$%hd203685203847%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd203706203918%_))))
                      (if (pair? _%$%hd203685203847%_)
                          (let ((_%$%tl203688203854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd203685203847%_)))
                                (_%$%hd203687203852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd203685203847%_))))
                            (if (pair? _%$%tl203688203854%_)
                                (let ((_%$%tl203690203861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl203688203854%_)))
                                      (_%$%hd203689203859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl203688203854%_))))
                                  (if (null? _%$%tl203690203861%_)
                                      (if (null? _%$%tl203686203849%_)
                                          (if (null? _%$%tl203703203910%_)
                                              (let ((_%id1203823%_
                                                     _%$%hd203710203894%_)
                                                    (_%expr1203830%_
                                                     _%$%hd203712203901%_)
                                                    (_%id2203857%_
                                                     _%$%hd203687203852%_)
                                                    (_%expr2203864%_
                                                     _%$%hd203689203859%_)
                                                    (_%body203866%_
                                                     _%$%tl203707203920%_))
                                                (_%$%K203674203800%_
                                                 _%body203866%_
                                                 _%expr2203864%_
                                                 _%id2203857%_
                                                 _%expr1203830%_
                                                 _%id1203823%_))
                                              (_%$%else203655203730%_))
                                          (_%$%else203655203730%_))
                                      (_%$%else203655203730%_)))
                                (_%$%else203655203730%_)))
                          (_%$%else203655203730%_)))
                    (_%$%else203655203730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else203655203730%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd203704203913%_
                                                           'let*))
                                                  (if (pair? _%$%tl203705203915%_)
                                                      (let ((_%$%tl203667203783%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl203705203915%_)))
                    (_%$%hd203666203781%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl203705203915%_))))
                (if (null? _%$%tl203703203910%_)
                    (let ((_%id1203762%_ _%$%hd203710203894%_)
                          (_%expr1203769%_ _%$%hd203712203901%_)
                          (_%bind203786%_ _%$%hd203666203781%_)
                          (_%body203788%_ _%$%tl203667203783%_))
                      (_%$%K203657203739%_
                       _%body203788%_
                       _%bind203786%_
                       _%expr1203769%_
                       _%id1203762%_))
                    (_%$%else203655203730%_)))
              (_%$%else203655203730%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else203655203730%_))))
                                        (_%$%else203655203730%_)))
                                  (_%$%else203655203730%_))
                              (_%$%else203655203730%_))
                          (_%$%else203655203730%_)))
                    (_%$%else203655203730%_)))
              (_%$%else203655203730%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else203655203730%_))))
                                      (_%$%else203655203730%_))
                                  (_%$%else203655203730%_)))
                            (_%$%else203655203730%_))))))
                 (_%generate-values203348%_
                  (lambda (_%hd203462%_ _%body203463%_)
                    (let _%lp203465%_ ((_%rest203467%_ _%hd203462%_)
                                       (_%bind203468%_ '())
                                       (_%check203469%_ '())
                                       (_%post203470%_ '()))
                      (let* ((_%__stx207515207516%_ _%rest203467%_)
                             (_%$%g203473203484%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207515207516%_)))))
                        (let ((_%__kont207517207518%_
                               (lambda (_%$%g203475203511%_
                                        _%$%g203476203512%_)
                                 (let* ((_%__stx207471207472%_
                                         _%$%g203476203512%_)
                                        (_%$%g203527203552%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx207471207472%_)))))
                                   (let ((_%__kont207473207474%_
                                          (lambda (_%$%g203529203625%_
                                                   _%$%g203530203626%_)
                                            (let ((_%eid203640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g203530203626%_)))
                                                  (_%expr203641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self203341%_
                                                      _%$%g203529203625%_))))
                                              (_%lp203465%_
                                               _%$%g203475203511%_
                                               (cons (cons _%eid203640%_
                                                           (cons _%expr203641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind203468%_)
                                               _%check203469%_
                                               _%post203470%_))))
                                         (_%__kont207475207476%_
                                          (lambda (_%$%g203540203573%_
                                                   _%$%g203541203574%_)
                                            (let* ((_%vals203587%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values203589%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals203587%_
                                                     _%$%g203541203574%_
                                                     _%$%g203540203573%_))
                                                   (_%refs203591%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals203587%_
                                                     _%$%g203541203574%_))
                                                   (_%expr203593%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203341%_
                                                       _%$%g203540203573%_))))
                                              (_%lp203465%_
                                               _%$%g203475203511%_
                                               (cons (cons _%vals203587%_
                                                           (cons _%expr203593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind203468%_)
                                               (cons _%check-values203589%_
                                                     _%check203469%_)
                                               (cons _%refs203591%_
                                                     _%post203470%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx207471207472%_))
                                         (let ((_%$%e203531203601%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx207471207472%_))))
                                           (let ((_%$%tl203533203606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e203531203601%_)))
                                                 (_%$%hd203532203604%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e203531203601%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd203532203604%_))
                                                 (let ((_%$%e203534203609%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd203532203604%_))))
                                                   (let ((_%$%tl203536203614%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e203534203609%_)))
                                                         (_%$%hd203535203612%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e203534203609%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl203536203614%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl203533203606%_))
                     (let ((_%$%e203537203617%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl203533203606%_))))
                       (let ((_%$%tl203539203622%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e203537203617%_)))
                             (_%$%hd203538203620%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e203537203617%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl203539203622%_))
                             (_%__kont207473207474%_
                              _%$%hd203538203620%_
                              _%$%hd203535203612%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g203527203552%_)))))
                     (let () (declare (not safe)) (_%$%g203527203552%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl203533203606%_))
                     (let ((_%$%e203545203565%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl203533203606%_))))
                       (let ((_%$%tl203547203570%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e203545203565%_)))
                             (_%$%hd203546203568%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e203545203565%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl203547203570%_))
                             (_%__kont207475207476%_
                              _%$%hd203546203568%_
                              _%$%hd203532203604%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g203527203552%_)))))
                     (let () (declare (not safe)) (_%$%g203527203552%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl203533203606%_))
                                                     (let ((_%$%e203545203565%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl203533203606%_))))
                                                       (let ((_%$%tl203547203570%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e203545203565%_)))
                     (_%$%hd203546203568%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e203545203565%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl203547203570%_))
                     (_%__kont207475207476%_
                      _%$%hd203546203568%_
                      _%$%hd203532203604%_)
                     (let () (declare (not safe)) (_%$%g203527203552%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g203527203552%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g203527203552%_)))))))
                              (_%__kont207519207520%_
                               (lambda ()
                                 (let* ((_%body203491%_
                                         (if _%compiled-body?203343%_
                                             _%body203463%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self203341%_
                                                _%body203463%_))))
                                        (_%body203493%_
                                         (_%generate-values-post203349%_
                                          _%post203470%_
                                          _%body203491%_))
                                        (_%body203495%_
                                         (_%generate-values-check203350%_
                                          _%check203469%_
                                          _%body203493%_)))
                                   (cons 'let
                                         (cons (reverse _%bind203468%_)
                                               (cons _%body203495%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207515207516%_))
                              (let ((_%$%e203477203503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207515207516%_))))
                                (let ((_%$%tl203479203508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203477203503%_)))
                                      (_%$%hd203478203506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203477203503%_))))
                                  (_%__kont207517207518%_
                                   _%$%tl203479203508%_
                                   _%$%hd203478203506%_)))
                              (_%__kont207519207520%_)))))))
                 (_%generate-values-post203349%_
                  (lambda (_%post203421%_ _%body203422%_)
                    (let _%lp203424%_ ((_%rest203426%_ _%post203421%_)
                                       (_%body203427%_ _%body203422%_))
                      (let* ((_%$%rest203428203436%_ _%rest203426%_)
                             (_%$%else203430203444%_
                              (lambda () _%body203427%_))
                             (_%$%K203432203450%_
                              (lambda (_%rest203447%_ _%bind203448%_)
                                (_%lp203424%_
                                 _%rest203447%_
                                 (cons 'let
                                       (cons _%bind203448%_
                                             (cons _%body203427%_ '())))))))
                        (if (pair? _%$%rest203428203436%_)
                            (let ((_%$%hd203433203453%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest203428203436%_)))
                                  (_%$%tl203434203455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest203428203436%_))))
                              (let* ((_%bind203458%_ _%$%hd203433203453%_)
                                     (_%rest203460%_ _%$%tl203434203455%_))
                                (_%$%K203432203450%_
                                 _%rest203460%_
                                 _%bind203458%_)))
                            (_%$%else203430203444%_))))))
                 (_%generate-values-check203350%_
                  (lambda (_%check203418%_ _%body203419%_)
                    (cons 'begin
                          (let ((__tmp208363 (cons _%body203419%_ '()))
                                (__tmp208362 (reverse _%check203418%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp208363 __tmp208362))))))
          (let* ((_%$%g203352203369%_
                  (lambda (_%$%g203353203366%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203353203366%_))))
                 (_%$%g203351203415%_
                  (lambda (_%$%g203353203372%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203353203372%_))
                        (let ((_%$%e203356203374%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203353203372%_))))
                          (let ((_%$%hd203357203377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203356203374%_)))
                                (_%$%tl203358203379%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203356203374%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl203358203379%_))
                                (let ((_%$%e203359203382%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl203358203379%_))))
                                  (let ((_%$%hd203360203385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203359203382%_)))
                                        (_%$%tl203361203387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203359203382%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl203361203387%_))
                                        (let ((_%$%e203362203390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl203361203387%_))))
                                          (let ((_%$%hd203363203393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203362203390%_)))
                                                (_%$%tl203364203395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203362203390%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203364203395%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd203360203385%_)
                                                    (_%generate-simple203345%_
                                                     _%$%hd203360203385%_
                                                     _%$%hd203363203393%_)
                                                    (_%generate-values203348%_
                                                     _%$%hd203360203385%_
                                                     _%$%hd203363203393%_))
                                                (_%$%g203352203369%_
                                                 _%$%g203353203372%_))))
                                        (_%$%g203352203369%_
                                         _%$%g203353203372%_))))
                                (_%$%g203352203369%_ _%$%g203353203372%_))))
                        (_%$%g203352203369%_ _%$%g203353203372%_)))))
            (_%$%g203351203415%_ _%stx203342%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self204095%_ _%stx204096%_)
        (let ((_%compiled-body?204098%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self204095%_
           _%stx204096%_
           _%compiled-body?204098%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g208364_
        (let ((_g208365_ (let () (declare (not safe)) (##length _g208364_))))
          (cond ((let () (declare (not safe)) (##fx= _g208365_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g208364_))
                ((let () (declare (not safe)) (##fx= _g208365_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g208364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g208364_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals203235%_ _%hd203236%_)
        (let _%lp203238%_ ((_%rest203240%_ _%hd203236%_)
                           (_%k203241%_ '0)
                           (_%r203242%_ '()))
          (let* ((_%__stx207529207530%_ _%rest203240%_)
                 (_%$%g203247203264%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx207529207530%_)))))
            (let ((_%__kont207531207532%_
                   (lambda (_%$%g203249203327%_)
                     (_%lp203238%_
                      _%$%g203249203327%_
                      (let () (declare (not safe)) (##fx+ _%k203241%_ '1))
                      _%r203242%_)))
                  (_%__kont207533207534%_
                   (lambda (_%$%g203254203300%_ _%$%g203255203301%_)
                     (_%lp203238%_
                      _%$%g203254203300%_
                      (let () (declare (not safe)) (##fx+ _%k203241%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g203255203301%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals203235%_
                                         _%k203241%_
                                         _%$%g203254203300%_)
                                        '()))
                            _%r203242%_))))
                  (_%__kont207535207536%_
                   (lambda (_%$%g203259203276%_)
                     (let ((__tmp208366
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g203259203276%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals203235%_
                                               _%k203241%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp208366 _%r203242%_))))
                  (_%__kont207537207538%_ (lambda () (reverse _%r203242%_))))
              (let ((_%$%g203245203287%_
                     (lambda ()
                       (let ((_%$%g203259203276%_ _%__stx207529207530%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g203259203276%_))
                             (_%__kont207535207536%_ _%$%g203259203276%_)
                             (_%__kont207537207538%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx207529207530%_))
                    (let ((_%$%e203250203316%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx207529207530%_))))
                      (let ((_%$%tl203252203321%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e203250203316%_)))
                            (_%$%hd203251203319%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e203250203316%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd203251203319%_))
                            (let ((_%$%e203253203324%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd203251203319%_))))
                              (if (equal? _%$%e203253203324%_ '#f)
                                  (_%__kont207531207532%_ _%$%tl203252203321%_)
                                  (_%__kont207533207534%_
                                   _%$%tl203252203321%_
                                   _%$%hd203251203319%_)))
                            (_%__kont207533207534%_
                             _%$%tl203252203321%_
                             _%$%hd203251203319%_))))
                    (let () (declare (not safe)) (_%$%g203245203287%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self202914%_ _%stx202915%_ _%compiled-body?202916%_)
        (letrec ((_%generate-simple202918%_
                  (lambda (_%hd203220%_ _%body203221%_)
                    (gxc#generate-runtime-simple-let
                     _%self202914%_
                     'letrec
                     _%hd203220%_
                     _%body203221%_
                     _%compiled-body?202916%_)))
                 (_%generate-values202919%_
                  (lambda (_%hd202999%_ _%body203000%_)
                    (let _%lp203002%_ ((_%rest203004%_ _%hd202999%_)
                                       (_%bind203005%_ '())
                                       (_%check203006%_ '())
                                       (_%post203007%_ '()))
                      (let* ((_%__stx207603207604%_ _%rest203004%_)
                             (_%$%g203010203021%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207603207604%_)))))
                        (let ((_%__kont207605207606%_
                               (lambda (_%$%g203012203048%_
                                        _%$%g203013203049%_)
                                 (let* ((_%__stx207559207560%_
                                         _%$%g203013203049%_)
                                        (_%$%g203064203089%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx207559207560%_)))))
                                   (let ((_%__kont207561207562%_
                                          (lambda (_%$%g203066203196%_
                                                   _%$%g203067203197%_)
                                            (let ((_%eid203211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g203067203197%_)))
                                                  (_%expr203212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self202914%_
                                                      _%$%g203066203196%_))))
                                              (_%lp203002%_
                                               _%$%g203012203048%_
                                               (cons (cons _%eid203211%_
                                                           (cons _%expr203212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind203005%_)
                                               _%check203006%_
                                               _%post203007%_))))
                                         (_%__kont207563207564%_
                                          (lambda (_%$%g203077203110%_
                                                   _%$%g203078203111%_)
                                            (let* ((_%vals203124%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values203126%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals203124%_
                                                     _%$%g203078203111%_
                                                     _%$%g203077203110%_))
                                                   (_%refs203128%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals203124%_
                                                     _%$%g203078203111%_))
                                                   (_%expr203130%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self202914%_
                                                       _%$%g203077203110%_))))
                                              (_%lp203002%_
                                               _%$%g203012203048%_
                                               (let ((__tmp208368
                                                      (cons (cons _%vals203124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr203130%_ '()))
                    _%bind203005%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp208367
                                                      (map (lambda (_%$%e203132203134%_)
                                                             (let* ((_%$%$%e203132203136203145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e203132203134%_)
                            (_%$%E203138203149%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e203132203136203145%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K203139203154%_
                             (lambda (_%eid203152%_)
                               (cons _%eid203152%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e203132203136203145%_)
                           (let ((_%$%hd203140203157%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e203132203136203145%_)))
                                 (_%$%tl203141203159%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e203132203136203145%_))))
                             (let ((_%eid203162%_ _%$%hd203140203157%_))
                               (if (pair? _%$%tl203141203159%_)
                                   (let ((_%$%tl203143203164%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl203141203159%_))))
                                     (if (null? _%$%tl203143203164%_)
                                         (_%$%K203139203154%_ _%eid203162%_)
                                         (_%$%E203138203149%_)))
                                   (_%$%E203138203149%_))))
                           (_%$%E203138203149%_))))
                   _%refs203128%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp208368
                                                  __tmp208367))
                                               (cons _%check-values203126%_
                                                     _%check203006%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs203128%_
                                                  _%post203007%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx207559207560%_))
                                         (let ((_%$%e203068203172%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx207559207560%_))))
                                           (let ((_%$%tl203070203177%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e203068203172%_)))
                                                 (_%$%hd203069203175%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e203068203172%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd203069203175%_))
                                                 (let ((_%$%e203071203180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd203069203175%_))))
                                                   (let ((_%$%tl203073203185%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e203071203180%_)))
                                                         (_%$%hd203072203183%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e203071203180%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl203073203185%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl203070203177%_))
                     (let ((_%$%e203074203188%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl203070203177%_))))
                       (let ((_%$%tl203076203193%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e203074203188%_)))
                             (_%$%hd203075203191%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e203074203188%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl203076203193%_))
                             (_%__kont207561207562%_
                              _%$%hd203075203191%_
                              _%$%hd203072203183%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g203064203089%_)))))
                     (let () (declare (not safe)) (_%$%g203064203089%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl203070203177%_))
                     (let ((_%$%e203082203102%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl203070203177%_))))
                       (let ((_%$%tl203084203107%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e203082203102%_)))
                             (_%$%hd203083203105%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e203082203102%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl203084203107%_))
                             (_%__kont207563207564%_
                              _%$%hd203083203105%_
                              _%$%hd203069203175%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g203064203089%_)))))
                     (let () (declare (not safe)) (_%$%g203064203089%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl203070203177%_))
                                                     (let ((_%$%e203082203102%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl203070203177%_))))
                                                       (let ((_%$%tl203084203107%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e203082203102%_)))
                     (_%$%hd203083203105%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e203082203102%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl203084203107%_))
                     (_%__kont207563207564%_
                      _%$%hd203083203105%_
                      _%$%hd203069203175%_)
                     (let () (declare (not safe)) (_%$%g203064203089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g203064203089%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g203064203089%_)))))))
                              (_%__kont207607207608%_
                               (lambda ()
                                 (let* ((_%body203028%_
                                         (if _%compiled-body?202916%_
                                             _%body203000%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self202914%_
                                                _%body203000%_))))
                                        (_%body203030%_
                                         (_%generate-values-post202921%_
                                          _%post203007%_
                                          _%body203028%_))
                                        (_%body203032%_
                                         (_%generate-values-check202920%_
                                          _%check203006%_
                                          _%body203030%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind203005%_)
                                               (cons _%body203032%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207603207604%_))
                              (let ((_%$%e203014203040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207603207604%_))))
                                (let ((_%$%tl203016203045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203014203040%_)))
                                      (_%$%hd203015203043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203014203040%_))))
                                  (_%__kont207605207606%_
                                   _%$%tl203016203045%_
                                   _%$%hd203015203043%_)))
                              (_%__kont207607207608%_)))))))
                 (_%generate-values-check202920%_
                  (lambda (_%check202996%_ _%body202997%_)
                    (cons 'begin
                          (let ((__tmp208370 (cons _%body202997%_ '()))
                                (__tmp208369 (reverse _%check202996%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp208370 __tmp208369)))))
                 (_%generate-values-post202921%_
                  (lambda (_%post202989%_ _%body202990%_)
                    (cons 'begin
                          (let ((__tmp208374 (cons _%body202990%_ '()))
                                (__tmp208371
                                 (let ((__tmp208373
                                        (lambda (_%$%g202991202993%_)
                                          (cons 'set! _%$%g202991202993%_)))
                                       (__tmp208372 (reverse _%post202989%_)))
                                   (declare (not safe))
                                   (##map __tmp208373 __tmp208372))))
                            (declare (not safe))
                            (foldr__0 cons __tmp208374 __tmp208371))))))
          (let* ((_%$%g202923202940%_
                  (lambda (_%$%g202924202937%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202924202937%_))))
                 (_%$%g202922202986%_
                  (lambda (_%$%g202924202943%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202924202943%_))
                        (let ((_%$%e202927202945%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202924202943%_))))
                          (let ((_%$%hd202928202948%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202927202945%_)))
                                (_%$%tl202929202950%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202927202945%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl202929202950%_))
                                (let ((_%$%e202930202953%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl202929202950%_))))
                                  (let ((_%$%hd202931202956%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202930202953%_)))
                                        (_%$%tl202932202958%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202930202953%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202932202958%_))
                                        (let ((_%$%e202933202961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202932202958%_))))
                                          (let ((_%$%hd202934202964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202933202961%_)))
                                                (_%$%tl202935202966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202933202961%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202935202966%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd202931202956%_)
                                                    (_%generate-simple202918%_
                                                     _%$%hd202931202956%_
                                                     _%$%hd202934202964%_)
                                                    (_%generate-values202919%_
                                                     _%$%hd202931202956%_
                                                     _%$%hd202934202964%_))
                                                (_%$%g202923202940%_
                                                 _%$%g202924202943%_))))
                                        (_%$%g202923202940%_
                                         _%$%g202924202943%_))))
                                (_%$%g202923202940%_ _%$%g202924202943%_))))
                        (_%$%g202923202940%_ _%$%g202924202943%_)))))
            (_%$%g202922202986%_ _%stx202915%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self203226%_ _%stx203227%_)
        (let ((_%compiled-body?203229%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self203226%_
           _%stx203227%_
           _%compiled-body?203229%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g208375_
        (let ((_g208376_ (let () (declare (not safe)) (##length _g208375_))))
          (cond ((let () (declare (not safe)) (##fx= _g208376_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g208375_))
                ((let () (declare (not safe)) (##fx= _g208376_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g208375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g208375_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self202495%_ _%stx202496%_)
        (letrec ((_%generate-values202498%_
                  (lambda (_%hd202741%_ _%body202742%_)
                    (let _%lp202744%_ ((_%rest202746%_ _%hd202741%_)
                                       (_%bind202747%_ '()))
                      (let* ((_%$%rest202748202756%_ _%rest202746%_)
                             (_%$%else202750202767%_
                              (lambda ()
                                (let ((_%bind202764%_ (reverse _%bind202747%_))
                                      (_%body202765%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self202495%_
                                          _%body202742%_))))
                                  (cons 'letrec*
                                        (cons _%bind202764%_
                                              (cons _%body202765%_ '()))))))
                             (_%$%K202752202901%_
                              (lambda (_%rest202770%_ _%hd-bind202771%_)
                                (let* ((_%__stx207617207618%_
                                        _%hd-bind202771%_)
                                       (_%$%g202774202799%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx207617207618%_)))))
                                  (let ((_%__kont207619207620%_
                                         (lambda (_%$%g202776202880%_
                                                  _%$%g202777202881%_)
                                           (let ((_%eid202895%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g202777202881%_)))
                                                 (_%expr202896%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self202495%_
                                                     _%$%g202776202880%_))))
                                             (_%lp202744%_
                                              _%rest202770%_
                                              (cons (cons _%eid202895%_
                                                          (cons _%expr202896%_
                                                                '()))
                                                    _%bind202747%_)))))
                                        (_%__kont207621207622%_
                                         (lambda (_%$%g202787202820%_
                                                  _%$%g202788202821%_)
                                           (let* ((_%vals202840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp202842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values202844%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp202842%_
                                                    _%$%g202788202821%_
                                                    _%$%g202787202820%_))
                                                  (_%refs202846%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals202840%_
                                                    _%$%g202788202821%_))
                                                  (_%expr202848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self202495%_
                                                      _%$%g202787202820%_))))
                                             (_%lp202744%_
                                              _%rest202770%_
                                              (let ((__tmp208377
                                                     (cons (cons _%vals202840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp202842%_
                                                       (cons _%expr202848%_
                                                             '()))
                                                 '())
                                           (cons _%check-values202844%_
                                                 (cons _%tmp202842%_ '()))))
                               '()))
                   _%bind202747%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp208377
                                                 _%refs202846%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx207617207618%_))
                                        (let ((_%$%e202778202856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx207617207618%_))))
                                          (let ((_%$%tl202780202861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202778202856%_)))
                                                (_%$%hd202779202859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202778202856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd202779202859%_))
                                                (let ((_%$%e202781202864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd202779202859%_))))
                                                  (let ((_%$%tl202783202869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e202781202864%_)))
                                                        (_%$%hd202782202867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e202781202864%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl202783202869%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl202780202861%_))
                                                            (let ((_%$%e202784202872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl202780202861%_))))
                      (let ((_%$%tl202786202877%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e202784202872%_)))
                            (_%$%hd202785202875%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e202784202872%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl202786202877%_))
                            (_%__kont207619207620%_
                             _%$%hd202785202875%_
                             _%$%hd202782202867%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g202774202799%_)))))
                    (let () (declare (not safe)) (_%$%g202774202799%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl202780202861%_))
                    (let ((_%$%e202792202812%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl202780202861%_))))
                      (let ((_%$%tl202794202817%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e202792202812%_)))
                            (_%$%hd202793202815%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e202792202812%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl202794202817%_))
                            (_%__kont207621207622%_
                             _%$%hd202793202815%_
                             _%$%hd202779202859%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g202774202799%_)))))
                    (let () (declare (not safe)) (_%$%g202774202799%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl202780202861%_))
                                                    (let ((_%$%e202792202812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl202780202861%_))))
                                                      (let ((_%$%tl202794202817%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e202792202812%_)))
                    (_%$%hd202793202815%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e202792202812%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl202794202817%_))
                    (_%__kont207621207622%_
                     _%$%hd202793202815%_
                     _%$%hd202779202859%_)
                    (let () (declare (not safe)) (_%$%g202774202799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g202774202799%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g202774202799%_))))))))
                        (if (pair? _%$%rest202748202756%_)
                            (let ((_%$%hd202753202904%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest202748202756%_)))
                                  (_%$%tl202754202906%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest202748202756%_))))
                              (let* ((_%hd-bind202909%_ _%$%hd202753202904%_)
                                     (_%rest202911%_ _%$%tl202754202906%_))
                                (_%$%K202752202901%_
                                 _%rest202911%_
                                 _%hd-bind202909%_)))
                            (_%$%else202750202767%_))))))
                 (_%generate-letrec?202499%_
                  (lambda (_%hd202631%_)
                    (let _%lp202633%_ ((_%rest202635%_ _%hd202631%_))
                      (let* ((_%$%rest202636202644%_ _%rest202635%_)
                             (_%$%else202638202652%_ (lambda () '#t))
                             (_%$%K202640202729%_
                              (lambda (_%rest202655%_ _%hd-bind202656%_)
                                (let* ((_%$%g202658202675%_
                                        (lambda (_%$%g202659202672%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g202659202672%_))))
                                       (_%$%g202657202726%_
                                        (lambda (_%$%g202659202678%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g202659202678%_))
                                              (let ((_%$%e202662202680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g202659202678%_))))
                                                (let ((_%$%hd202663202683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e202662202680%_)))
                                                      (_%$%tl202664202685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e202662202680%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd202663202683%_))
                                                      (let ((_%$%e202665202688%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd202663202683%_))))
                (let ((_%$%hd202666202691%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e202665202688%_)))
                      (_%$%tl202667202693%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e202665202688%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl202667202693%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl202664202685%_))
                          (let ((_%$%e202668202696%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl202664202685%_))))
                            (let ((_%$%hd202669202699%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202668202696%_)))
                                  (_%$%tl202670202701%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202668202696%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl202670202701%_))
                                  (if (_%is-lambda-expr?202500%_
                                       _%$%hd202669202699%_)
                                      (_%lp202633%_ _%rest202655%_)
                                      '#f)
                                  (_%$%g202658202675%_ _%$%g202659202678%_))))
                          (_%$%g202658202675%_ _%$%g202659202678%_))
                      (_%$%g202658202675%_ _%$%g202659202678%_))))
              (_%$%g202658202675%_ _%$%g202659202678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202658202675%_
                                               _%$%g202659202678%_)))))
                                  (_%$%g202657202726%_ _%hd-bind202656%_)))))
                        (if (pair? _%$%rest202636202644%_)
                            (let ((_%$%hd202641202732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest202636202644%_)))
                                  (_%$%tl202642202734%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest202636202644%_))))
                              (let* ((_%hd-bind202737%_ _%$%hd202641202732%_)
                                     (_%rest202739%_ _%$%tl202642202734%_))
                                (_%$%K202640202729%_
                                 _%rest202739%_
                                 _%hd-bind202737%_)))
                            (_%$%else202638202652%_))))))
                 (_%is-lambda-expr?202500%_
                  (lambda (_%expr202568%_)
                    (let* ((_%__stx207661207662%_ _%expr202568%_)
                           (_%$%g202571202585%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx207661207662%_)))))
                      (let ((_%__kont207663207664%_
                             (lambda (_%$%g202573202613%_ _%$%g202574202614%_)
                               '#t))
                            (_%__kont207665207666%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx207661207662%_))
                            (let ((_%$%e202575202597%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx207661207662%_))))
                              (let ((_%$%tl202577202602%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e202575202597%_)))
                                    (_%$%hd202576202600%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e202575202597%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd202576202600%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd202576202600%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl202577202602%_))
                                            (let ((_%$%e202578202605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl202577202602%_))))
                                              (let ((_%$%tl202580202610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e202578202605%_)))
                                                    (_%$%hd202579202608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e202578202605%_))))
                                                (_%__kont207663207664%_
                                                 _%$%tl202580202610%_
                                                 _%$%hd202579202608%_)))
                                            (_%__kont207665207666%_))
                                        (_%__kont207665207666%_))
                                    (_%__kont207665207666%_))))
                            (_%__kont207665207666%_)))))))
          (let* ((_%$%g202502202519%_
                  (lambda (_%$%g202503202516%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202503202516%_))))
                 (_%$%g202501202565%_
                  (lambda (_%$%g202503202522%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202503202522%_))
                        (let ((_%$%e202506202524%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202503202522%_))))
                          (let ((_%$%hd202507202527%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202506202524%_)))
                                (_%$%tl202508202529%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202506202524%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl202508202529%_))
                                (let ((_%$%e202509202532%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl202508202529%_))))
                                  (let ((_%$%hd202510202535%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202509202532%_)))
                                        (_%$%tl202511202537%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202509202532%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202511202537%_))
                                        (let ((_%$%e202512202540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202511202537%_))))
                                          (let ((_%$%hd202513202543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202512202540%_)))
                                                (_%$%tl202514202545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202512202540%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202514202545%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd202510202535%_)
                                                    (if (_%generate-letrec?202499%_
                                                         _%$%hd202510202535%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self202495%_
                                                         'letrec
                                                         _%$%hd202510202535%_
                                                         _%$%hd202513202543%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self202495%_
                                                         'letrec*
                                                         _%$%hd202510202535%_
                                                         _%$%hd202513202543%_
                                                         '#f))
                                                    (_%generate-values202498%_
                                                     _%$%hd202510202535%_
                                                     _%$%hd202513202543%_))
                                                (_%$%g202502202519%_
                                                 _%$%g202503202522%_))))
                                        (_%$%g202502202519%_
                                         _%$%g202503202522%_))))
                                (_%$%g202502202519%_ _%$%g202503202522%_))))
                        (_%$%g202502202519%_ _%$%g202503202522%_)))))
            (_%$%g202501202565%_ _%stx202496%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd202432%_)
        (let _%lp202434%_ ((_%rest202436%_ _%hd202432%_))
          (let* ((_%$%rest202437202453%_ _%rest202436%_)
                 (_%$%else202440202461%_ (lambda () '#f)))
            (let ((_%$%K202443202474%_
                   (lambda (_%rest202472%_) (_%lp202434%_ _%rest202472%_)))
                  (_%$%K202442202466%_ (lambda () '#t)))
              (let ((_%$%try-match202439202469%_
                     (lambda ()
                       (if (null? _%$%rest202437202453%_)
                           (_%$%K202442202466%_)
                           (_%$%else202440202461%_)))))
                (if (pair? _%$%rest202437202453%_)
                    (let ((_%$%tl202445202479%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest202437202453%_)))
                          (_%$%hd202444202477%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest202437202453%_))))
                      (if (pair? _%$%hd202444202477%_)
                          (let ((_%$%tl202447202484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd202444202477%_)))
                                (_%$%hd202446202482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd202444202477%_))))
                            (if (pair? _%$%hd202446202482%_)
                                (let ((_%$%tl202451202487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd202446202482%_))))
                                  (if (null? _%$%tl202451202487%_)
                                      (if (pair? _%$%tl202447202484%_)
                                          (let ((_%$%tl202449202490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl202447202484%_))))
                                            (if (null? _%$%tl202449202490%_)
                                                (let ((_%rest202493%_
                                                       _%$%tl202445202479%_))
                                                  (_%lp202434%_
                                                   _%rest202493%_))
                                                (_%$%else202440202461%_)))
                                          (_%$%else202440202461%_))
                                      (_%$%else202440202461%_)))
                                (_%$%else202440202461%_)))
                          (_%$%else202440202461%_)))
                    (_%$%try-match202439202469%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self202344%_
               _%form202345%_
               _%hd202346%_
               _%body202347%_
               _%compiled-body?202348%_)
        (letrec ((_%generate1202350%_
                  (lambda (_%bind202389%_)
                    (let* ((_%$%bind202390202401%_ _%bind202389%_)
                           (_%$%E202392202404%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind202390202401%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K202393202410%_
                            (lambda (_%expr202407%_ _%id202408%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id202408%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self202344%_
                                             _%expr202407%_))
                                          '())))))
                      (if (pair? _%$%bind202390202401%_)
                          (let ((_%$%hd202394202413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind202390202401%_)))
                                (_%$%tl202395202415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind202390202401%_))))
                            (if (pair? _%$%hd202394202413%_)
                                (let ((_%$%hd202398202418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd202394202413%_)))
                                      (_%$%tl202399202420%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd202394202413%_))))
                                  (let ((_%id202423%_ _%$%hd202398202418%_))
                                    (if (null? _%$%tl202399202420%_)
                                        (if (pair? _%$%tl202395202415%_)
                                            (let ((_%$%hd202396202425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl202395202415%_)))
                                                  (_%$%tl202397202427%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl202395202415%_))))
                                              (let ((_%expr202430%_
                                                     _%$%hd202396202425%_))
                                                (if (null? _%$%tl202397202427%_)
                                                    (_%$%K202393202410%_
                                                     _%expr202430%_
                                                     _%id202423%_)
                                                    (_%$%E202392202404%_))))
                                            (_%$%E202392202404%_))
                                        (_%$%E202392202404%_))))
                                (_%$%E202392202404%_)))
                          (_%$%E202392202404%_))))))
          (let* ((_%bind202352%_ (map _%generate1202350%_ _%hd202346%_))
                 (_%body202354%_
                  (if _%compiled-body?202348%_
                      _%body202347%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self202344%_ _%body202347%_))))
                 (_%body202386%_
                  (let* ((_%$%body202355202363%_ _%body202354%_)
                         (_%$%else202357202371%_
                          (lambda () (cons _%body202354%_ '())))
                         (_%$%K202359202376%_
                          (lambda (_%exprs202374%_) _%exprs202374%_)))
                    (if (pair? _%$%body202355202363%_)
                        (let ((_%$%hd202360202379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body202355202363%_)))
                              (_%$%tl202361202381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body202355202363%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd202360202379%_ 'begin))
                              (let ((_%exprs202384%_ _%$%tl202361202381%_))
                                (_%$%K202359202376%_ _%exprs202384%_))
                              (_%$%else202357202371%_)))
                        (_%$%else202357202371%_)))))
            (cons _%form202345%_ (cons _%bind202352%_ _%body202386%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self202244%_ _%stx202245%_)
        (letrec ((_%generate1202247%_
                  (lambda (_%datum202299%_)
                    (if (or (null? _%datum202299%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum202299%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum202299%_))
                            (eof-object? _%datum202299%_))
                        _%datum202299%_
                        (if (uninterned-symbol? _%datum202299%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum202299%_
                               '#t))
                            (if (pair? _%datum202299%_)
                                (cons (_%generate1202247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum202299%_)))
                                      (_%generate1202247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum202299%_))))
                                (if (box? _%datum202299%_)
                                    (box (_%generate1202247%_
                                          (unbox _%datum202299%_)))
                                    (if (vector? _%datum202299%_)
                                        (vector-map
                                         _%generate1202247%_
                                         _%datum202299%_)
                                        (if (or (s8vector? _%datum202299%_)
                                                (u8vector? _%datum202299%_)
                                                (s16vector? _%datum202299%_)
                                                (u16vector? _%datum202299%_)
                                                (s32vector? _%datum202299%_)
                                                (u32vector? _%datum202299%_)
                                                (s64vector? _%datum202299%_)
                                                (u64vector? _%datum202299%_)
                                                (f32vector? _%datum202299%_)
                                                (f64vector? _%datum202299%_))
                                            _%datum202299%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx202245%_)))))))))))
          (let* ((_%$%g202249202262%_
                  (lambda (_%$%g202250202259%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202250202259%_))))
                 (_%$%g202248202296%_
                  (lambda (_%$%g202250202265%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202250202265%_))
                        (let ((_%$%e202252202267%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202250202265%_))))
                          (let ((_%$%hd202253202270%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202252202267%_)))
                                (_%$%tl202254202272%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202252202267%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl202254202272%_))
                                (let ((_%$%e202255202275%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl202254202272%_))))
                                  (let ((_%$%hd202256202278%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202255202275%_)))
                                        (_%$%tl202257202280%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202255202275%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl202257202280%_))
                                        (cons 'quote
                                              (cons (_%generate1202247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd202256202278%_)))
                                                    '()))
                                        (_%$%g202249202262%_
                                         _%$%g202250202265%_))))
                                (_%$%g202249202262%_ _%$%g202250202265%_))))
                        (_%$%g202249202262%_ _%$%g202250202265%_)))))
            (_%$%g202248202296%_ _%stx202245%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self201691%_ _%stx201692%_)
        (letrec ((_%compile-call201694%_
                  (lambda (_%rator201981%_ _%rands201982%_)
                    (let ((_%rator201988%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self201691%_
                              _%rator201981%_)))
                          (_%rands201989%_
                           (map (lambda (_%$%g201983201985%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self201691%_
                                     _%$%g201983201985%_)))
                                _%rands201982%_)))
                      (let* ((_%__stx207708207709%_ _%rator201988%_)
                             (_%$%g201992202044%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207708207709%_)))))
                        (let ((_%__kont207710207711%_
                               (lambda (_%$%g201994202164%_
                                        _%$%g201995202165%_
                                        _%$%g201996202166%_
                                        _%$%g201997202167%_)
                                 (if (let ((__tmp208380
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands201989%_)))
                                           (__tmp208378
                                            (length (let ((__tmp208379
                                                           (lambda (_%$%g202203202206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g202204202208%_)
                     (cons _%$%g202203202206%_ _%$%g202204202208%_))))
              (declare (not safe))
              (foldr__0 __tmp208379 '() _%$%g201996202166%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp208380 __tmp208378))
                                     (let* ((_%id202211%_ _%$%g201997202167%_)
                                            (_%args202220%_
                                             (let ((__tmp208381
                                                    (lambda (_%$%g202212202215%_
                                                             _%$%g202213202217%_)
                                                      (cons _%$%g202212202215%_
                                                            _%$%g202213202217%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp208381
                                                '()
                                                _%$%g201996202166%_)))
                                            (_%body202229%_
                                             (let ((__tmp208382
                                                    (lambda (_%$%g202221202224%_
                                                             _%$%g202222202226%_)
                                                      (cons _%$%g202221202224%_
                                                            _%$%g202222202226%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp208382
                                                '()
                                                _%$%g201995202165%_)))
                                            (_%init202231%_
                                             (map list
                                                  _%args202220%_
                                                  _%rands201989%_)))
                                       (cons 'let
                                             (cons _%id202211%_
                                                   (cons _%init202231%_
                                                         _%body202229%_))))
                                     (let ((__tmp208383
                                            (let ((__tmp208384
                                                   (lambda (_%$%g202233202236%_
                                                            _%$%g202234202238%_)
                                                     (cons _%$%g202233202236%_
                                                           _%$%g202234202238%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208384
                                               '()
                                               _%$%g201996202166%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx201692%_
                                        __tmp208383
                                        _%rands201989%_)))))
                              (_%__kont207716207717%_
                               (lambda ()
                                 (cons _%rator201988%_ _%rands201989%_))))
                          (let ((_%__match207775207776%_
                                 (lambda (_%$%e201998202056%_
                                          _%$%hd201999202059%_
                                          _%$%tl202000202061%_
                                          _%$%e202001202064%_
                                          _%$%hd202002202067%_
                                          _%$%tl202003202069%_
                                          _%$%e202004202072%_
                                          _%$%hd202005202075%_
                                          _%$%tl202006202077%_
                                          _%$%e202007202080%_
                                          _%$%hd202008202083%_
                                          _%$%tl202009202085%_
                                          _%$%e202010202088%_
                                          _%$%hd202011202091%_
                                          _%$%tl202012202093%_
                                          _%$%e202013202096%_
                                          _%$%hd202014202099%_
                                          _%$%tl202015202101%_
                                          _%$%e202016202104%_
                                          _%$%hd202017202107%_
                                          _%$%tl202018202109%_
                                          _%__splice207712207713%_
                                          _%$%target202019202112%_
                                          _%$%tl202021202114%_)
                                   (letrec ((_%$%loop202022202117%_
                                             (lambda (_%$%hd202020202120%_
                                                      _%$%arg202026202122%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd202020202120%_))
                                                   (let ((_%$%e202023202124%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd202020202120%_))))
                                                     (let ((_%$%lp-tl202025202129%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e202023202124%_)))
                                                           (_%$%lp-hd202024202127%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e202023202124%_))))
                                                       (_%$%loop202022202117%_
                                                        _%$%lp-tl202025202129%_
                                                        (cons _%$%lp-hd202024202127%_
                                                              _%$%arg202026202122%_))))
                                                   (let ((_%$%arg202027202132%_
                                                          (reverse _%$%arg202026202122%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl202018202109%_))
                                                         (let ((_%__splice207714207715%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl202018202109%_
                           '0))))
                   (let ((_%$%tl202030202136%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice207714207715%_ '1)))
                         (_%$%target202028202134%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice207714207715%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl202030202136%_))
                         (letrec ((_%$%loop202031202139%_
                                   (lambda (_%$%hd202029202142%_
                                            _%$%body202035202144%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd202029202142%_))
                                         (let ((_%$%e202032202146%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd202029202142%_))))
                                           (let ((_%$%lp-tl202034202151%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e202032202146%_)))
                                                 (_%$%lp-hd202033202149%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e202032202146%_))))
                                             (_%$%loop202031202139%_
                                              _%$%lp-tl202034202151%_
                                              (cons _%$%lp-hd202033202149%_
                                                    _%$%body202035202144%_))))
                                         (let ((_%$%body202036202154%_
                                                (reverse _%$%body202035202144%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl202012202093%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl202006202077%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl202003202069%_))
                                                       (let ((_%$%e202037202156%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl202003202069%_))))
                 (let ((_%$%tl202039202161%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e202037202156%_)))
                       (_%$%hd202038202159%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e202037202156%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl202039202161%_))
                       (let ((_%$%g201994202164%_ _%$%hd202038202159%_)
                             (_%$%g201995202165%_ _%$%body202036202154%_)
                             (_%$%g201996202166%_ _%$%arg202027202132%_)
                             (_%$%g201997202167%_ _%$%hd202008202083%_))
                         (if (eq? _%$%g201997202167%_ _%$%g201994202164%_)
                             (_%__kont207710207711%_
                              _%$%g201994202164%_
                              _%$%g201995202165%_
                              _%$%g201996202166%_
                              _%$%g201997202167%_)
                             (_%__kont207716207717%_)))
                       (_%__kont207716207717%_))))
               (_%__kont207716207717%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont207716207717%_))
                                               (_%__kont207716207717%_)))))))
                           (_%$%loop202031202139%_
                            _%$%target202028202134%_
                            '()))
                         (_%__kont207716207717%_))))
                 (_%__kont207716207717%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop202022202117%_
                                      _%$%target202019202112%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx207708207709%_))
                                (let ((_%$%e201998202056%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx207708207709%_))))
                                  (let ((_%$%tl202000202061%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201998202056%_)))
                                        (_%$%hd201999202059%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201998202056%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd201999202059%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd201999202059%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl202000202061%_))
                                                (let ((_%$%e202001202064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl202000202061%_))))
                                                  (let ((_%$%tl202003202069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e202001202064%_)))
                                                        (_%$%hd202002202067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e202001202064%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd202002202067%_))
                                                        (let ((_%$%e202004202072%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd202002202067%_))))
                  (let ((_%$%tl202006202077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202004202072%_)))
                        (_%$%hd202005202075%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202004202072%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202005202075%_))
                        (let ((_%$%e202007202080%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202005202075%_))))
                          (let ((_%$%tl202009202085%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202007202080%_)))
                                (_%$%hd202008202083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202007202080%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl202009202085%_))
                                (let ((_%$%e202010202088%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl202009202085%_))))
                                  (let ((_%$%tl202012202093%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202010202088%_)))
                                        (_%$%hd202011202091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202010202088%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd202011202091%_))
                                        (let ((_%$%e202013202096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd202011202091%_))))
                                          (let ((_%$%tl202015202101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202013202096%_)))
                                                (_%$%hd202014202099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202013202096%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd202014202099%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd202014202099%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl202015202101%_))
                                                        (let ((_%$%e202016202104%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl202015202101%_))))
                  (let ((_%$%tl202018202109%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202016202104%_)))
                        (_%$%hd202017202107%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202016202104%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd202017202107%_))
                        (let ((_%__splice207712207713%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd202017202107%_
                                  '0))))
                          (let ((_%$%tl202021202114%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice207712207713%_ '1)))
                                (_%$%target202019202112%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice207712207713%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl202021202114%_))
                                (_%__match207775207776%_
                                 _%$%e201998202056%_
                                 _%$%hd201999202059%_
                                 _%$%tl202000202061%_
                                 _%$%e202001202064%_
                                 _%$%hd202002202067%_
                                 _%$%tl202003202069%_
                                 _%$%e202004202072%_
                                 _%$%hd202005202075%_
                                 _%$%tl202006202077%_
                                 _%$%e202007202080%_
                                 _%$%hd202008202083%_
                                 _%$%tl202009202085%_
                                 _%$%e202010202088%_
                                 _%$%hd202011202091%_
                                 _%$%tl202012202093%_
                                 _%$%e202013202096%_
                                 _%$%hd202014202099%_
                                 _%$%tl202015202101%_
                                 _%$%e202016202104%_
                                 _%$%hd202017202107%_
                                 _%$%tl202018202109%_
                                 _%__splice207712207713%_
                                 _%$%target202019202112%_
                                 _%$%tl202021202114%_)
                                (_%__kont207716207717%_))))
                        (_%__kont207716207717%_))))
                (_%__kont207716207717%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont207716207717%_))
                                                (_%__kont207716207717%_))))
                                        (_%__kont207716207717%_))))
                                (_%__kont207716207717%_))))
                        (_%__kont207716207717%_))))
                (_%__kont207716207717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont207716207717%_))
                                            (_%__kont207716207717%_))
                                        (_%__kont207716207717%_))))
                                (_%__kont207716207717%_)))))))))
          (let* ((_%$%g201696201719%_
                  (lambda (_%$%g201697201716%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g201697201716%_))))
                 (_%$%g201695201978%_
                  (lambda (_%$%g201697201722%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g201697201722%_))
                        (let ((_%$%e201700201724%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g201697201722%_))))
                          (let ((_%$%hd201701201727%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201700201724%_)))
                                (_%$%tl201702201729%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201700201724%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl201702201729%_))
                                (let ((_%$%e201703201732%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl201702201729%_))))
                                  (let ((_%$%hd201704201735%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201703201732%_)))
                                        (_%$%tl201705201737%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201703201732%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl201705201737%_))
                                        (let ((_g208385_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl201705201737%_
                                                  '0))))
                                          (begin
                                            (let ((_g208386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g208385_)
                                                         (##values-length
                                                          _g208385_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g208386_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g208386_)))
                                            (let ((_%$%target201706201740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g208385_
                                                      0)))
                                                  (_%$%tl201708201742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g208385_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl201708201742%_))
                                                  (letrec ((_%$%loop201709201745%_
                                                            (lambda (_%$%hd201707201748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand201713201750%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd201707201748%_))
                          (let ((_%$%e201710201752%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd201707201748%_))))
                            (let ((_%$%lp-hd201711201755%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e201710201752%_)))
                                  (_%$%lp-tl201712201757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e201710201752%_))))
                              (_%$%loop201709201745%_
                               _%$%lp-tl201712201757%_
                               (cons _%$%lp-hd201711201755%_
                                     _%$%rand201713201750%_))))
                          (let ((_%$%rand201714201760%_
                                 (reverse _%$%rand201713201750%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call201694%_
                                 _%$%hd201704201735%_
                                 (let ((__tmp208387
                                        (lambda (_%$%g201780201783%_
                                                 _%$%g201781201785%_)
                                          (cons _%$%g201780201783%_
                                                _%$%g201781201785%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp208387
                                    '()
                                    _%$%rand201714201760%_)))
                                (let* ((_%__stx207824207825%_
                                        _%$%hd201704201735%_)
                                       (_%$%g201789201801%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx207824207825%_)))))
                                  (let ((_%__kont207826207827%_
                                         (lambda ()
                                           (let ((_%f201838%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self201691%_
                                                     _%$%hd201704201735%_))))
                                             (if (and (let ((__tmp208388
                                                             (symbol->string
                                                              _%f201838%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp208388))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f201838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp201840%_ ((_%rest201843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp208390
                                             (lambda (_%$%g201960201963%_
                                                      _%$%g201961201965%_)
                                               (cons _%$%g201960201963%_
                                                     _%$%g201961201965%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp208390
                                         '()
                                         _%$%rand201714201760%_))))
                            (_%bind201845%_ '())
                            (_%args201846%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest201847201855%_
                                                           _%rest201843%_)
                                                          (_%$%else201849201863%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind201845%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f201838%_ _%args201846%_)
                                             '()))))))
                  (_%$%K201851201949%_
                   (lambda (_%rest201866%_ _%e201867%_)
                     (let* ((_%__stx207778207779%_ _%e201867%_)
                            (_%$%g201872201890%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx207778207779%_)))))
                       (let ((_%__kont207780207781%_
                              (lambda ()
                                (_%lp201840%_
                                 _%rest201866%_
                                 _%bind201845%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e201867%_))
                                       _%args201846%_))))
                             (_%__kont207782207783%_
                              (lambda ()
                                (_%lp201840%_
                                 _%rest201866%_
                                 _%bind201845%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e201867%_))
                                       _%args201846%_))))
                             (_%__kont207784207785%_
                              (lambda ()
                                (let ((_%tmp201897%_
                                       (let ((__tmp208389
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp208389))))
                                  (_%lp201840%_
                                   _%rest201866%_
                                   (cons (cons _%tmp201897%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e201867%_))
                                                     '()))
                                         _%bind201845%_)
                                   (cons _%tmp201897%_ _%args201846%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx207778207779%_))
                             (let ((_%$%e201874201928%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx207778207779%_))))
                               (let ((_%$%tl201876201933%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e201874201928%_)))
                                     (_%$%hd201875201931%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e201874201928%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd201875201931%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd201875201931%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl201876201933%_))
                                             (let ((_%$%e201877201936%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl201876201933%_))))
                                               (let ((_%$%tl201879201941%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e201877201936%_)))
                                                     (_%$%hd201878201939%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e201877201936%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl201879201941%_))
                                                     (_%__kont207780207781%_)
                                                     (_%__kont207784207785%_))))
                                             (_%__kont207784207785%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd201875201931%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl201876201933%_))
                                                 (let ((_%$%e201883201913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl201876201933%_))))
                                                   (let ((_%$%tl201885201918%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e201883201913%_)))
                                                         (_%$%hd201884201916%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e201883201913%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl201885201918%_))
                                                         (_%__kont207782207783%_)
                                                         (_%__kont207784207785%_))))
                                                 (_%__kont207784207785%_))
                                             (_%__kont207784207785%_)))
                                     (_%__kont207784207785%_))))
                             (_%__kont207784207785%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest201847201855%_)
                                                         (let ((_%$%hd201852201952%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest201847201855%_)))
                       (_%$%tl201853201954%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest201847201855%_))))
                   (let* ((_%e201957%_ _%$%hd201852201952%_)
                          (_%rest201959%_ _%$%tl201853201954%_))
                     (_%$%K201851201949%_ _%rest201959%_ _%e201957%_)))
                 (_%$%else201849201863%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call201694%_
                                                  _%$%hd201704201735%_
                                                  (let ((__tmp208391
                                                         (lambda (_%$%g201967201970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g201968201972%_)
                   (cons _%$%g201967201970%_ _%$%g201968201972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp208391
                                                     '()
                                                     _%$%rand201714201760%_)))))))
                                        (_%__kont207828207829%_
                                         (lambda ()
                                           (_%compile-call201694%_
                                            _%$%hd201704201735%_
                                            (let ((__tmp208392
                                                   (lambda (_%$%g201807201810%_
                                                            _%$%g201808201812%_)
                                                     (cons _%$%g201807201810%_
                                                           _%$%g201808201812%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208392
                                               '()
                                               _%$%rand201714201760%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx207824207825%_))
                                        (let ((_%$%e201791201820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx207824207825%_))))
                                          (let ((_%$%tl201793201825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e201791201820%_)))
                                                (_%$%hd201792201823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e201791201820%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd201792201823%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd201792201823%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl201793201825%_))
                                                        (let ((_%$%e201794201828%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl201793201825%_))))
                  (let ((_%$%tl201796201833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e201794201828%_)))
                        (_%$%hd201795201831%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e201794201828%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl201796201833%_))
                        (_%__kont207826207827%_)
                        (_%__kont207828207829%_))))
                (_%__kont207828207829%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont207828207829%_))
                                                (_%__kont207828207829%_))))
                                        (_%__kont207828207829%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop201709201745%_
                                                     _%$%target201706201740%_
                                                     '()))
                                                  (_%$%g201696201719%_
                                                   _%$%g201697201722%_)))))
                                        (_%$%g201696201719%_
                                         _%$%g201697201722%_))))
                                (_%$%g201696201719%_ _%$%g201697201722%_))))
                        (_%$%g201696201719%_ _%$%g201697201722%_)))))
            (_%$%g201695201978%_ _%stx201692%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self201436%_ _%stx201437%_)
        (let* ((_%__stx207896207897%_ _%stx201437%_)
               (_%$%g201440201469%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207896207897%_)))))
          (let ((_%__kont207898207899%_
                 (lambda (_%$%g201442201535%_ _%$%g201443201536%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self201436%_
                        _%stx201437%_)
                       (let ((_%f201558%_
                              (let ((__tmp208393
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g201443201536%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self201436%_
                                 __tmp208393))))
                         (let _%lp201560%_ ((_%rest201563%_
                                             (reverse (let ((__tmp208395
                                                             (lambda (_%$%g201680201683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g201681201685%_)
                       (cons _%$%g201680201683%_ _%$%g201681201685%_))))
                (declare (not safe))
                (foldr__0 __tmp208395 '() _%$%g201442201535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind201565%_ '())
                                            (_%args201566%_ '()))
                           (let* ((_%$%rest201567201575%_ _%rest201563%_)
                                  (_%$%else201569201583%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind201565%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f201558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args201566%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K201571201669%_
                                   (lambda (_%rest201586%_ _%e201587%_)
                                     (let* ((_%__stx207850207851%_ _%e201587%_)
                                            (_%$%g201592201610%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx207850207851%_)))))
                                       (let ((_%__kont207852207853%_
                                              (lambda ()
                                                (_%lp201560%_
                                                 _%rest201586%_
                                                 _%bind201565%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e201587%_))
                                                       _%args201566%_))))
                                             (_%__kont207854207855%_
                                              (lambda ()
                                                (_%lp201560%_
                                                 _%rest201586%_
                                                 _%bind201565%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e201587%_))
                                                       _%args201566%_))))
                                             (_%__kont207856207857%_
                                              (lambda ()
                                                (let ((_%tmp201617%_
                                                       (let ((__tmp208394
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp208394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp201560%_
                                                   _%rest201586%_
                                                   (cons (cons _%tmp201617%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e201587%_))
                             '()))
                 _%bind201565%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp201617%_
                                                         _%args201566%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx207850207851%_))
                                             (let ((_%$%e201594201648%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx207850207851%_))))
                                               (let ((_%$%tl201596201653%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e201594201648%_)))
                                                     (_%$%hd201595201651%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e201594201648%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd201595201651%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd201595201651%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl201596201653%_))
                     (let ((_%$%e201597201656%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl201596201653%_))))
                       (let ((_%$%tl201599201661%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e201597201656%_)))
                             (_%$%hd201598201659%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e201597201656%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl201599201661%_))
                             (_%__kont207852207853%_)
                             (_%__kont207856207857%_))))
                     (_%__kont207856207857%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd201595201651%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl201596201653%_))
                         (let ((_%$%e201603201633%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl201596201653%_))))
                           (let ((_%$%tl201605201638%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e201603201633%_)))
                                 (_%$%hd201604201636%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e201603201633%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl201605201638%_))
                                 (_%__kont207854207855%_)
                                 (_%__kont207856207857%_))))
                         (_%__kont207856207857%_))
                     (_%__kont207856207857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont207856207857%_))))
                                             (_%__kont207856207857%_)))))))
                             (if (pair? _%$%rest201567201575%_)
                                 (let ((_%$%hd201572201672%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest201567201575%_)))
                                       (_%$%tl201573201674%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest201567201575%_))))
                                   (let* ((_%e201677%_ _%$%hd201572201672%_)
                                          (_%rest201679%_
                                           _%$%tl201573201674%_))
                                     (_%$%K201571201669%_
                                      _%rest201679%_
                                      _%e201677%_)))
                                 (_%$%else201569201583%_))))))))
                (_%__kont207902207903%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self201436%_ _%stx201437%_))))
            (let ((_%__match207941207942%_
                   (lambda (_%$%e201444201481%_
                            _%$%hd201445201484%_
                            _%$%tl201446201486%_
                            _%$%e201447201489%_
                            _%$%hd201448201492%_
                            _%$%tl201449201494%_
                            _%$%e201450201497%_
                            _%$%hd201451201500%_
                            _%$%tl201452201502%_
                            _%$%e201453201505%_
                            _%$%hd201454201508%_
                            _%$%tl201455201510%_
                            _%__splice207900207901%_
                            _%$%target201456201513%_
                            _%$%tl201458201515%_)
                     (letrec ((_%$%loop201459201518%_
                               (lambda (_%$%hd201457201521%_
                                        _%$%rand201463201523%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd201457201521%_))
                                     (let ((_%$%e201460201525%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd201457201521%_))))
                                       (let ((_%$%lp-tl201462201530%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e201460201525%_)))
                                             (_%$%lp-hd201461201528%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e201460201525%_))))
                                         (_%$%loop201459201518%_
                                          _%$%lp-tl201462201530%_
                                          (cons _%$%lp-hd201461201528%_
                                                _%$%rand201463201523%_))))
                                     (let ((_%$%rand201464201533%_
                                            (reverse _%$%rand201463201523%_)))
                                       (_%__kont207898207899%_
                                        _%$%rand201464201533%_
                                        _%$%hd201454201508%_))))))
                       (_%$%loop201459201518%_
                        _%$%target201456201513%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207896207897%_))
                  (let ((_%$%e201444201481%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx207896207897%_))))
                    (let ((_%$%tl201446201486%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e201444201481%_)))
                          (_%$%hd201445201484%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e201444201481%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl201446201486%_))
                          (let ((_%$%e201447201489%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl201446201486%_))))
                            (let ((_%$%tl201449201494%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e201447201489%_)))
                                  (_%$%hd201448201492%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e201447201489%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd201448201492%_))
                                  (let ((_%$%e201450201497%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd201448201492%_))))
                                    (let ((_%$%tl201452201502%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e201450201497%_)))
                                          (_%$%hd201451201500%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e201450201497%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd201451201500%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd201451201500%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl201452201502%_))
                                                  (let ((_%$%e201453201505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl201452201502%_))))
                                                    (let ((_%$%tl201455201510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e201453201505%_)))
                                                          (_%$%hd201454201508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e201453201505%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl201455201510%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl201449201494%_))
                      (let ((_%__splice207900207901%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl201449201494%_
                                '0))))
                        (let ((_%$%tl201458201515%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207900207901%_ '1)))
                              (_%$%target201456201513%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207900207901%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl201458201515%_))
                              (_%__match207941207942%_
                               _%$%e201444201481%_
                               _%$%hd201445201484%_
                               _%$%tl201446201486%_
                               _%$%e201447201489%_
                               _%$%hd201448201492%_
                               _%$%tl201449201494%_
                               _%$%e201450201497%_
                               _%$%hd201451201500%_
                               _%$%tl201452201502%_
                               _%$%e201453201505%_
                               _%$%hd201454201508%_
                               _%$%tl201455201510%_
                               _%__splice207900207901%_
                               _%$%target201456201513%_
                               _%$%tl201458201515%_)
                              (_%__kont207902207903%_))))
                      (_%__kont207902207903%_))
                  (_%__kont207902207903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207902207903%_))
                                              (_%__kont207902207903%_))
                                          (_%__kont207902207903%_))))
                                  (_%__kont207902207903%_))))
                          (_%__kont207902207903%_))))
                  (_%__kont207902207903%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self201248%_ _%stx201249%_)
        (letrec ((_%simplify201251%_
                  (lambda (_%code201336%_)
                    (let* ((_%$%code201337201355%_ _%code201336%_)
                           (_%$%else201339201363%_ (lambda () _%code201336%_))
                           (_%$%K201341201399%_
                            (lambda (_%expr201366%_ _%test201367%_)
                              (let* ((_%$%expr201368201376%_ _%expr201366%_)
                                     (_%$%else201370201384%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test201367%_
                                                    (cons _%expr201366%_
                                                          '())))))
                                     (_%$%K201372201389%_
                                      (lambda (_%exprs201387%_)
                                        (cons 'and
                                              (cons _%test201367%_
                                                    _%exprs201387%_)))))
                                (if (pair? _%$%expr201368201376%_)
                                    (let ((_%$%hd201373201392%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr201368201376%_)))
                                          (_%$%tl201374201394%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr201368201376%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd201373201392%_ 'and))
                                          (let ((_%exprs201397%_
                                                 _%$%tl201374201394%_))
                                            (_%$%K201372201389%_
                                             _%exprs201397%_))
                                          (_%$%else201370201384%_)))
                                    (_%$%else201370201384%_))))))
                      (if (pair? _%$%code201337201355%_)
                          (let ((_%$%hd201342201402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code201337201355%_)))
                                (_%$%tl201343201404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code201337201355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd201342201402%_ 'if))
                                (if (pair? _%$%tl201343201404%_)
                                    (let ((_%$%hd201344201407%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl201343201404%_)))
                                          (_%$%tl201345201409%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl201343201404%_))))
                                      (let ((_%test201412%_
                                             _%$%hd201344201407%_))
                                        (if (pair? _%$%tl201345201409%_)
                                            (let ((_%$%hd201346201414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl201345201409%_)))
                                                  (_%$%tl201347201416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl201345201409%_))))
                                              (let ((_%expr201419%_
                                                     _%$%hd201346201414%_))
                                                (if (pair? _%$%tl201347201416%_)
                                                    (let ((_%$%hd201348201421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl201347201416%_)))
                                                          (_%$%tl201349201423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl201347201416%_))))
                                                      (if (pair? _%$%hd201348201421%_)
                                                          (let ((_%$%hd201350201426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd201348201421%_)))
                        (_%$%tl201351201428%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd201348201421%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd201350201426%_ 'quote))
                        (if (pair? _%$%tl201351201428%_)
                            (let ((_%$%hd201352201431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl201351201428%_)))
                                  (_%$%tl201353201433%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl201351201428%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd201352201431%_ '#f))
                                  (if (null? _%$%tl201353201433%_)
                                      (if (null? _%$%tl201349201423%_)
                                          (_%$%K201341201399%_
                                           _%expr201419%_
                                           _%test201412%_)
                                          (_%$%else201339201363%_))
                                      (_%$%else201339201363%_))
                                  (_%$%else201339201363%_)))
                            (_%$%else201339201363%_))
                        (_%$%else201339201363%_)))
                  (_%$%else201339201363%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else201339201363%_))))
                                            (_%$%else201339201363%_))))
                                    (_%$%else201339201363%_))
                                (_%$%else201339201363%_)))
                          (_%$%else201339201363%_))))))
          (let* ((_%$%g201253201274%_
                  (lambda (_%$%g201254201271%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g201254201271%_))))
                 (_%$%g201252201333%_
                  (lambda (_%$%g201254201277%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g201254201277%_))
                        (let ((_%$%e201258201279%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g201254201277%_))))
                          (let ((_%$%hd201259201282%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201258201279%_)))
                                (_%$%tl201260201284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201258201279%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl201260201284%_))
                                (let ((_%$%e201261201287%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl201260201284%_))))
                                  (let ((_%$%hd201262201290%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201261201287%_)))
                                        (_%$%tl201263201292%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201261201287%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl201263201292%_))
                                        (let ((_%$%e201264201295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl201263201292%_))))
                                          (let ((_%$%hd201265201298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e201264201295%_)))
                                                (_%$%tl201266201300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e201264201295%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl201266201300%_))
                                                (let ((_%$%e201267201303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl201266201300%_))))
                                                  (let ((_%$%hd201268201306%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e201267201303%_)))
                                                        (_%$%tl201269201308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e201267201303%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl201269201308%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify201251%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self201248%_
                                    _%$%hd201262201290%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self201248%_
                                          _%$%hd201265201298%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201248%_
                                                _%$%hd201268201306%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp208396
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self201248%_
                                            _%$%hd201262201290%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp208396
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self201248%_
                                         _%$%hd201265201298%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self201248%_
                                               _%$%hd201268201306%_))
                                            '())))))
                (_%$%g201253201274%_ _%$%g201254201277%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g201253201274%_
                                                 _%$%g201254201277%_))))
                                        (_%$%g201253201274%_
                                         _%$%g201254201277%_))))
                                (_%$%g201253201274%_ _%$%g201254201277%_))))
                        (_%$%g201253201274%_ _%$%g201254201277%_)))))
            (_%$%g201252201333%_ _%stx201249%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self201196%_ _%stx201197%_)
        (let* ((_%$%g201199201212%_
                (lambda (_%$%g201200201209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201200201209%_))))
               (_%$%g201198201245%_
                (lambda (_%$%g201200201215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201200201215%_))
                      (let ((_%$%e201202201217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201200201215%_))))
                        (let ((_%$%hd201203201220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201202201217%_)))
                              (_%$%tl201204201222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201202201217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201204201222%_))
                              (let ((_%$%e201205201225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201204201222%_))))
                                (let ((_%$%hd201206201228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201205201225%_)))
                                      (_%$%tl201207201230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201205201225%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl201207201230%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd201206201228%_))
                                      (_%$%g201199201212%_
                                       _%$%g201200201215%_))))
                              (_%$%g201199201212%_ _%$%g201200201215%_))))
                      (_%$%g201199201212%_ _%$%g201200201215%_)))))
          (_%$%g201198201245%_ _%stx201197%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self201128%_ _%stx201129%_)
        (let* ((_%$%g201131201148%_
                (lambda (_%$%g201132201145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201132201145%_))))
               (_%$%g201130201193%_
                (lambda (_%$%g201132201151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201132201151%_))
                      (let ((_%$%e201135201153%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201132201151%_))))
                        (let ((_%$%hd201136201156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201135201153%_)))
                              (_%$%tl201137201158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201135201153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201137201158%_))
                              (let ((_%$%e201138201161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201137201158%_))))
                                (let ((_%$%hd201139201164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201138201161%_)))
                                      (_%$%tl201140201166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201138201161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201140201166%_))
                                      (let ((_%$%e201141201169%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201140201166%_))))
                                        (let ((_%$%hd201142201172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201141201169%_)))
                                              (_%$%tl201143201174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201141201169%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl201143201174%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd201139201164%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self201128%_
                           _%$%hd201142201172%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g201131201148%_
                                               _%$%g201132201151%_))))
                                      (_%$%g201131201148%_
                                       _%$%g201132201151%_))))
                              (_%$%g201131201148%_ _%$%g201132201151%_))))
                      (_%$%g201131201148%_ _%$%g201132201151%_)))))
          (_%$%g201130201193%_ _%stx201129%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self200939%_ _%stx200940%_)
        (let* ((_%$%g200942200959%_
                (lambda (_%$%g200943200956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200943200956%_))))
               (_%$%g200941201125%_
                (lambda (_%$%g200943200962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200943200962%_))
                      (let ((_%$%e200946200964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200943200962%_))))
                        (let ((_%$%hd200947200967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200946200964%_)))
                              (_%$%tl200948200969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200946200964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200948200969%_))
                              (let ((_%$%e200949200972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200948200969%_))))
                                (let ((_%$%hd200950200975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200949200972%_)))
                                      (_%$%tl200951200977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200949200972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200951200977%_))
                                      (let ((_%$%e200952200980%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200951200977%_))))
                                        (let ((_%$%hd200953200983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200952200980%_)))
                                              (_%$%tl200954200985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200952200980%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200954200985%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self200939%_ _%$%hd200953200983%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self200939%_
                               _%$%hd200950200975%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp201004%_ ((_%rest201007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd200950200975%_
                                    (cons _%$%hd200953200983%_ '())))
                             (_%bind201009%_ '())
                             (_%args201010%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest201011201019%_
                                                            _%rest201007%_)
                                                           (_%$%else201013201027%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind201009%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args201010%_)
                                              '()))))))
                   (_%$%K201015201113%_
                    (lambda (_%rest201030%_ _%e201031%_)
                      (let* ((_%__stx207944207945%_ _%e201031%_)
                             (_%$%g201036201054%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207944207945%_)))))
                        (let ((_%__kont207946207947%_
                               (lambda ()
                                 (_%lp201004%_
                                  _%rest201030%_
                                  _%bind201009%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e201031%_))
                                        _%args201010%_))))
                              (_%__kont207948207949%_
                               (lambda ()
                                 (_%lp201004%_
                                  _%rest201030%_
                                  _%bind201009%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e201031%_))
                                        _%args201010%_))))
                              (_%__kont207950207951%_
                               (lambda ()
                                 (let ((_%tmp201061%_
                                        (let ((__tmp208397
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp208397))))
                                   (_%lp201004%_
                                    _%rest201030%_
                                    (cons (cons _%tmp201061%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e201031%_))
                                                      '()))
                                          _%bind201009%_)
                                    (cons _%tmp201061%_ _%args201010%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207944207945%_))
                              (let ((_%$%e201038201092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207944207945%_))))
                                (let ((_%$%tl201040201097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201038201092%_)))
                                      (_%$%hd201039201095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201038201092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd201039201095%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd201039201095%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl201040201097%_))
                                              (let ((_%$%e201041201100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl201040201097%_))))
                                                (let ((_%$%tl201043201105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201041201100%_)))
                                                      (_%$%hd201042201103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201041201100%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl201043201105%_))
                                                      (_%__kont207946207947%_)
                                                      (_%__kont207950207951%_))))
                                              (_%__kont207950207951%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd201039201095%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl201040201097%_))
                                                  (let ((_%$%e201047201077%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl201040201097%_))))
                                                    (let ((_%$%tl201049201082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e201047201077%_)))
                                                          (_%$%hd201048201080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e201047201077%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl201049201082%_))
                                                          (_%__kont207948207949%_)
                                                          (_%__kont207950207951%_))))
                                                  (_%__kont207950207951%_))
                                              (_%__kont207950207951%_)))
                                      (_%__kont207950207951%_))))
                              (_%__kont207950207951%_)))))))
              (if (pair? _%$%rest201011201019%_)
                  (let ((_%$%hd201016201116%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest201011201019%_)))
                        (_%$%tl201017201118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest201011201019%_))))
                    (let* ((_%e201121%_ _%$%hd201016201116%_)
                           (_%rest201123%_ _%$%tl201017201118%_))
                      (_%$%K201015201113%_ _%rest201123%_ _%e201121%_)))
                  (_%$%else201013201027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200942200959%_
                                               _%$%g200943200962%_))))
                                      (_%$%g200942200959%_
                                       _%$%g200943200962%_))))
                              (_%$%g200942200959%_ _%$%g200943200962%_))))
                      (_%$%g200942200959%_ _%$%g200943200962%_)))))
          (_%$%g200941201125%_ _%stx200940%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self200750%_ _%stx200751%_)
        (let* ((_%$%g200753200770%_
                (lambda (_%$%g200754200767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200754200767%_))))
               (_%$%g200752200936%_
                (lambda (_%$%g200754200773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200754200773%_))
                      (let ((_%$%e200757200775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200754200773%_))))
                        (let ((_%$%hd200758200778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200757200775%_)))
                              (_%$%tl200759200780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200757200775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200759200780%_))
                              (let ((_%$%e200760200783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200759200780%_))))
                                (let ((_%$%hd200761200786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200760200783%_)))
                                      (_%$%tl200762200788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200760200783%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200762200788%_))
                                      (let ((_%$%e200763200791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200762200788%_))))
                                        (let ((_%$%hd200764200794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200763200791%_)))
                                              (_%$%tl200765200796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200763200791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200765200796%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self200750%_ _%$%hd200764200794%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self200750%_
                               _%$%hd200761200786%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp200815%_ ((_%rest200818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd200761200786%_
                                    (cons _%$%hd200764200794%_ '())))
                             (_%bind200820%_ '())
                             (_%args200821%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest200822200830%_
                                                            _%rest200818%_)
                                                           (_%$%else200824200838%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind200820%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args200821%_)
                                              '()))))))
                   (_%$%K200826200924%_
                    (lambda (_%rest200841%_ _%e200842%_)
                      (let* ((_%__stx207990207991%_ _%e200842%_)
                             (_%$%g200847200865%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207990207991%_)))))
                        (let ((_%__kont207992207993%_
                               (lambda ()
                                 (_%lp200815%_
                                  _%rest200841%_
                                  _%bind200820%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200842%_))
                                        _%args200821%_))))
                              (_%__kont207994207995%_
                               (lambda ()
                                 (_%lp200815%_
                                  _%rest200841%_
                                  _%bind200820%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200842%_))
                                        _%args200821%_))))
                              (_%__kont207996207997%_
                               (lambda ()
                                 (let ((_%tmp200872%_
                                        (let ((__tmp208398
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp208398))))
                                   (_%lp200815%_
                                    _%rest200841%_
                                    (cons (cons _%tmp200872%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e200842%_))
                                                      '()))
                                          _%bind200820%_)
                                    (cons _%tmp200872%_ _%args200821%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207990207991%_))
                              (let ((_%$%e200849200903%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207990207991%_))))
                                (let ((_%$%tl200851200908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200849200903%_)))
                                      (_%$%hd200850200906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200849200903%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd200850200906%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd200850200906%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200851200908%_))
                                              (let ((_%$%e200852200911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl200851200908%_))))
                                                (let ((_%$%tl200854200916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200852200911%_)))
                                                      (_%$%hd200853200914%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200852200911%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl200854200916%_))
                                                      (_%__kont207992207993%_)
                                                      (_%__kont207996207997%_))))
                                              (_%__kont207996207997%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd200850200906%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl200851200908%_))
                                                  (let ((_%$%e200858200888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl200851200908%_))))
                                                    (let ((_%$%tl200860200893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200858200888%_)))
                                                          (_%$%hd200859200891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200858200888%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl200860200893%_))
                                                          (_%__kont207994207995%_)
                                                          (_%__kont207996207997%_))))
                                                  (_%__kont207996207997%_))
                                              (_%__kont207996207997%_)))
                                      (_%__kont207996207997%_))))
                              (_%__kont207996207997%_)))))))
              (if (pair? _%$%rest200822200830%_)
                  (let ((_%$%hd200827200927%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest200822200830%_)))
                        (_%$%tl200828200929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest200822200830%_))))
                    (let* ((_%e200932%_ _%$%hd200827200927%_)
                           (_%rest200934%_ _%$%tl200828200929%_))
                      (_%$%K200826200924%_ _%rest200934%_ _%e200932%_)))
                  (_%$%else200824200838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200753200770%_
                                               _%$%g200754200773%_))))
                                      (_%$%g200753200770%_
                                       _%$%g200754200773%_))))
                              (_%$%g200753200770%_ _%$%g200754200773%_))))
                      (_%$%g200753200770%_ _%$%g200754200773%_)))))
          (_%$%g200752200936%_ _%stx200751%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self200666%_ _%stx200667%_)
        (let* ((_%$%g200669200690%_
                (lambda (_%$%g200670200687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200670200687%_))))
               (_%$%g200668200747%_
                (lambda (_%$%g200670200693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200670200693%_))
                      (let ((_%$%e200674200695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200670200693%_))))
                        (let ((_%$%hd200675200698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200674200695%_)))
                              (_%$%tl200676200700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200674200695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200676200700%_))
                              (let ((_%$%e200677200703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200676200700%_))))
                                (let ((_%$%hd200678200706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200677200703%_)))
                                      (_%$%tl200679200708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200677200703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200679200708%_))
                                      (let ((_%$%e200680200711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200679200708%_))))
                                        (let ((_%$%hd200681200714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200680200711%_)))
                                              (_%$%tl200682200716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200680200711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200682200716%_))
                                              (let ((_%$%e200683200719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl200682200716%_))))
                                                (let ((_%$%hd200684200722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200683200719%_)))
                                                      (_%$%tl200685200724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200683200719%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl200685200724%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self200666%_
                             _%$%hd200684200722%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self200666%_
                                   _%$%hd200681200714%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self200666%_
                                         _%$%hd200678200706%_))
                                      (cons ''#f '())))))
              (_%$%g200669200690%_ _%$%g200670200693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200669200690%_
                                               _%$%g200670200693%_))))
                                      (_%$%g200669200690%_
                                       _%$%g200670200693%_))))
                              (_%$%g200669200690%_ _%$%g200670200693%_))))
                      (_%$%g200669200690%_ _%$%g200670200693%_)))))
          (_%$%g200668200747%_ _%stx200667%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self200566%_ _%stx200567%_)
        (let* ((_%$%g200569200594%_
                (lambda (_%$%g200570200591%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200570200591%_))))
               (_%$%g200568200663%_
                (lambda (_%$%g200570200597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200570200597%_))
                      (let ((_%$%e200575200599%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200570200597%_))))
                        (let ((_%$%hd200576200602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200575200599%_)))
                              (_%$%tl200577200604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200575200599%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200577200604%_))
                              (let ((_%$%e200578200607%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200577200604%_))))
                                (let ((_%$%hd200579200610%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200578200607%_)))
                                      (_%$%tl200580200612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200578200607%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200580200612%_))
                                      (let ((_%$%e200581200615%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200580200612%_))))
                                        (let ((_%$%hd200582200618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200581200615%_)))
                                              (_%$%tl200583200620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200581200615%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200583200620%_))
                                              (let ((_%$%e200584200623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl200583200620%_))))
                                                (let ((_%$%hd200585200626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200584200623%_)))
                                                      (_%$%tl200586200628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200584200623%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl200586200628%_))
                                                      (let ((_%$%e200587200631%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl200586200628%_))))
                (let ((_%$%hd200588200634%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e200587200631%_)))
                      (_%$%tl200589200636%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200587200631%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl200589200636%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200566%_
                                     _%$%hd200585200626%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self200566%_
                                           _%$%hd200588200634%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self200566%_
                                                 _%$%hd200582200618%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200566%_
                                                       _%$%hd200579200610%_))
                                                    (cons ''#f '()))))))
                      (_%$%g200569200594%_ _%$%g200570200597%_))))
              (_%$%g200569200594%_ _%$%g200570200597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200569200594%_
                                               _%$%g200570200597%_))))
                                      (_%$%g200569200594%_
                                       _%$%g200570200597%_))))
                              (_%$%g200569200594%_ _%$%g200570200597%_))))
                      (_%$%g200569200594%_ _%$%g200570200597%_)))))
          (_%$%g200568200663%_ _%stx200567%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self200482%_ _%stx200483%_)
        (let* ((_%$%g200485200506%_
                (lambda (_%$%g200486200503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200486200503%_))))
               (_%$%g200484200563%_
                (lambda (_%$%g200486200509%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200486200509%_))
                      (let ((_%$%e200490200511%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200486200509%_))))
                        (let ((_%$%hd200491200514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200490200511%_)))
                              (_%$%tl200492200516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200490200511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200492200516%_))
                              (let ((_%$%e200493200519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200492200516%_))))
                                (let ((_%$%hd200494200522%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200493200519%_)))
                                      (_%$%tl200495200524%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200493200519%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200495200524%_))
                                      (let ((_%$%e200496200527%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200495200524%_))))
                                        (let ((_%$%hd200497200530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200496200527%_)))
                                              (_%$%tl200498200532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200496200527%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200498200532%_))
                                              (let ((_%$%e200499200535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl200498200532%_))))
                                                (let ((_%$%hd200500200538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200499200535%_)))
                                                      (_%$%tl200501200540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200499200535%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl200501200540%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self200482%_
                             _%$%hd200500200538%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self200482%_
                                   _%$%hd200497200530%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self200482%_
                                         _%$%hd200494200522%_))
                                      (cons ''#f '())))))
              (_%$%g200485200506%_ _%$%g200486200509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200485200506%_
                                               _%$%g200486200509%_))))
                                      (_%$%g200485200506%_
                                       _%$%g200486200509%_))))
                              (_%$%g200485200506%_ _%$%g200486200509%_))))
                      (_%$%g200485200506%_ _%$%g200486200509%_)))))
          (_%$%g200484200563%_ _%stx200483%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self200382%_ _%stx200383%_)
        (let* ((_%$%g200385200410%_
                (lambda (_%$%g200386200407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200386200407%_))))
               (_%$%g200384200479%_
                (lambda (_%$%g200386200413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200386200413%_))
                      (let ((_%$%e200391200415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200386200413%_))))
                        (let ((_%$%hd200392200418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200391200415%_)))
                              (_%$%tl200393200420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200391200415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200393200420%_))
                              (let ((_%$%e200394200423%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200393200420%_))))
                                (let ((_%$%hd200395200426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200394200423%_)))
                                      (_%$%tl200396200428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200394200423%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200396200428%_))
                                      (let ((_%$%e200397200431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200396200428%_))))
                                        (let ((_%$%hd200398200434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200397200431%_)))
                                              (_%$%tl200399200436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200397200431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200399200436%_))
                                              (let ((_%$%e200400200439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl200399200436%_))))
                                                (let ((_%$%hd200401200442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200400200439%_)))
                                                      (_%$%tl200402200444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200400200439%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl200402200444%_))
                                                      (let ((_%$%e200403200447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl200402200444%_))))
                (let ((_%$%hd200404200450%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e200403200447%_)))
                      (_%$%tl200405200452%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200403200447%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl200405200452%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200382%_
                                     _%$%hd200401200442%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self200382%_
                                           _%$%hd200404200450%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self200382%_
                                                 _%$%hd200398200434%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200382%_
                                                       _%$%hd200395200426%_))
                                                    (cons ''#f '()))))))
                      (_%$%g200385200410%_ _%$%g200386200413%_))))
              (_%$%g200385200410%_ _%$%g200386200413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200385200410%_
                                               _%$%g200386200413%_))))
                                      (_%$%g200385200410%_
                                       _%$%g200386200413%_))))
                              (_%$%g200385200410%_ _%$%g200386200413%_))))
                      (_%$%g200385200410%_ _%$%g200386200413%_)))))
          (_%$%g200384200479%_ _%stx200383%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self200177%_ _%stx200178%_)
        (let* ((_%$%g200180200201%_
                (lambda (_%$%g200181200198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200181200198%_))))
               (_%$%g200179200379%_
                (lambda (_%$%g200181200204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200181200204%_))
                      (let ((_%$%e200185200206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200181200204%_))))
                        (let ((_%$%hd200186200209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200185200206%_)))
                              (_%$%tl200187200211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200185200206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200187200211%_))
                              (let ((_%$%e200188200214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200187200211%_))))
                                (let ((_%$%hd200189200217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200188200214%_)))
                                      (_%$%tl200190200219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200188200214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200190200219%_))
                                      (let ((_%$%e200191200222%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200190200219%_))))
                                        (let ((_%$%hd200192200225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200191200222%_)))
                                              (_%$%tl200193200227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200191200222%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200193200227%_))
                                              (let ((_%$%e200194200230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl200193200227%_))))
                                                (let ((_%$%hd200195200233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200194200230%_)))
                                                      (_%$%tl200196200235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200194200230%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl200196200235%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self200177%_
                                 _%$%hd200195200233%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self200177%_
                                       _%$%hd200192200225%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp200258%_ ((_%rest200261%_
                                      (cons _%$%hd200192200225%_
                                            (cons _%$%hd200195200233%_ '())))
                                     (_%bind200263%_ '())
                                     (_%args200264%_ '()))
                    (let* ((_%$%rest200265200273%_ _%rest200261%_)
                           (_%$%else200267200281%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind200263%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp208399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (foldr__0 cons __tmp208399 _%args200264%_)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K200269200367%_
                            (lambda (_%rest200284%_ _%e200285%_)
                              (let* ((_%__stx208036208037%_ _%e200285%_)
                                     (_%$%g200290200308%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx208036208037%_)))))
                                (let ((_%__kont208038208039%_
                                       (lambda ()
                                         (_%lp200258%_
                                          _%rest200284%_
                                          _%bind200263%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e200285%_))
                                                _%args200264%_))))
                                      (_%__kont208040208041%_
                                       (lambda ()
                                         (_%lp200258%_
                                          _%rest200284%_
                                          _%bind200263%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e200285%_))
                                                _%args200264%_))))
                                      (_%__kont208042208043%_
                                       (lambda ()
                                         (let ((_%tmp200315%_
                                                (let ((__tmp208400
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp208400))))
                                           (_%lp200258%_
                                            _%rest200284%_
                                            (cons (cons _%tmp200315%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e200285%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind200263%_)
                                            (cons _%tmp200315%_
                                                  _%args200264%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx208036208037%_))
                                      (let ((_%$%e200292200346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx208036208037%_))))
                                        (let ((_%$%tl200294200351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200292200346%_)))
                                              (_%$%hd200293200349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200292200346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd200293200349%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd200293200349%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl200294200351%_))
                                                      (let ((_%$%e200295200354%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl200294200351%_))))
                (let ((_%$%tl200297200359%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e200295200354%_)))
                      (_%$%hd200296200357%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e200295200354%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl200297200359%_))
                      (_%__kont208038208039%_)
                      (_%__kont208042208043%_))))
              (_%__kont208042208043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd200293200349%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl200294200351%_))
                                                          (let ((_%$%e200301200331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl200294200351%_))))
                    (let ((_%$%tl200303200336%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200301200331%_)))
                          (_%$%hd200302200334%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200301200331%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl200303200336%_))
                          (_%__kont208040208041%_)
                          (_%__kont208042208043%_))))
                  (_%__kont208042208043%_))
              (_%__kont208042208043%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208042208043%_))))
                                      (_%__kont208042208043%_)))))))
                      (if (pair? _%$%rest200265200273%_)
                          (let ((_%$%hd200270200370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest200265200273%_)))
                                (_%$%tl200271200372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest200265200273%_))))
                            (let* ((_%e200375%_ _%$%hd200270200370%_)
                                   (_%rest200377%_ _%$%tl200271200372%_))
                              (_%$%K200269200367%_
                               _%rest200377%_
                               _%e200375%_)))
                          (_%$%else200267200281%_)))))
              (_%$%g200180200201%_ _%$%g200181200204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200180200201%_
                                               _%$%g200181200204%_))))
                                      (_%$%g200180200201%_
                                       _%$%g200181200204%_))))
                              (_%$%g200180200201%_ _%$%g200181200204%_))))
                      (_%$%g200180200201%_ _%$%g200181200204%_)))))
          (_%$%g200179200379%_ _%stx200178%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self199956%_ _%stx199957%_)
        (let* ((_%$%g199959199984%_
                (lambda (_%$%g199960199981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199960199981%_))))
               (_%$%g199958200174%_
                (lambda (_%$%g199960199987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199960199987%_))
                      (let ((_%$%e199965199989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199960199987%_))))
                        (let ((_%$%hd199966199992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199965199989%_)))
                              (_%$%tl199967199994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199965199989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199967199994%_))
                              (let ((_%$%e199968199997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199967199994%_))))
                                (let ((_%$%hd199969200000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199968199997%_)))
                                      (_%$%tl199970200002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199968199997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199970200002%_))
                                      (let ((_%$%e199971200005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199970200002%_))))
                                        (let ((_%$%hd199972200008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199971200005%_)))
                                              (_%$%tl199973200010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199971200005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl199973200010%_))
                                              (let ((_%$%e199974200013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl199973200010%_))))
                                                (let ((_%$%hd199975200016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e199974200013%_)))
                                                      (_%$%tl199976200018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e199974200013%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl199976200018%_))
                                                      (let ((_%$%e199977200021%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl199976200018%_))))
                (let ((_%$%hd199978200024%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e199977200021%_)))
                      (_%$%tl199979200026%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e199977200021%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl199979200026%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self199956%_
                                         _%$%hd199975200016%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199956%_
                                               _%$%hd199978200024%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self199956%_
                                                     _%$%hd199972200008%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp200053%_ ((_%rest200056%_
                                              (cons _%$%hd199972200008%_
                                                    (cons _%$%hd199978200024%_
                                                          (cons _%$%hd199975200016%_
                                                                '()))))
                                             (_%bind200058%_ '())
                                             (_%args200059%_ '()))
                            (let* ((_%$%rest200060200068%_ _%rest200056%_)
                                   (_%$%else200062200076%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind200058%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp208401 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (foldr__0 cons __tmp208401 _%args200059%_)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K200064200162%_
                                    (lambda (_%rest200079%_ _%e200080%_)
                                      (let* ((_%__stx208082208083%_
                                              _%e200080%_)
                                             (_%$%g200085200103%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx208082208083%_)))))
                                        (let ((_%__kont208084208085%_
                                               (lambda ()
                                                 (_%lp200053%_
                                                  _%rest200079%_
                                                  _%bind200058%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e200080%_))
                                                        _%args200059%_))))
                                              (_%__kont208086208087%_
                                               (lambda ()
                                                 (_%lp200053%_
                                                  _%rest200079%_
                                                  _%bind200058%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e200080%_))
                                                        _%args200059%_))))
                                              (_%__kont208088208089%_
                                               (lambda ()
                                                 (let ((_%tmp200110%_
                                                        (let ((__tmp208402
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp208402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp200053%_
                                                    _%rest200079%_
                                                    (cons (cons _%tmp200110%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e200080%_))
                              '()))
                  _%bind200058%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp200110%_
                                                          _%args200059%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx208082208083%_))
                                              (let ((_%$%e200087200141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx208082208083%_))))
                                                (let ((_%$%tl200089200146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200087200141%_)))
                                                      (_%$%hd200088200144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200087200141%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd200088200144%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd200088200144%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl200089200146%_))
                      (let ((_%$%e200090200149%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl200089200146%_))))
                        (let ((_%$%tl200092200154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200090200149%_)))
                              (_%$%hd200091200152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200090200149%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl200092200154%_))
                              (_%__kont208084208085%_)
                              (_%__kont208088208089%_))))
                      (_%__kont208088208089%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd200088200144%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl200089200146%_))
                          (let ((_%$%e200096200126%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl200089200146%_))))
                            (let ((_%$%tl200098200131%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e200096200126%_)))
                                  (_%$%hd200097200129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e200096200126%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl200098200131%_))
                                  (_%__kont208086208087%_)
                                  (_%__kont208088208089%_))))
                          (_%__kont208088208089%_))
                      (_%__kont208088208089%_)))
              (_%__kont208088208089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208088208089%_)))))))
                              (if (pair? _%$%rest200060200068%_)
                                  (let ((_%$%hd200065200165%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest200060200068%_)))
                                        (_%$%tl200066200167%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest200060200068%_))))
                                    (let* ((_%e200170%_ _%$%hd200065200165%_)
                                           (_%rest200172%_
                                            _%$%tl200066200167%_))
                                      (_%$%K200064200162%_
                                       _%rest200172%_
                                       _%e200170%_)))
                                  (_%$%else200062200076%_)))))
                      (_%$%g199959199984%_ _%$%g199960199987%_))))
              (_%$%g199959199984%_ _%$%g199960199987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g199959199984%_
                                               _%$%g199960199987%_))))
                                      (_%$%g199959199984%_
                                       _%$%g199960199987%_))))
                              (_%$%g199959199984%_ _%$%g199960199987%_))))
                      (_%$%g199959199984%_ _%$%g199960199987%_)))))
          (_%$%g199958200174%_ _%stx199957%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self199795%_ _%stx199796%_)
        (letrec ((_%import-set-template199798%_
                  (lambda (_%in199901%_ _%phi199902%_)
                    (let ((_%iphi199904%_
                           (fx+ _%phi199902%_
                                (##direct-structure-ref
                                 _%in199901%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports199905%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in199901%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp199907%_ ((_%rest199909%_ _%imports199905%_)
                                         (_%r199910%_ '()))
                        (let* ((_%$%rest199911199919%_ _%rest199909%_)
                               (_%$%else199913199927%_ (lambda () _%r199910%_))
                               (_%$%K199915199944%_
                                (lambda (_%rest199930%_ _%in199931%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in199931%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi199904%_))
                                          (_%lp199907%_
                                           _%rest199930%_
                                           (cons _%in199931%_ _%r199910%_))
                                          (_%lp199907%_
                                           _%rest199930%_
                                           _%r199910%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in199931%_
                                             'gx#module-import::t))
                                          (let ((_%iphi199935%_
                                                 (fx+ _%phi199902%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in199931%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi199935%_))
                                                (_%lp199907%_
                                                 _%rest199930%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in199931%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r199910%_))
                                                (_%lp199907%_
                                                 _%rest199930%_
                                                 _%r199910%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in199931%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi199938%_
                                                     (fx+ _%iphi199904%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in199931%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi199938%_))
                                                    (_%lp199907%_
                                                     _%rest199930%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in199931%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r199910%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi199938%_))
                                                        (_%lp199907%_
                                                         _%rest199930%_
                                                         (let ((__tmp208403
                                                                (_%import-set-template199798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in199931%_
                         _%iphi199904%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r199910%_ __tmp208403)))
                (_%lp199907%_ _%rest199930%_ _%r199910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp199907%_
                                               _%rest199930%_
                                               _%r199910%_)))))))
                          (if (pair? _%$%rest199911199919%_)
                              (let ((_%$%hd199916199947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest199911199919%_)))
                                    (_%$%tl199917199949%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest199911199919%_))))
                                (let* ((_%in199952%_ _%$%hd199916199947%_)
                                       (_%rest199954%_ _%$%tl199917199949%_))
                                  (_%$%K199915199944%_
                                   _%rest199954%_
                                   _%in199952%_)))
                              (_%$%else199913199927%_))))))))
          (let* ((_%$%g199800199810%_
                  (lambda (_%$%g199801199807%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g199801199807%_))))
                 (_%$%g199799199898%_
                  (lambda (_%$%g199801199813%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g199801199813%_))
                        (let ((_%$%e199803199815%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g199801199813%_))))
                          (let ((_%$%hd199804199818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199803199815%_)))
                                (_%$%tl199805199820%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199803199815%_))))
                            (let ((_%ht199834%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp199836%_ ((_%rest199838%_
                                                  _%$%tl199805199820%_)
                                                 (_%loads199839%_ '()))
                                (letrec ((_%K199841%_
                                          (lambda (_%ctx199891%_
                                                   _%rest199892%_)
                                            (let ((_%id199894%_
                                                   (##structure-ref
                                                    _%ctx199891%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht199834%_
                                                     _%id199894%_))
                                                  (_%lp199836%_
                                                   _%rest199892%_
                                                   _%loads199839%_)
                                                  (let ((_%rt199896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id199894%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht199834%_
                                                       _%id199894%_
                                                       _%rt199896%_))
                                                    (_%lp199836%_
                                                     _%rest199892%_
                                                     (cons _%rt199896%_
                                                           _%loads199839%_))))))))
                                  (let* ((_%$%rest199842199850%_
                                          _%rest199838%_)
                                         (_%$%else199844199862%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp208405
                                                         (lambda (_%$%g199857199859%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g199857199859%_)))
                (__tmp208404 (reverse _%loads199839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp208405
                                                           __tmp208404)))))
                                         (_%$%K199846199879%_
                                          (lambda (_%rest199865%_ _%in199866%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in199866%_
                                                   'gx#module-context::t))
                                                (_%K199841%_
                                                 _%in199866%_
                                                 _%rest199865%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in199866%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in199866%_
                            '3
                            '#f
                            '#f)))
                (_%K199841%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in199866%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest199865%_)
                (_%lp199836%_ _%rest199865%_ _%loads199839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in199866%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi199871%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in199866%_ '2 '#f '#f))))
                  (if (fxzero? _%phi199871%_)
                      (_%K199841%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in199866%_ '1 '#f '#f))
                       _%rest199865%_)
                      (if (fxpositive? _%phi199871%_)
                          (let ((_%deps199875%_
                                 (_%import-set-template199798%_
                                  _%in199866%_
                                  '0)))
                            (_%lp199836%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest199865%_ _%deps199875%_))
                             _%loads199839%_))
                          (_%lp199836%_ _%rest199865%_ _%loads199839%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx199796%_
                   _%in199866%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest199842199850%_)
                                        (let ((_%$%hd199847199882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest199842199850%_)))
                                              (_%$%tl199848199884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest199842199850%_))))
                                          (let* ((_%in199887%_
                                                  _%$%hd199847199882%_)
                                                 (_%rest199889%_
                                                  _%$%tl199848199884%_))
                                            (_%$%K199846199879%_
                                             _%rest199889%_
                                             _%in199887%_)))
                                        (_%$%else199844199862%_))))))))
                        (_%$%g199800199810%_ _%$%g199801199813%_)))))
            (_%$%g199799199898%_ _%stx199796%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self199609%_ _%stx199610%_)
        (letrec ((_%add-lift!199612%_
                  (lambda (_%expr199793%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr199793%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote199613%_
                  (lambda (_%id199790%_ _%marks199791%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id199790%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks199791%_
                                                        '()))))))))
                 (_%generate-simple199614%_
                  (lambda (_%stxq199785%_)
                    (let ((_%gid199787%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid199788%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq199785%_))))
                      (_%add-lift!199612%_
                       (cons 'define
                             (cons _%gid199787%_
                                   (cons (_%generate-syntax-quote199613%_
                                          _%qid199788%_
                                          ''())
                                         '()))))
                      (let ((__tmp208406
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp208406 _%stxq199785%_ _%gid199787%_))
                      _%gid199787%_)))
                 (_%generate-serialized199615%_
                  (lambda (_%stxq199775%_ _%marks199776%_)
                    (let* ((_%mark-refs199778%_
                            (map _%generate-mark199616%_ _%marks199776%_))
                           (_%gid199780%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid199782%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq199775%_))))
                      (_%add-lift!199612%_
                       (cons 'define
                             (cons _%gid199780%_
                                   (cons (_%generate-syntax-quote199613%_
                                          _%qid199782%_
                                          (cons 'list _%mark-refs199778%_))
                                         '()))))
                      (let ((__tmp208407
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp208407 _%stxq199775%_ _%gid199780%_))
                      _%gid199780%_)))
                 (_%generate-mark199616%_
                  (lambda (_%mark199760%_)
                    (let ((_%$e199762%_
                           (let ((__tmp208408
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp208408 _%mark199760%_))))
                      (if _%$e199762%_
                          _%$e199762%_
                          (let* ((_%gid199766%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr199768%_
                                  (_%serialize-mark199617%_ _%mark199760%_))
                                 (_%ctx199770%_
                                  (let ((__tmp208409
                                         (##structure-ref
                                          _%mark199760%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp208409)))
                                 (_%ctx-ref199772%_
                                  (if (eq? _%ctx199770%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref199618%_
                                                               _%ctx199770%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp208410
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp208410
                               _%mark199760%_
                               _%gid199766%_))
                            (_%add-lift!199612%_
                             (cons 'define
                                   (cons _%gid199766%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr199768%_ '()))
                   (cons _%ctx-ref199772%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid199766%_)))))
                 (_%serialize-mark199617%_
                  (lambda (_%mark199708%_)
                    (letrec ((_%quote-e199710%_
                              (lambda (_%sym199758%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym199758%_))
                                    _%sym199758%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym199758%_))))))
                      (let* ((_%$%mark199711199720%_ _%mark199708%_)
                             (_%$%E199713199723%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark199711199720%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K199714199735%_
                              (lambda (_%trace199726%_
                                       _%phi199727%_
                                       _%ctx199728%_
                                       _%subst199729%_)
                                (let ((_%subs199731%_
                                       (if _%subst199729%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst199729%_))
                                           '())))
                                  (cons _%phi199727%_
                                        (let ((__tmp208411
                                               (lambda (_%pair199733%_)
                                                 (cons (_%quote-e199710%_
                                                        (car _%pair199733%_))
                                                       (_%quote-e199710%_
                                                        (cdr _%pair199733%_))))))
                                          (declare (not safe))
                                          (##map __tmp208411
                                                 _%subs199731%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark199711199720%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e199715199738%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark199711199720%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst199741%_ _%$%e199715199738%_)
                                   (_%$%e199716199743%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark199711199720%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx199746%_ _%$%e199716199743%_)
                                   (_%$%e199717199748%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark199711199720%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi199751%_ _%$%e199717199748%_)
                                   (_%$%e199718199753%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark199711199720%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace199756%_ _%$%e199718199753%_))
                              (_%$%K199714199735%_
                               _%trace199756%_
                               _%phi199751%_
                               _%ctx199746%_
                               _%subst199741%_))
                            (_%$%E199713199723%_))))))
                 (_%context-ref199618%_
                  (lambda (_%ctx199695%_)
                    (if (let ((__tmp208412
                               (##structure-ref
                                _%ctx199695%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp208412
                           'gx#module-context::t))
                        (let ((_%ctx-ref199697%_
                               (_%context-ref-nested199620%_ _%ctx199695%_))
                              (_%ctx-origin199698%_
                               (_%context-ref-origin199619%_ _%ctx199695%_))
                              (_%origin199699%_
                               (_%context-ref-origin199619%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin199699%_ _%ctx-origin199698%_)
                              (let ((_%ref199701%_
                                     (_%context-ref-nested199620%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp199703%_ ((_%ref199705%_
                                                    (cdr _%ref199701%_))
                                                   (_%ctx-ref199706%_
                                                    (cdr _%ctx-ref199697%_)))
                                  (if (and (pair? _%ref199705%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref199705%_))
                                                (car _%ctx-ref199706%_)))
                                      (_%lp199703%_
                                       (cdr _%ref199705%_)
                                       (cdr _%ctx-ref199706%_))
                                      (cons '#f _%ctx-ref199706%_))))
                              _%ctx-ref199697%_))
                        (let ((__tmp208413
                               (##structure-ref
                                _%ctx199695%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp208413)))))
                 (_%context-ref-origin199619%_
                  (lambda (_%ctx199687%_)
                    (let _%lp199689%_ ((_%ctx199691%_ _%ctx199687%_))
                      (let ((_%super199693%_
                             (##structure-ref
                              _%ctx199691%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super199693%_
                               'gx#module-context::t))
                            (_%lp199689%_ _%super199693%_)
                            _%ctx199691%_)))))
                 (_%context-ref-nested199620%_
                  (lambda (_%ctx199678%_)
                    (let _%lp199680%_ ((_%ctx199682%_ _%ctx199678%_)
                                       (_%r199683%_ '()))
                      (let ((_%super199685%_
                             (##structure-ref
                              _%ctx199682%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super199685%_
                               'gx#module-context::t))
                            (_%lp199680%_
                             _%super199685%_
                             (cons (car (##structure-ref
                                         _%ctx199682%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r199683%_))
                            (cons (let ((__tmp208414
                                         (##structure-ref
                                          _%ctx199682%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp208414))
                                  _%r199683%_)))))))
          (let* ((_%$%g199622199635%_
                  (lambda (_%$%g199623199632%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g199623199632%_))))
                 (_%$%g199621199675%_
                  (lambda (_%$%g199623199638%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g199623199638%_))
                        (let ((_%$%e199625199640%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g199623199638%_))))
                          (let ((_%$%hd199626199643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199625199640%_)))
                                (_%$%tl199627199645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199625199640%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl199627199645%_))
                                (let ((_%$%e199628199648%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl199627199645%_))))
                                  (let ((_%$%hd199629199651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199628199648%_)))
                                        (_%$%tl199630199653%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199628199648%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl199630199653%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd199629199651%_))
                                            (let ((_%$e199669%_
                                                   (let ((__tmp208415
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp208415
                                                      _%$%hd199629199651%_))))
                                              (if _%$e199669%_
                                                  _%$e199669%_
                                                  (let ((_%marks199673%_
                                                         (##direct-structure-ref
                                                          _%$%hd199629199651%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks199673%_)
                                                        (_%generate-simple199614%_
                                                         _%$%hd199629199651%_)
                                                        (_%generate-serialized199615%_
                                                         _%$%hd199629199651%_
                                                         _%marks199673%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd199629199651%_)))
                                        (_%$%g199622199635%_
                                         _%$%g199623199638%_))))
                                (_%$%g199622199635%_ _%$%g199623199638%_))))
                        (_%$%g199622199635%_ _%$%g199623199638%_)))))
            (_%$%g199621199675%_ _%stx199610%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self199541%_ _%stx199542%_)
        (let* ((_%$%g199544199561%_
                (lambda (_%$%g199545199558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199545199558%_))))
               (_%$%g199543199606%_
                (lambda (_%$%g199545199564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199545199564%_))
                      (let ((_%$%e199548199566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199545199564%_))))
                        (let ((_%$%hd199549199569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199548199566%_)))
                              (_%$%tl199550199571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199548199566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199550199571%_))
                              (let ((_%$%e199551199574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199550199571%_))))
                                (let ((_%$%hd199552199577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199551199574%_)))
                                      (_%$%tl199553199579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199551199574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199553199579%_))
                                      (let ((_%$%e199554199582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199553199579%_))))
                                        (let ((_%$%hd199555199585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199554199582%_)))
                                              (_%$%tl199556199587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199554199582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199556199587%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd199552199577%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self199541%_
                           _%$%hd199555199585%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g199544199561%_
                                               _%$%g199545199564%_))))
                                      (_%$%g199544199561%_
                                       _%$%g199545199564%_))))
                              (_%$%g199544199561%_ _%$%g199545199564%_))))
                      (_%$%g199544199561%_ _%$%g199545199564%_)))))
          (_%$%g199543199606%_ _%stx199542%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self199490%_ _%stx199491%_)
        (let* ((_%$%g199493199503%_
                (lambda (_%$%g199494199500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199494199500%_))))
               (_%$%g199492199538%_
                (lambda (_%$%g199494199506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199494199506%_))
                      (let ((_%$%e199496199508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199494199506%_))))
                        (let ((_%$%hd199497199511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199496199508%_)))
                              (_%$%tl199498199513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199496199508%_))))
                          (let* ((_%c-body199530%_
                                  (map (lambda (_%$%g199525199527%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199490%_
                                            _%$%g199525199527%_)))
                                       _%$%tl199498199513%_))
                                 (_%c-body199535%_
                                  (let ((__tmp208416
                                         (lambda (_%$obj199532%_)
                                           (not (eq? _%$obj199532%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp208416 _%c-body199530%_))))
                            (cons '%#begin _%c-body199535%_))))
                      (_%$%g199493199503%_ _%$%g199494199506%_)))))
          (_%$%g199492199538%_ _%stx199491%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self199395%_ _%stx199396%_)
        (let* ((_%$%g199398199408%_
                (lambda (_%$%g199399199405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199399199405%_))))
               (_%$%g199397199487%_
                (lambda (_%$%g199399199411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199399199411%_))
                      (let ((_%$%e199401199413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199399199411%_))))
                        (let ((_%$%hd199402199416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199401199413%_)))
                              (_%$%tl199403199418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199401199413%_))))
                          (let* ((_%phi199431%_
                                  (let ((__tmp208417
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp208417 '1)))
                                 (_%block199433%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self199395%_ 'state))
                                   _%phi199431%_))
                                 (_%compiled199436%_
                                  (let ((__tmp208418
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self199395%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl199403199418%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp208418
                                     gx#current-expander-phi
                                     _%phi199431%_)))
                                 (_%$%g199439199449%_
                                  (lambda (_%$%g199440199446%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g199440199446%_))))
                                 (_%$%g199438199484%_
                                  (lambda (_%$%g199440199452%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g199440199452%_))
                                        (let ((_%$%e199442199454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g199440199452%_))))
                                          (let ((_%$%hd199443199457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e199442199454%_)))
                                                (_%$%tl199444199459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e199442199454%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd199443199457%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd199443199457%_))
                                                    (let ((_%c-body199479%_
                                                           (filter (lambda (_%$obj199476%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj199476%_ '#!void)))
                           _%$%tl199444199459%_)))
              (if _%block199433%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block199433%_
                                                            '()))
                                                '())))
                              _%c-body199479%_))
                  (if (null? _%c-body199479%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body199479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g199439199449%_
                                                     _%$%g199440199452%_))
                                                (_%$%g199439199449%_
                                                 _%$%g199440199452%_))))
                                        (_%$%g199439199449%_
                                         _%$%g199440199452%_)))))
                            (_%$%g199438199484%_ _%compiled199436%_))))
                      (_%$%g199398199408%_ _%$%g199399199411%_)))))
          (_%$%g199397199487%_ _%stx199396%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self199326%_ _%stx199327%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self199326%_ 'state)))
        (let* ((_%$%g199329199343%_
                (lambda (_%$%g199330199340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199330199340%_))))
               (_%$%g199328199392%_
                (lambda (_%$%g199330199346%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199330199346%_))
                      (let ((_%$%e199333199348%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199330199346%_))))
                        (let ((_%$%hd199334199351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199333199348%_)))
                              (_%$%tl199335199353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199333199348%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199335199353%_))
                              (let ((_%$%e199336199356%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199335199353%_))))
                                (let ((_%$%hd199337199359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199336199356%_)))
                                      (_%$%tl199338199361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199336199356%_))))
                                  (let ((_%key199378%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd199337199359%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key199378%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx199327%_
                                           _%$%hd199337199359%_
                                           _%key199378%_)))
                                    (let* ((_%ctx199380%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd199337199359%_)))
                                           (_%code199383%_
                                            (let ((__tmp208419
                                                   (lambda ()
                                                     (let ((__tmp208420
                                                            (##structure-ref
                                                             _%ctx199380%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self199326%_
                                                        __tmp208420)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp208419
                                               gx#current-expander-context
                                               _%ctx199380%_)))
                                           (_%rt199385%_
                                            (let ((__tmp208421
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp208421
                                               _%ctx199380%_)))
                                           (_%loader199387%_
                                            (if _%rt199385%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt199385%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid199389%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd199337199359%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self199326%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid199389%_
                                                  (cons _%code199383%_
                                                        _%loader199387%_)))))))
                              (_%$%g199329199343%_ _%$%g199330199346%_))))
                      (_%$%g199329199343%_ _%$%g199330199346%_)))))
          (_%$%g199328199392%_ _%stx199327%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx199313%_ _%context-chain199314%_)
        (let _%lp199316%_ ((_%ctx199318%_ _%ctx199313%_) (_%path199319%_ '()))
          (let ((_%super199321%_
                 (##structure-ref _%ctx199318%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super199321%_ _%context-chain199314%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx199318%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path199319%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super199321%_
                       'gx#module-context::t))
                    (_%lp199316%_
                     _%super199321%_
                     (cons (car (##structure-ref
                                 _%ctx199318%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path199319%_))
                    (cons (let ((__tmp208422
                                 (##structure-ref
                                  _%ctx199318%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp208422))
                          _%path199319%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp199306%_ ((_%ctx199308%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r199309%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx199308%_ 'gx#module-context::t))
              (_%lp199306%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx199308%_ '3 '#f '#f))
               (cons _%ctx199308%_ _%r199309%_))
              _%r199309%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self199071%_ _%stx199072%_)
        (letrec* ((_%context-chain199074%_ (gxc#current-context-chain))
                  (_%make-import-spec199075%_
                   (lambda (_%in199243%_)
                     (let* ((_%$%in199244199256%_ _%in199243%_)
                            (_%$%E199246199259%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in199244199256%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K199247199269%_
                             (lambda (_%phi199262%_
                                      _%name199263%_
                                      _%src-name199264%_
                                      _%src-phi199265%_
                                      _%src-key199266%_
                                      _%src-ctx199267%_)
                               (cons _%phi199262%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name199263%_))
                                           (cons _%src-phi199265%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name199264%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in199244199256%_
                              'gx#module-import::t))
                           (let ((_%$%e199248199272%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in199244199256%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e199248199272%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e199251199275%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e199248199272%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx199278%_ _%$%e199251199275%_)
                                        (_%$%e199252199280%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e199248199272%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key199283%_ _%$%e199252199280%_)
                                        (_%$%e199253199285%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e199248199272%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi199288%_ _%$%e199253199285%_)
                                        (_%$%e199254199290%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e199248199272%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name199293%_
                                         _%$%e199254199290%_)
                                        (_%$%e199249199295%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in199244199256%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name199298%_ _%$%e199249199295%_)
                                        (_%$%e199250199300%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in199244199256%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi199303%_ _%$%e199250199300%_))
                                   (_%$%K199247199269%_
                                    _%phi199303%_
                                    _%name199298%_
                                    _%src-name199293%_
                                    _%src-phi199288%_
                                    _%src-key199283%_
                                    _%src-ctx199278%_))
                                 (_%$%E199246199259%_)))
                           (_%$%E199246199259%_)))))
                  (_%make-import-path199076%_
                   (lambda (_%ctx199241%_)
                     (gxc#generate-meta-import-path
                      _%ctx199241%_
                      _%context-chain199074%_)))
                  (_%make-import-spec-in199077%_
                   (lambda (_%ctx199238%_ _%in199239%_)
                     (cons 'spec:
                           (cons (_%make-import-path199076%_ _%ctx199238%_)
                                 (reverse _%in199239%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self199071%_ 'state)))
          (let* ((_%$%g199079199089%_
                  (lambda (_%$%g199080199086%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g199080199086%_))))
                 (_%$%g199078199235%_
                  (lambda (_%$%g199080199092%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g199080199092%_))
                        (let ((_%$%e199082199094%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g199080199092%_))))
                          (let ((_%$%hd199083199097%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199082199094%_)))
                                (_%$%tl199084199099%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199082199094%_))))
                            (let _%lp199113%_ ((_%rest199115%_
                                                _%$%tl199084199099%_)
                                               (_%current-src199116%_ '#f)
                                               (_%current-in199117%_ '())
                                               (_%r199118%_ '()))
                              (let* ((_%$%rest199119199127%_ _%rest199115%_)
                                     (_%$%else199121199137%_
                                      (lambda ()
                                        (let ((_%r199135%_
                                               (if _%current-src199116%_
                                                   (cons (_%make-import-spec-in199077%_
                                                          _%current-src199116%_
                                                          _%current-in199117%_)
                                                         _%r199118%_)
                                                   _%r199118%_)))
                                          (cons '%#import
                                                (reverse _%r199135%_)))))
                                     (_%$%K199123199223%_
                                      (lambda (_%rest199140%_ _%in199141%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in199141%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in199143199150%_
                                                    _%in199141%_)
                                                   (_%$%E199145199153%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in199143199150%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K199146199161%_
                                                    (lambda (_%src-ctx199156%_)
                                                      (if (eq? _%current-src199116%_
                                                               _%src-ctx199156%_)
                                                          (_%lp199113%_
                                                           _%rest199140%_
                                                           _%current-src199116%_
                                                           (cons (_%make-import-spec199075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in199141%_)
                         _%current-in199117%_)
                   _%r199118%_)
                  (if _%current-src199116%_
                      (_%lp199113%_
                       _%rest199140%_
                       _%src-ctx199156%_
                       (cons (_%make-import-spec199075%_ _%in199141%_) '())
                       (cons (_%make-import-spec-in199077%_
                              _%current-src199116%_
                              _%current-in199117%_)
                             _%r199118%_))
                      (_%lp199113%_
                       _%rest199140%_
                       _%src-ctx199156%_
                       (cons (_%make-import-spec199075%_ _%in199141%_) '())
                       _%r199118%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e199147199164%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in199143199150%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e199147199164%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e199148199167%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e199147199164%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx199170%_
                                                          _%$%e199148199167%_))
                                                    (_%$%K199146199161%_
                                                     _%src-ctx199170%_))
                                                  (_%$%E199145199153%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in199141%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi199173%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in199141%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src199175%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in199141%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in199215%_
                                                        (let* ((_%$%g199176199185%_
                                                                (_%make-import-path199076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src199175%_))
                       (_%$%E199179199189%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g199176199185%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K199181199205%_
                         (lambda (_%path199203%_) _%path199203%_))
                        (_%$%K199180199195%_
                         (lambda (_%path199193%_) (cons 'in: _%path199193%_))))
                    (if (pair? _%$%g199176199185%_)
                        (let ((_%$%tl199183199210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g199176199185%_)))
                              (_%$%hd199182199208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g199176199185%_))))
                          (if (null? _%$%tl199183199210%_)
                              (let ((_%path199213%_ _%$%hd199182199208%_))
                                (_%$%K199181199205%_ _%path199213%_))
                              (let ((_%path199198%_ _%$%g199176199185%_))
                                (_%$%K199180199195%_ _%path199198%_))))
                        (let ((_%path199198%_ _%$%g199176199185%_))
                          (_%$%K199180199195%_ _%path199198%_))))))
               (_%r199217%_
                (if _%current-src199116%_
                    (cons (_%make-import-spec-in199077%_
                           _%current-src199116%_
                           _%current-in199117%_)
                          _%r199118%_)
                    _%r199118%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp199113%_
                                                   _%rest199140%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi199173%_)
                                                             _%src-in199215%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi199173%_ (cons _%src-in199215%_ '()))))
                 _%r199217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in199141%_
                                                       'gx#module-context::t))
                                                    (let ((_%r199221%_
                                                           (if _%current-src199116%_
                                                               (cons (_%make-import-spec-in199077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src199116%_
                              _%current-in199117%_)
                             _%r199118%_)
                       _%r199118%_)))
              (_%lp199113%_
               _%rest199140%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path199076%_ _%in199141%_))
                     _%r199221%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest199119199127%_)
                                    (let ((_%$%hd199124199226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest199119199127%_)))
                                          (_%$%tl199125199228%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest199119199127%_))))
                                      (let* ((_%in199231%_
                                              _%$%hd199124199226%_)
                                             (_%rest199233%_
                                              _%$%tl199125199228%_))
                                        (_%$%K199123199223%_
                                         _%rest199233%_
                                         _%in199231%_)))
                                    (_%$%else199121199137%_))))))
                        (_%$%g199079199089%_ _%$%g199080199092%_)))))
            (_%$%g199078199235%_ _%stx199072%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self198881%_ _%stx198882%_)
        (letrec* ((_%context-chain198884%_ (gxc#current-context-chain))
                  (_%make-import-path198885%_
                   (lambda (_%ctx199069%_)
                     (gxc#generate-meta-import-path
                      _%ctx199069%_
                      _%context-chain198884%_))))
          (let* ((_%$%g198887198897%_
                  (lambda (_%$%g198888198894%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g198888198894%_))))
                 (_%$%g198886199066%_
                  (lambda (_%$%g198888198900%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g198888198900%_))
                        (let ((_%$%e198890198902%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g198888198900%_))))
                          (let ((_%$%hd198891198905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198890198902%_)))
                                (_%$%tl198892198907%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198890198902%_))))
                            (let _%lp198921%_ ((_%rest198923%_
                                                _%$%tl198892198907%_)
                                               (_%r198924%_ '()))
                              (let* ((_%$%rest198925198933%_ _%rest198923%_)
                                     (_%$%else198927198941%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r198924%_))))
                                     (_%$%K198929199054%_
                                      (lambda (_%rest198944%_ _%out198945%_)
                                        (let* ((_%$%out198946198959%_
                                                _%out198945%_)
                                               (_%$%E198949198963%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out198946198959%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K198953199033%_
                                                 (lambda (_%name199029%_
                                                          _%phi199030%_
                                                          _%key199031%_)
                                                   (_%lp198921%_
                                                    _%rest198944%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi199030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key199031%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name199029%_))
                                          '()))))
                  _%r198924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K198950199013%_
                                                 (lambda (_%phi198967%_
                                                          _%src198968%_)
                                                   (let* ((_%out199008%_
                                                           (if _%src198968%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g198969198978%_
                                           (_%make-import-path198885%_
                                            _%src198968%_))
                                          (_%$%E198972198982%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g198969198978%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K198974198998%_
                                            (lambda (_%path198996%_)
                                              _%path198996%_))
                                           (_%$%K198973198988%_
                                            (lambda (_%path198986%_)
                                              (cons 'in: _%path198986%_))))
                                       (if (pair? _%$%g198969198978%_)
                                           (let ((_%$%tl198976199003%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g198969198978%_)))
                                                 (_%$%hd198975199001%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g198969198978%_))))
                                             (if (null? _%$%tl198976199003%_)
                                                 (let ((_%path199006%_
                                                        _%$%hd198975199001%_))
                                                   (_%$%K198974198998%_
                                                    _%path199006%_))
                                                 (let ((_%path198991%_
                                                        _%$%g198969198978%_))
                                                   (_%$%K198973198988%_
                                                    _%path198991%_))))
                                           (let ((_%path198991%_
                                                  _%$%g198969198978%_))
                                             (_%$%K198973198988%_
                                              _%path198991%_)))))
                                   '()))
                       '#t))
                  (_%out199010%_
                   (if (fxzero? _%phi198967%_)
                       _%out199008%_
                       (cons 'phi:
                             (cons _%phi198967%_ (cons _%out199008%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp198921%_
                                                      _%rest198944%_
                                                      (cons _%out199010%_
                                                            _%r198924%_))))))
                                            (let ((_%$%try-match198948199026%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out198946198959%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e198951199016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out198946198959%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e198952199021%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out198946198959%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src199019%_ _%$%e198951199016%_)
                         (_%phi199024%_ _%$%e198952199021%_))
                     (_%$%K198950199013%_ _%phi199024%_ _%src199019%_)))
                 (_%$%E198949198963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out198946198959%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e198954199036%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out198946198959%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e198955199039%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out198946198959%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e198956199044%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out198946198959%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e198957199049%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out198946198959%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key199042%_
                                                           _%$%e198955199039%_)
                                                          (_%phi199047%_
                                                           _%$%e198956199044%_)
                                                          (_%name199052%_
                                                           _%$%e198957199049%_))
                                                      (_%$%K198953199033%_
                                                       _%name199052%_
                                                       _%phi199047%_
                                                       _%key199042%_)))
                                                  (_%$%try-match198948199026%_))))))))
                                (if (pair? _%$%rest198925198933%_)
                                    (let ((_%$%hd198930199057%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest198925198933%_)))
                                          (_%$%tl198931199059%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest198925198933%_))))
                                      (let* ((_%out199062%_
                                              _%$%hd198930199057%_)
                                             (_%rest199064%_
                                              _%$%tl198931199059%_))
                                        (_%$%K198929199054%_
                                         _%rest199064%_
                                         _%out199062%_)))
                                    (_%$%else198927198941%_))))))
                        (_%$%g198887198897%_ _%$%g198888198900%_)))))
            (_%$%g198886199066%_ _%stx198882%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self198842%_ _%stx198843%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198842%_ 'state)))
        (let* ((_%$%g198845198855%_
                (lambda (_%$%g198846198852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198846198852%_))))
               (_%$%g198844198878%_
                (lambda (_%$%g198846198858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198846198858%_))
                      (let ((_%$%e198848198860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198846198858%_))))
                        (let ((_%$%hd198849198863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198848198860%_)))
                              (_%$%tl198850198865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198848198860%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl198850198865%_))))
                      (_%$%g198845198855%_ _%$%g198846198858%_)))))
          (_%$%g198844198878%_ _%stx198843%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self198717%_ _%stx198718%_)
        (letrec ((_%generate1198720%_
                  (lambda (_%id198837%_ _%eid198838%_)
                    (let ((_%eid198840%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid198838%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid198840%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx198718%_
                             _%eid198840%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id198837%_))
                            (cons _%eid198840%_ '()))))))
          (let* ((_%$%g198722198750%_
                  (lambda (_%$%g198723198747%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g198723198747%_))))
                 (_%$%g198721198834%_
                  (lambda (_%$%g198723198753%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g198723198753%_))
                        (let ((_%$%e198726198755%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g198723198753%_))))
                          (let ((_%$%hd198727198758%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198726198755%_)))
                                (_%$%tl198728198760%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198726198755%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl198728198760%_))
                                (let ((_g208423_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl198728198760%_
                                          '0))))
                                  (begin
                                    (let ((_g208424_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g208423_)
                                                 (##values-length _g208423_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g208424_ 2)))
                                          (error "Context expects 2 values"
                                                 _g208424_)))
                                    (let ((_%$%target198729198763%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208423_ 0)))
                                          (_%$%tl198731198765%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208423_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl198731198765%_))
                                          (letrec ((_%$%loop198732198768%_
                                                    (lambda (_%$%hd198730198771%_
                                                             _%$%eid198736198773%_
                                                             _%$%id198737198774%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd198730198771%_))
                                                          (let ((_%$%e198733198776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd198730198771%_))))
                    (let ((_%$%lp-hd198734198779%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e198733198776%_)))
                          (_%$%lp-tl198735198781%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e198733198776%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd198734198779%_))
                          (let ((_%$%e198740198784%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd198734198779%_))))
                            (let ((_%$%hd198741198787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e198740198784%_)))
                                  (_%$%tl198742198789%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e198740198784%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl198742198789%_))
                                  (let ((_%$%e198743198792%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl198742198789%_))))
                                    (let ((_%$%hd198744198795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e198743198792%_)))
                                          (_%$%tl198745198797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e198743198792%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl198745198797%_))
                                          (_%$%loop198732198768%_
                                           _%$%lp-tl198735198781%_
                                           (cons _%$%hd198744198795%_
                                                 _%$%eid198736198773%_)
                                           (cons _%$%hd198741198787%_
                                                 _%$%id198737198774%_))
                                          (_%$%g198722198750%_
                                           _%$%g198723198753%_))))
                                  (_%$%g198722198750%_ _%$%g198723198753%_))))
                          (_%$%g198722198750%_ _%$%g198723198753%_))))
                  (let ((_%$%eid198738198800%_ (reverse _%$%eid198736198773%_))
                        (_%$%id198739198801%_ (reverse _%$%id198737198774%_)))
                    (cons '%#extern
                          (map _%generate1198720%_
                               (let ((__tmp208425
                                      (lambda (_%$%g198819198822%_
                                               _%$%g198820198824%_)
                                        (cons _%$%g198819198822%_
                                              _%$%g198820198824%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp208425
                                  '()
                                  _%$%id198739198801%_))
                               (let ((__tmp208426
                                      (lambda (_%$%g198826198829%_
                                               _%$%g198827198831%_)
                                        (cons _%$%g198826198829%_
                                              _%$%g198827198831%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp208426
                                  '()
                                  _%$%eid198738198800%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop198732198768%_
                                             _%$%target198729198763%_
                                             '()
                                             '()))
                                          (_%$%g198722198750%_
                                           _%$%g198723198753%_)))))
                                (_%$%g198722198750%_ _%$%g198723198753%_))))
                        (_%$%g198722198750%_ _%$%g198723198753%_)))))
            (_%$%g198721198834%_ _%stx198718%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self198645%_ _%stx198646%_)
        (let* ((_%$%g198648198665%_
                (lambda (_%$%g198649198662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198649198662%_))))
               (_%$%g198647198714%_
                (lambda (_%$%g198649198668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198649198668%_))
                      (let ((_%$%e198652198670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198649198668%_))))
                        (let ((_%$%hd198653198673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198652198670%_)))
                              (_%$%tl198654198675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198652198670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198654198675%_))
                              (let ((_%$%e198655198678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198654198675%_))))
                                (let ((_%$%hd198656198681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198655198678%_)))
                                      (_%$%tl198657198683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198655198678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198657198683%_))
                                      (let ((_%$%e198658198686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198657198683%_))))
                                        (let ((_%$%hd198659198689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198658198686%_)))
                                              (_%$%tl198660198691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198658198686%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198660198691%_))
                                              (let ((_%ident198710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd198656198681%_)))
                                                    (_%eid198711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd198659198689%_)))
                                                    (_%props198712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd198656198681%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident198710%_
                                                            (cons _%eid198711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props198712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g198648198665%_
                                               _%$%g198649198668%_))))
                                      (_%$%g198648198665%_
                                       _%$%g198649198668%_))))
                              (_%$%g198648198665%_ _%$%g198649198668%_))))
                      (_%$%g198648198665%_ _%$%g198649198668%_)))))
          (_%$%g198647198714%_ _%stx198646%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self198434%_ _%stx198435%_)
        (letrec ((_%generate1198437%_
                  (lambda (_%id198639%_)
                    (let ((_%eid198641%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id198639%_)))
                          (_%ident198642%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id198639%_)))
                          (_%props198643%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id198639%_))))
                      (cons '%#define-runtime
                            (cons _%ident198642%_
                                  (cons _%eid198641%_ _%props198643%_))))))
                 (_%generate*198438%_
                  (lambda (_%all198607%_)
                    (let* ((_%$%all198608198616%_ _%all198607%_)
                           (_%$%else198610198624%_
                            (lambda () (cons '%#begin _%all198607%_)))
                           (_%$%K198612198629%_
                            (lambda (_%one198627%_) _%one198627%_)))
                      (if (pair? _%$%all198608198616%_)
                          (let ((_%$%hd198613198632%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all198608198616%_)))
                                (_%$%tl198614198634%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all198608198616%_))))
                            (let ((_%one198637%_ _%$%hd198613198632%_))
                              (if (null? _%$%tl198614198634%_)
                                  (_%$%K198612198629%_ _%one198637%_)
                                  (_%$%else198610198624%_))))
                          (_%$%else198610198624%_))))))
          (let* ((_%$%g198440198457%_
                  (lambda (_%$%g198441198454%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g198441198454%_))))
                 (_%$%g198439198604%_
                  (lambda (_%$%g198441198460%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g198441198460%_))
                        (let ((_%$%e198444198462%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g198441198460%_))))
                          (let ((_%$%hd198445198465%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198444198462%_)))
                                (_%$%tl198446198467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198444198462%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl198446198467%_))
                                (let ((_%$%e198447198470%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl198446198467%_))))
                                  (let ((_%$%hd198448198473%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198447198470%_)))
                                        (_%$%tl198449198475%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198447198470%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl198449198475%_))
                                        (let ((_%$%e198450198478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl198449198475%_))))
                                          (let ((_%$%hd198451198481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e198450198478%_)))
                                                (_%$%tl198452198483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e198450198478%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl198452198483%_))
                                                (let _%lp198503%_ ((_%rest198505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd198448198473%_)
                           (_%r198506%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx208161208162%_
                                                          _%rest198505%_)
                                                         (_%$%g198511198528%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx208161208162%_)))))
                                                    (let ((_%__kont208163208164%_
                                                           (lambda (_%$%g198513198591%_)
                                                             (_%lp198503%_
                                                              _%$%g198513198591%_
                                                              _%r198506%_)))
                                                          (_%__kont208165208166%_
                                                           (lambda (_%$%g198518198564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g198519198565%_)
                     (_%lp198503%_
                      _%$%g198518198564%_
                      (cons (_%generate1198437%_ _%$%g198519198565%_)
                            _%r198506%_))))
                  (_%__kont208167208168%_
                   (lambda (_%$%g198523198540%_)
                     (_%generate*198438%_
                      (let ((__tmp208427
                             (cons (_%generate1198437%_ _%$%g198523198540%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp208427 _%r198506%_)))))
                  (_%__kont208169208170%_
                   (lambda () (_%generate*198438%_ (reverse! _%r198506%_)))))
              (let ((_%$%g198509198551%_
                     (lambda ()
                       (let ((_%$%g198523198540%_ _%__stx208161208162%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g198523198540%_))
                             (_%__kont208167208168%_ _%$%g198523198540%_)
                             (_%__kont208169208170%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx208161208162%_))
                    (let ((_%$%e198514198580%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx208161208162%_))))
                      (let ((_%$%tl198516198585%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e198514198580%_)))
                            (_%$%hd198515198583%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e198514198580%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd198515198583%_))
                            (let ((_%$%e198517198588%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd198515198583%_))))
                              (if (equal? _%$%e198517198588%_ '#f)
                                  (_%__kont208163208164%_ _%$%tl198516198585%_)
                                  (_%__kont208165208166%_
                                   _%$%tl198516198585%_
                                   _%$%hd198515198583%_)))
                            (_%__kont208165208166%_
                             _%$%tl198516198585%_
                             _%$%hd198515198583%_))))
                    (_%$%g198509198551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g198440198457%_
                                                 _%$%g198441198460%_))))
                                        (_%$%g198440198457%_
                                         _%$%g198441198460%_))))
                                (_%$%g198440198457%_ _%$%g198441198460%_))))
                        (_%$%g198440198457%_ _%$%g198441198460%_)))))
            (_%$%g198439198604%_ _%stx198435%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self198331%_ _%stx198332%_)
        (let* ((_%$%g198334198351%_
                (lambda (_%$%g198335198348%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198335198348%_))))
               (_%$%g198333198431%_
                (lambda (_%$%g198335198354%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198335198354%_))
                      (let ((_%$%e198338198356%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198335198354%_))))
                        (let ((_%$%hd198339198359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198338198356%_)))
                              (_%$%tl198340198361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198338198356%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198340198361%_))
                              (let ((_%$%e198341198364%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198340198361%_))))
                                (let ((_%$%hd198342198367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198341198364%_)))
                                      (_%$%tl198343198369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198341198364%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198343198369%_))
                                      (let ((_%$%e198344198372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198343198369%_))))
                                        (let ((_%$%hd198345198375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198344198372%_)))
                                              (_%$%tl198346198377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198344198372%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198346198377%_))
                                              (let* ((_%eid198396%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd198342198367%_)))
                                                     (_%phi198398%_
                                                      (let ((__tmp208428
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp208428 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block198400%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self198331%_
                                                          'state))
                                                       _%phi198398%_)))
                                                (let* ((_%$%g198403198410%_
                                                        (lambda (_%$%g198404198407%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g198404198407%_))))
                                                       (_%$%g198402198428%_
                                                        (lambda (_%$%g198404198413%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self198331%_
                                                              'state))
                                                           _%phi198398%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g198404198413%_
                               (cons _%$%hd198345198375%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g198402198428%_
                                                   _%eid198396%_))
                                                (if _%block198400%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block198400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd198342198367%_))
                                          (cons _%eid198396%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd198342198367%_))
                        (cons _%eid198396%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g198334198351%_
                                               _%$%g198335198354%_))))
                                      (_%$%g198334198351%_
                                       _%$%g198335198354%_))))
                              (_%$%g198334198351%_ _%$%g198335198354%_))))
                      (_%$%g198334198351%_ _%$%g198335198354%_)))))
          (_%$%g198333198431%_ _%stx198332%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self198263%_ _%stx198264%_)
        (let* ((_%$%g198266198283%_
                (lambda (_%$%g198267198280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198267198280%_))))
               (_%$%g198265198328%_
                (lambda (_%$%g198267198286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198267198286%_))
                      (let ((_%$%e198270198288%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198267198286%_))))
                        (let ((_%$%hd198271198291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198270198288%_)))
                              (_%$%tl198272198293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198270198288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198272198293%_))
                              (let ((_%$%e198273198296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198272198293%_))))
                                (let ((_%$%hd198274198299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198273198296%_)))
                                      (_%$%tl198275198301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198273198296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198275198301%_))
                                      (let ((_%$%e198276198304%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198275198301%_))))
                                        (let ((_%$%hd198277198307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198276198304%_)))
                                              (_%$%tl198278198309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198276198304%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198278198309%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd198274198299%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd198277198307%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g198266198283%_
                                               _%$%g198267198286%_))))
                                      (_%$%g198266198283%_
                                       _%$%g198267198286%_))))
                              (_%$%g198266198283%_ _%$%g198267198286%_))))
                      (_%$%g198266198283%_ _%$%g198267198286%_)))))
          (_%$%g198265198328%_ _%stx198264%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self198260%_ _%stx198261%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198260%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx198261%_)
        (gxc#generate-meta-define-values% _%self198260%_ _%stx198261%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self198257%_ _%stx198258%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198257%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx198258%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp208430 (list)) (__tmp208429 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp208430
         '(src n open blocks)
         __tmp208429
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args198254%_
        (apply make-instance gxc#meta-state::t _%$args198254%_)))
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
      (lambda (_%self198240%_ _%ctx198241%_)
        (let ((_%self198244%_ _%self198240%_))
          (if (let ((__tmp208431
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self198244%_))))
                (declare (not safe))
                (##fx< '4 __tmp208431))
              (begin
                (let ((__tmp208432
                       (let ((__tmp208433
                              (##structure-ref
                               _%ctx198241%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp208433))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self198244%_
                   __tmp208432
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self198244%_ '1 '2 '#f '#f))
                (let ((__tmp208434
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self198244%_
                   __tmp208434
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self198244%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp208435
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self198244%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self198244%_
                       '4
                       __tmp208435))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp208437 (list)) (__tmp208436 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp208437
         '(ctx phi n code)
         __tmp208436
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args198115%_
        (apply make-instance gxc#meta-state-block::t _%$args198115%_)))
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
      (lambda (_%state198075%_ _%phi198076%_)
        (let* ((_%$%state198077198085%_ _%state198075%_)
               (_%$%E198079198088%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state198077198085%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K198080198097%_
                (lambda (_%open198091%_ _%n198092%_ _%src198093%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open198091%_ _%phi198076%_))
                      '#f
                      (let ((_%block-ref198095%_
                             (let ((__tmp208438 (number->string _%n198092%_)))
                               (declare (not safe))
                               (##string-append
                                _%src198093%_
                                '"~"
                                __tmp208438))))
                        (##structure-set!
                         _%state198075%_
                         (let () (declare (not safe)) (##fx+ _%n198092%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp208439
                               (let ((__tmp208440
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp208440
                                  _%phi198076%_
                                  _%n198092%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open198091%_ _%phi198076%_ __tmp208439))
                        _%block-ref198095%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state198077198085%_
                 'gxc#meta-state::t))
              (let* ((_%$%e198081198100%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state198077198085%_
                         '1
                         '#f
                         '#f)))
                     (_%src198103%_ _%$%e198081198100%_)
                     (_%$%e198082198105%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state198077198085%_
                         '2
                         '#f
                         '#f)))
                     (_%n198108%_ _%$%e198082198105%_)
                     (_%$%e198083198110%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state198077198085%_
                         '3
                         '#f
                         '#f)))
                     (_%open198113%_ _%$%e198083198110%_))
                (_%$%K198080198097%_ _%open198113%_ _%n198108%_ _%src198103%_))
              (_%$%E198079198088%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state198069%_ _%phi198070%_ _%stx198071%_)
        (let ((_%block198073%_
               (let ((__tmp208441
                      (##structure-ref
                       _%state198069%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp208441 _%phi198070%_))))
          (##structure-set!
           _%block198073%_
           (cons _%stx198071%_
                 (##structure-ref
                  _%block198073%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state198063%_)
        (##structure-set!
         _%state198063%_
         (let ((__tmp208444
                (lambda (_%_198065%_ _%block198066%_ _%r198067%_)
                  (cons _%block198066%_ _%r198067%_)))
               (__tmp208443
                (##structure-ref _%state198063%_ '4 gxc#meta-state::t '#f))
               (__tmp208442
                (##structure-ref _%state198063%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp208444 __tmp208443 __tmp208442))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state198063%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state198016%_)
        (gxc#meta-state-end-phi! _%state198016%_)
        (let ((__tmp208446
               (lambda (_%block198018%_ _%r198019%_)
                 (let* ((_%$%block198020198029%_ _%block198018%_)
                        (_%$%E198022198032%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block198020198029%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K198023198040%_
                         (lambda (_%code198035%_
                                  _%n198036%_
                                  _%phi198037%_
                                  _%ctx198038%_)
                           (if (null? _%code198035%_)
                               _%r198019%_
                               (cons (cons _%ctx198038%_
                                           (cons _%phi198037%_
                                                 (cons _%n198036%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code198035%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r198019%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block198020198029%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e198024198043%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block198020198029%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx198046%_ _%$%e198024198043%_)
                              (_%$%e198025198048%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block198020198029%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi198051%_ _%$%e198025198048%_)
                              (_%$%e198026198053%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block198020198029%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n198056%_ _%$%e198026198053%_)
                              (_%$%e198027198058%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block198020198029%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code198061%_ _%$%e198027198058%_))
                         (_%$%K198023198040%_
                          _%code198061%_
                          _%n198056%_
                          _%phi198051%_
                          _%ctx198046%_))
                       (_%$%E198022198032%_)))))
              (__tmp208445
               (##structure-ref _%state198016%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp208446 '() __tmp208445))))
    (define gxc#collect-expression-refs
      (lambda (_%stx198012%_)
        (let ((_%ht198014%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht198014%_ _%stx198012%_)
          _%ht198014%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self197955%_ _%stx197956%_)
        (let* ((_%$%g197958197971%_
                (lambda (_%$%g197959197968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197959197968%_))))
               (_%$%g197957198009%_
                (lambda (_%$%g197959197974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197959197974%_))
                      (let ((_%$%e197961197976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197959197974%_))))
                        (let ((_%$%hd197962197979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197961197976%_)))
                              (_%$%tl197963197981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197961197976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl197963197981%_))
                              (let ((_%$%e197964197984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl197963197981%_))))
                                (let ((_%$%hd197965197987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197964197984%_)))
                                      (_%$%tl197966197989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197964197984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl197966197989%_))
                                      (let* ((_%bind198004%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd197965197987%_)))
                                             (_%eid198006%_
                                              (if _%bind198004%_
                                                  (##structure-ref
                                                   _%bind198004%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd197965197987%_))))
                                             (__tmp208447
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self197955%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp208447
                                         _%eid198006%_
                                         _%eid198006%_))
                                      (_%$%g197958197971%_
                                       _%$%g197959197974%_))))
                              (_%$%g197958197971%_ _%$%g197959197974%_))))
                      (_%$%g197958197971%_ _%$%g197959197974%_)))))
          (_%$%g197957198009%_ _%stx197956%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self197882%_ _%stx197883%_)
        (let* ((_%$%g197885197902%_
                (lambda (_%$%g197886197899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197886197899%_))))
               (_%$%g197884197952%_
                (lambda (_%$%g197886197905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197886197905%_))
                      (let ((_%$%e197889197907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197886197905%_))))
                        (let ((_%$%hd197890197910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197889197907%_)))
                              (_%$%tl197891197912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197889197907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl197891197912%_))
                              (let ((_%$%e197892197915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl197891197912%_))))
                                (let ((_%$%hd197893197918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197892197915%_)))
                                      (_%$%tl197894197920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197892197915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl197894197920%_))
                                      (let ((_%$%e197895197923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl197894197920%_))))
                                        (let ((_%$%hd197896197926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197895197923%_)))
                                              (_%$%tl197897197928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197895197923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl197897197928%_))
                                              (let* ((_%bind197947%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd197893197918%_)))
                                                     (_%eid197949%_
                                                      (if _%bind197947%_
                                                          (##structure-ref
                                                           _%bind197947%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd197893197918%_)))))
                                                (let ((__tmp208448
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self197882%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp208448
                                                   _%eid197949%_
                                                   _%eid197949%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self197882%_
                                                   _%$%hd197896197926%_)))
                                              (_%$%g197885197902%_
                                               _%$%g197886197905%_))))
                                      (_%$%g197885197902%_
                                       _%$%g197886197905%_))))
                              (_%$%g197885197902%_ _%$%g197886197905%_))))
                      (_%$%g197885197902%_ _%$%g197886197905%_)))))
          (_%$%g197884197952%_ _%stx197883%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self197839%_ _%stx197840%_)
        (let* ((_%$%g197842197852%_
                (lambda (_%$%g197843197849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197843197849%_))))
               (_%$%g197841197879%_
                (lambda (_%$%g197843197855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197843197855%_))
                      (let ((_%$%e197845197857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197843197855%_))))
                        (let ((_%$%hd197846197860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197845197857%_)))
                              (_%$%tl197847197862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197845197857%_))))
                          (let ((__tmp208449
                                 (lambda (_%$%g197874197876%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self197839%_
                                      _%$%g197874197876%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp208449 _%$%tl197847197862%_))))
                      (_%$%g197842197852%_ _%$%g197843197855%_)))))
          (_%$%g197841197879%_ _%stx197840%_))))
    (define gxc#count-values-single%
      (lambda (_%self197836%_ _%stx197837%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self197704%_ _%stx197705%_)
        (let* ((_%__stx208191208192%_ _%stx197705%_)
               (_%$%g197708197737%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208191208192%_)))))
          (let ((_%__kont208193208194%_
                 (lambda (_%$%g197710197803%_ _%$%g197711197804%_)
                   (length (let ((__tmp208450
                                  (lambda (_%$%g197825197828%_
                                           _%$%g197826197830%_)
                                    (cons _%$%g197825197828%_
                                          _%$%g197826197830%_))))
                             (declare (not safe))
                             (foldr__0 __tmp208450 '() _%$%g197710197803%_)))))
                (_%__kont208197208198%_ (lambda () '#f)))
            (let ((_%__match208236208237%_
                   (lambda (_%$%e197712197749%_
                            _%$%hd197713197752%_
                            _%$%tl197714197754%_
                            _%$%e197715197757%_
                            _%$%hd197716197760%_
                            _%$%tl197717197762%_
                            _%$%e197718197765%_
                            _%$%hd197719197768%_
                            _%$%tl197720197770%_
                            _%$%e197721197773%_
                            _%$%hd197722197776%_
                            _%$%tl197723197778%_
                            _%__splice208195208196%_
                            _%$%target197724197781%_
                            _%$%tl197726197783%_)
                     (letrec ((_%$%loop197727197786%_
                               (lambda (_%$%hd197725197789%_
                                        _%$%rand197731197791%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd197725197789%_))
                                     (let ((_%$%e197728197793%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd197725197789%_))))
                                       (let ((_%$%lp-tl197730197798%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e197728197793%_)))
                                             (_%$%lp-hd197729197796%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e197728197793%_))))
                                         (_%$%loop197727197786%_
                                          _%$%lp-tl197730197798%_
                                          (cons _%$%lp-hd197729197796%_
                                                _%$%rand197731197791%_))))
                                     (let ((_%$%rand197732197801%_
                                            (reverse _%$%rand197731197791%_)))
                                       (let ((_%$%g197710197803%_
                                              _%$%rand197732197801%_)
                                             (_%$%g197711197804%_
                                              _%$%hd197722197776%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g197711197804%_
                                                'values))
                                             (_%__kont208193208194%_
                                              _%$%g197710197803%_
                                              _%$%g197711197804%_)
                                             (_%__kont208197208198%_))))))))
                       (_%$%loop197727197786%_
                        _%$%target197724197781%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208191208192%_))
                  (let ((_%$%e197712197749%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208191208192%_))))
                    (let ((_%$%tl197714197754%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e197712197749%_)))
                          (_%$%hd197713197752%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e197712197749%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl197714197754%_))
                          (let ((_%$%e197715197757%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl197714197754%_))))
                            (let ((_%$%tl197717197762%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e197715197757%_)))
                                  (_%$%hd197716197760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e197715197757%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd197716197760%_))
                                  (let ((_%$%e197718197765%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd197716197760%_))))
                                    (let ((_%$%tl197720197770%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e197718197765%_)))
                                          (_%$%hd197719197768%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e197718197765%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd197719197768%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd197719197768%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl197720197770%_))
                                                  (let ((_%$%e197721197773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl197720197770%_))))
                                                    (let ((_%$%tl197723197778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e197721197773%_)))
                                                          (_%$%hd197722197776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e197721197773%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl197723197778%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl197717197762%_))
                      (let ((_%__splice208195208196%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl197717197762%_
                                '0))))
                        (let ((_%$%tl197726197783%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208195208196%_ '1)))
                              (_%$%target197724197781%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208195208196%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl197726197783%_))
                              (_%__match208236208237%_
                               _%$%e197712197749%_
                               _%$%hd197713197752%_
                               _%$%tl197714197754%_
                               _%$%e197715197757%_
                               _%$%hd197716197760%_
                               _%$%tl197717197762%_
                               _%$%e197718197765%_
                               _%$%hd197719197768%_
                               _%$%tl197720197770%_
                               _%$%e197721197773%_
                               _%$%hd197722197776%_
                               _%$%tl197723197778%_
                               _%__splice208195208196%_
                               _%$%target197724197781%_
                               _%$%tl197726197783%_)
                              (_%__kont208197208198%_))))
                      (_%__kont208197208198%_))
                  (_%__kont208197208198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208197208198%_))
                                              (_%__kont208197208198%_))
                                          (_%__kont208197208198%_))))
                                  (_%__kont208197208198%_))))
                          (_%__kont208197208198%_))))
                  (_%__kont208197208198%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self197609%_ _%stx197610%_)
        (let* ((_%$%g197612197633%_
                (lambda (_%$%g197613197630%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197613197630%_))))
               (_%$%g197611197701%_
                (lambda (_%$%g197613197636%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197613197636%_))
                      (let ((_%$%e197617197638%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197613197636%_))))
                        (let ((_%$%hd197618197641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197617197638%_)))
                              (_%$%tl197619197643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197617197638%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl197619197643%_))
                              (let ((_%$%e197620197646%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl197619197643%_))))
                                (let ((_%$%hd197621197649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197620197646%_)))
                                      (_%$%tl197622197651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197620197646%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl197622197651%_))
                                      (let ((_%$%e197623197654%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl197622197651%_))))
                                        (let ((_%$%hd197624197657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197623197654%_)))
                                              (_%$%tl197625197659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197623197654%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl197625197659%_))
                                              (let ((_%$%e197626197662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl197625197659%_))))
                                                (let ((_%$%hd197627197665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e197626197662%_)))
                                                      (_%$%tl197628197667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e197626197662%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl197628197667%_))
                                                      (let ((_%$%c1197689197691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self197609%_
                        _%$%hd197624197657%_))))
                (if _%$%c1197689197691%_
                    (let* ((_%c1197693%_ _%$%c1197689197691%_)
                           (_%$%c2197694197696%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self197609%_
                               _%$%hd197627197665%_))))
                      (if _%$%c2197694197696%_
                          (let ((_%c2197698%_ _%$%c2197694197696%_))
                            (if (fx= _%c1197693%_ _%c2197698%_)
                                _%c1197693%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g197612197633%_ _%$%g197613197636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g197612197633%_
                                               _%$%g197613197636%_))))
                                      (_%$%g197612197633%_
                                       _%$%g197613197636%_))))
                              (_%$%g197612197633%_ _%$%g197613197636%_))))
                      (_%$%g197612197633%_ _%$%g197613197636%_)))))
          (_%$%g197611197701%_ _%stx197610%_))))))
