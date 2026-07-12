(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1783878478)
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
      (let ((__tmp212302 (list gxc#::void::t))
            (__tmp212301 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp212302
         '()
         __tmp212301
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args210916%_
        (apply make-instance gxc#::collect-bindings::t _%$args210916%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp212303
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
        (__make-atomic-promise __tmp212303)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx210908%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self210911%_
                (let ((__obj212277
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj212277))
               (__tmp212304
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210911%_ _%stx210908%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212304
           gxc#current-compile-method
           _%self210911%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp212306 (list gxc#::void::t))
            (__tmp212305 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp212306
         '(modules)
         __tmp212305
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args210905%_
        (apply make-instance gxc#::lift-modules::t _%$args210905%_)))
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
      (let ((__tmp212307
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
        (__make-atomic-promise __tmp212307)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords210880%_ _%$%modules210877210881%_ _%stx210882%_)
        (let ((_%modules210885%_
               (if (eq? _%$%modules210877210881%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules210877210881%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self210887%_
                  (let ((__obj212279
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212279
                       _%modules210885%_
                       '1
                       '#f
                       '#f))
                    __obj212279))
                 (__tmp212308
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210887%_ _%stx210882%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212308
             gxc#current-compile-method
             _%self210887%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords210894%_ . _%args210895%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords210894%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210894%_
                  'modules:
                  absent-value))
               _%args210895%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args210878210901%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args210878210901%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp212310 (list)) (__tmp212309 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp212310
         '()
         __tmp212309
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args210873%_
        (apply make-instance gxc#::find-runtime-code::t _%$args210873%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp212311
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
        (__make-atomic-promise __tmp212311)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx210865%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self210868%_
                (let ((__obj212281
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj212281))
               (__tmp212312
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210868%_ _%stx210865%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212312
           gxc#current-compile-method
           _%self210868%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp212314 (list gxc#::false::t))
            (__tmp212313 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp212314
         '()
         __tmp212313
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args210862%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args210862%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp212315
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
        (__make-atomic-promise __tmp212315)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx210854%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self210857%_
                (let ((__obj212283
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj212283))
               (__tmp212316
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210857%_ _%stx210854%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212316
           gxc#current-compile-method
           _%self210857%_))))
    (define gxc#::count-values::t
      (let ((__tmp212318 (list gxc#::false-expression::t))
            (__tmp212317 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp212318
         '()
         __tmp212317
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args210851%_
        (apply make-instance gxc#::count-values::t _%$args210851%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp212319
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
        (__make-atomic-promise __tmp212319)))
    (define gxc#apply-count-values
      (lambda (_%stx210843%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self210846%_
                (let ((__obj212285
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj212285))
               (__tmp212320
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210846%_ _%stx210843%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212320
           gxc#current-compile-method
           _%self210846%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp212321 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp212321
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args210840%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args210840%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp212322
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
        (__make-atomic-promise __tmp212322)))
    (define gxc#::generate-loader::t
      (let ((__tmp212324 (list gxc#::generate-runtime-empty::t))
            (__tmp212323 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp212324
         '()
         __tmp212323
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args210836%_
        (apply make-instance gxc#::generate-loader::t _%$args210836%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp212325
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
        (__make-atomic-promise __tmp212325)))
    (define gxc#apply-generate-loader
      (lambda (_%stx210828%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self210831%_
                (let ((__obj212288
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj212288))
               (__tmp212326
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210831%_ _%stx210828%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212326
           gxc#current-compile-method
           _%self210831%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp212327 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp212327
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args210825%_
        (apply make-instance gxc#::generate-runtime::t _%$args210825%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp212328
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
        (__make-atomic-promise __tmp212328)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx210817%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self210820%_
                (let ((__obj212290
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj212290))
               (__tmp212329
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210820%_ _%stx210817%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212329
           gxc#current-compile-method
           _%self210820%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp212331 (list gxc#::generate-runtime::t))
            (__tmp212330 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp212331
         '()
         __tmp212330
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args210814%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args210814%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp212332
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
        (__make-atomic-promise __tmp212332)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx210806%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self210809%_
                (let ((__obj212292
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj212292))
               (__tmp212333
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210809%_ _%stx210806%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212333
           gxc#current-compile-method
           _%self210809%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp212334 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp212334
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args210803%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args210803%_)))
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
      (let ((__tmp212335
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
        (__make-atomic-promise __tmp212335)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords210778%_ _%$%table210775210779%_ _%stx210780%_)
        (let ((_%table210783%_
               (if (eq? _%$%table210775210779%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table210775210779%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self210785%_
                  (let ((__obj212294
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212294
                       _%table210783%_
                       '1
                       '#f
                       '#f))
                    __obj212294))
                 (__tmp212336
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210785%_ _%stx210780%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212336
             gxc#current-compile-method
             _%self210785%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords210792%_ . _%args210793%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords210792%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210792%_
                  'table:
                  absent-value))
               _%args210793%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args210776210799%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args210776210799%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp212338 (list gxc#::void-expression::t))
            (__tmp212337 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp212338
         '(state)
         __tmp212337
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args210771%_
        (apply make-instance gxc#::generate-meta::t _%$args210771%_)))
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
      (let ((__tmp212339
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
        (__make-atomic-promise __tmp212339)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords210746%_ _%$%state210743210747%_ _%stx210748%_)
        (let ((_%state210751%_
               (if (eq? _%$%state210743210747%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state210743210747%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self210753%_
                  (let ((__obj212296
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212296
                       _%state210751%_
                       '1
                       '#f
                       '#f))
                    __obj212296))
                 (__tmp212340
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210753%_ _%stx210748%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212340
             gxc#current-compile-method
             _%self210753%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords210760%_ . _%args210761%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords210760%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210760%_
                  'state:
                  absent-value))
               _%args210761%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args210744210767%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args210744210767%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp212342 (list)) (__tmp212341 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp212342
         '(state)
         __tmp212341
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args210739%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args210739%_)))
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
      (let ((__tmp212343
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
        (__make-atomic-promise __tmp212343)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords210714%_ _%$%state210711210715%_ _%stx210716%_)
        (let ((_%state210719%_
               (if (eq? _%$%state210711210715%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state210711210715%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self210721%_
                  (let ((__obj212298
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212298
                       _%state210719%_
                       '1
                       '#f
                       '#f))
                    __obj212298))
                 (__tmp212344
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210721%_ _%stx210716%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212344
             gxc#current-compile-method
             _%self210721%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords210728%_ . _%args210729%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords210728%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210728%_
                  'state:
                  absent-value))
               _%args210729%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args210712210735%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args210712210735%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self210640%_ _%stx210641%_)
        (let* ((_%$%g210643210660%_
                (lambda (_%$%g210644210657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210644210657%_))))
               (_%$%g210642210707%_
                (lambda (_%$%g210644210663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210644210663%_))
                      (let ((_%$%e210647210665%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210644210663%_))))
                        (let ((_%$%hd210648210668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210647210665%_)))
                              (_%$%tl210649210670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210647210665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210649210670%_))
                              (let ((_%$%e210650210673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210649210670%_))))
                                (let ((_%$%hd210651210676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210650210673%_)))
                                      (_%$%tl210652210678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210650210673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210652210678%_))
                                      (let ((_%$%e210653210681%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210652210678%_))))
                                        (let ((_%$%hd210654210684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210653210681%_)))
                                              (_%$%tl210655210686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210653210681%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210655210686%_))
                                              (let ((__tmp212345
                                                     (lambda (_%bind210705%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind210705%_))
                                                           (gxc#add-module-binding!
                                                            _%bind210705%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp212345
                                                 _%$%hd210651210676%_))
                                              (_%$%g210643210660%_
                                               _%$%g210644210663%_))))
                                      (_%$%g210643210660%_
                                       _%$%g210644210663%_))))
                              (_%$%g210643210660%_ _%$%g210644210663%_))))
                      (_%$%g210643210660%_ _%$%g210644210663%_)))))
          (_%$%g210642210707%_ _%stx210641%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self210572%_ _%stx210573%_)
        (let* ((_%$%g210575210592%_
                (lambda (_%$%g210576210589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210576210589%_))))
               (_%$%g210574210637%_
                (lambda (_%$%g210576210595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210576210595%_))
                      (let ((_%$%e210579210597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210576210595%_))))
                        (let ((_%$%hd210580210600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210579210597%_)))
                              (_%$%tl210581210602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210579210597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210581210602%_))
                              (let ((_%$%e210582210605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210581210602%_))))
                                (let ((_%$%hd210583210608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210582210605%_)))
                                      (_%$%tl210584210610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210582210605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210584210610%_))
                                      (let ((_%$%e210585210613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210584210610%_))))
                                        (let ((_%$%hd210586210616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210585210613%_)))
                                              (_%$%tl210587210618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210585210613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210587210618%_))
                                              (gxc#add-module-binding!
                                               _%$%hd210583210608%_
                                               '#t)
                                              (_%$%g210575210592%_
                                               _%$%g210576210595%_))))
                                      (_%$%g210575210592%_
                                       _%$%g210576210595%_))))
                              (_%$%g210575210592%_ _%$%g210576210595%_))))
                      (_%$%g210575210592%_ _%$%g210576210595%_)))))
          (_%$%g210574210637%_ _%stx210573%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self210514%_ _%stx210515%_)
        (let* ((_%$%g210517210531%_
                (lambda (_%$%g210518210528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210518210528%_))))
               (_%$%g210516210569%_
                (lambda (_%$%g210518210534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210518210534%_))
                      (let ((_%$%e210521210536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210518210534%_))))
                        (let ((_%$%hd210522210539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210521210536%_)))
                              (_%$%tl210523210541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210521210536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210523210541%_))
                              (let ((_%$%e210524210544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210523210541%_))))
                                (let ((_%$%hd210525210547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210524210544%_)))
                                      (_%$%tl210526210549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210524210544%_))))
                                  (let ((_%ctx210566%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd210525210547%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self210514%_ 'modules))
                                     (cons _%ctx210566%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self210514%_
                                                     'modules)))))
                                    (let ((__tmp212346
                                           (lambda ()
                                             (let ((__tmp212347
                                                    (##structure-ref
                                                     _%ctx210566%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210514%_
                                                __tmp212347)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp212346
                                       gx#current-expander-context
                                       _%ctx210566%_)))))
                              (_%$%g210517210531%_ _%$%g210518210534%_))))
                      (_%$%g210517210531%_ _%$%g210518210534%_)))))
          (_%$%g210516210569%_ _%stx210515%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls210468210470%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls210468210470%_
              (let ((_%decls210472%_ _%$%decls210468210470%_))
                (let _%lp210474%_ ((_%rest210476%_ _%decls210472%_))
                  (let* ((_%$%rest210477210485%_ _%rest210476%_)
                         (_%$%else210479210493%_ (lambda () '#f))
                         (_%$%K210481210502%_
                          (lambda (_%decls210496%_ _%decl210497%_)
                            (if (equal? _%decl210497%_ '(not safe))
                                '#t
                                (if (equal? _%decl210497%_ '(safe))
                                    '#f
                                    (_%lp210474%_ _%decls210496%_))))))
                    (if (pair? _%$%rest210477210485%_)
                        (let ((_%$%hd210482210505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest210477210485%_)))
                              (_%$%tl210483210507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest210477210485%_))))
                          (let* ((_%decl210510%_ _%$%hd210482210505%_)
                                 (_%decls210512%_ _%$%tl210483210507%_))
                            (_%$%K210481210502%_
                             _%decls210512%_
                             _%decl210510%_)))
                        (_%$%else210479210493%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id210462%_ _%syntax?210463%_)
        (let ((_%eid210465%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id210462%_))
                '1
                gx#binding::t
                '#f))
              (_%ht210466%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid210465%_))
              '#!void
              (let ((__tmp212348
                     (let ((__tmp212349
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid210465%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp212349 _%syntax?210463%_))))
                (declare (not safe))
                (hash-put! _%ht210466%_ _%eid210465%_ __tmp212348))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self210459%_ _%stx210460%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self210306%_ _%stx210307%_)
        (letrec ((_%simplify210309%_
                  (lambda (_%body210357%_)
                    (let _%lp210359%_ ((_%rest210361%_ _%body210357%_)
                                       (_%r210362%_ '()))
                      (let* ((_%$%rest210363210371%_ _%rest210361%_)
                             (_%$%else210365210379%_
                              (lambda () (reverse _%r210362%_)))
                             (_%$%K210367210447%_
                              (lambda (_%rest210382%_ _%hd210383%_)
                                (let* ((_%$%hd210384210400%_ _%hd210383%_)
                                       (_%$%else210388210408%_
                                        (lambda ()
                                          (_%lp210359%_
                                           _%rest210382%_
                                           (cons _%hd210383%_ _%r210362%_)))))
                                  (let ((_%$%K210396210437%_
                                         (lambda (_%exprs210435%_)
                                           (_%lp210359%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest210382%_
                                               _%exprs210435%_))
                                            _%r210362%_)))
                                        (_%$%K210391210421%_
                                         (lambda ()
                                           (if (null? _%rest210382%_)
                                               (_%lp210359%_
                                                _%rest210382%_
                                                (cons _%hd210383%_
                                                      _%r210362%_))
                                               (_%lp210359%_
                                                _%rest210382%_
                                                _%r210362%_))))
                                        (_%$%K210390210413%_
                                         (lambda ()
                                           (if (null? _%rest210382%_)
                                               (_%lp210359%_
                                                _%rest210382%_
                                                (cons _%hd210383%_
                                                      _%r210362%_))
                                               (_%lp210359%_
                                                _%rest210382%_
                                                _%r210362%_)))))
                                    (let ((_%$%try-match210387210416%_
                                           (lambda ()
                                             (if (symbol? _%$%hd210384210400%_)
                                                 (_%$%K210390210413%_)
                                                 (_%$%else210388210408%_)))))
                                      (if (pair? _%$%hd210384210400%_)
                                          (let ((_%$%tl210398210442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd210384210400%_)))
                                                (_%$%hd210397210440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd210384210400%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd210397210440%_
                                                         'begin))
                                                (let ((_%exprs210445%_
                                                       _%$%tl210398210442%_))
                                                  (_%$%K210396210437%_
                                                   _%exprs210445%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd210397210440%_
                                                             'quote))
                                                    (if (pair? _%$%tl210398210442%_)
                                                        (let ((_%$%tl210395210429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl210398210442%_))))
                  (if (null? _%$%tl210395210429%_)
                      (_%$%K210391210421%_)
                      (_%$%try-match210387210416%_)))
                (_%$%try-match210387210416%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match210387210416%_))))
                                          (_%$%try-match210387210416%_))))))))
                        (if (pair? _%$%rest210363210371%_)
                            (let ((_%$%hd210368210450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210363210371%_)))
                                  (_%$%tl210369210452%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210363210371%_))))
                              (let* ((_%hd210455%_ _%$%hd210368210450%_)
                                     (_%rest210457%_ _%$%tl210369210452%_))
                                (_%$%K210367210447%_
                                 _%rest210457%_
                                 _%hd210455%_)))
                            (_%$%else210365210379%_)))))))
          (let* ((_%$%g210311210321%_
                  (lambda (_%$%g210312210318%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210312210318%_))))
                 (_%$%g210310210354%_
                  (lambda (_%$%g210312210324%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210312210324%_))
                        (let ((_%$%e210314210326%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210312210324%_))))
                          (let ((_%$%hd210315210329%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210314210326%_)))
                                (_%$%tl210316210331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210314210326%_))))
                            (let* ((_%body210349%_
                                    (map (lambda (_%$%g210344210346%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self210306%_
                                              _%$%g210344210346%_)))
                                         _%$%tl210316210331%_))
                                   (_%body210351%_
                                    (_%simplify210309%_ _%body210349%_)))
                              (if (let ((__tmp212350 (length _%body210351%_)))
                                    (declare (not safe))
                                    (##fx= __tmp212350 '1))
                                  (car _%body210351%_)
                                  (cons 'begin _%body210351%_)))))
                        (_%$%g210311210321%_ _%$%g210312210324%_)))))
            (_%$%g210310210354%_ _%stx210307%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self210267%_ _%stx210268%_)
        (let* ((_%$%g210270210280%_
                (lambda (_%$%g210271210277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210271210277%_))))
               (_%$%g210269210303%_
                (lambda (_%$%g210271210283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210271210283%_))
                      (let ((_%$%e210273210285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210271210283%_))))
                        (let ((_%$%hd210274210288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210273210285%_)))
                              (_%$%tl210275210290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210273210285%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl210275210290%_)))))
                      (_%$%g210270210280%_ _%$%g210271210283%_)))))
          (_%$%g210269210303%_ _%stx210268%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self210033%_ _%stx210034%_)
        (let* ((_%__stx210940210941%_ _%stx210034%_)
               (_%$%g210038210090%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210940210941%_)))))
          (let ((_%__kont210942210943%_
                 (lambda (_%$%g210040210249%_ _%$%g210041210250%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self210033%_ _%$%g210040210249%_))))
                (_%__kont210944210945%_
                 (lambda (_%$%g210051210197%_
                          _%$%g210052210198%_
                          _%$%g210053210199%_)
                   (if (let ((__tmp212351
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g210053210199%_))))
                         (declare (not safe))
                         (##memq __tmp212351 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self210033%_
                          _%$%g210051210197%_)))))
                (_%__kont210948210949%_
                 (lambda (_%$%g210075210119%_ _%$%g210076210120%_)
                   (let ((_%decls210135%_
                          (map gx#syntax->datum _%$%g210076210120%_)))
                     (let ((__tmp212354
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls210135%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self210033%_
                                                   _%$%g210075210119%_))
                                                '())))))
                           (__tmp212352
                            (let ((__tmp212353
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp212353 _%decls210135%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp212354
                        gxc#current-compile-decls
                        __tmp212352))))))
            (let* ((_%__match210995210996%_
                    (lambda (_%$%e210054210143%_
                             _%$%hd210055210146%_
                             _%$%tl210056210148%_
                             _%$%e210057210151%_
                             _%$%hd210058210154%_
                             _%$%tl210059210156%_
                             _%$%e210060210159%_
                             _%$%hd210061210162%_
                             _%$%tl210062210164%_
                             _%__splice210946210947%_
                             _%$%target210063210167%_
                             _%$%tl210065210169%_)
                      (letrec ((_%$%loop210066210172%_
                                (lambda (_%$%hd210064210175%_
                                         _%$%param210070210177%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd210064210175%_))
                                      (let ((_%$%e210067210179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd210064210175%_))))
                                        (let ((_%$%lp-tl210069210184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210067210179%_)))
                                              (_%$%lp-hd210068210182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210067210179%_))))
                                          (_%$%loop210066210172%_
                                           _%$%lp-tl210069210184%_
                                           (cons _%$%lp-hd210068210182%_
                                                 _%$%param210070210177%_))))
                                      (let ((_%$%param210071210187%_
                                             (reverse _%$%param210070210177%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl210059210156%_))
                                            (let ((_%$%e210072210189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl210059210156%_))))
                                              (let ((_%$%tl210074210194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e210072210189%_)))
                                                    (_%$%hd210073210192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e210072210189%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl210074210194%_))
                                                    (let ((_%$%g210051210197%_
                                                           _%$%hd210073210192%_)
                                                          (_%$%g210052210198%_
                                                           _%$%param210071210187%_)
                                                          (_%$%g210053210199%_
                                                           _%$%hd210061210162%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g210053210199%_))
                       (not (let ((__tmp212355
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g210053210199%_))))
                              (declare (not safe))
                              (##memq __tmp212355 gxc#gambit-annotations))))
                  (_%__kont210944210945%_
                   _%$%g210051210197%_
                   _%$%g210052210198%_
                   _%$%g210053210199%_)
                  (_%__kont210948210949%_
                   _%$%hd210073210192%_
                   _%$%hd210058210154%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g210038210090%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g210038210090%_))))))))
                        (_%$%loop210066210172%_
                         _%$%target210063210167%_
                         '()))))
                   (_%__match210969210970%_
                    (lambda (_%$%e210042210225%_
                             _%$%hd210043210228%_
                             _%$%tl210044210230%_
                             _%$%e210045210233%_
                             _%$%hd210046210236%_
                             _%$%tl210047210238%_
                             _%$%e210048210241%_
                             _%$%hd210049210244%_
                             _%$%tl210050210246%_)
                      (let ((_%$%g210040210249%_ _%$%hd210049210244%_)
                            (_%$%g210041210250%_ _%$%hd210046210236%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g210041210250%_))
                            (_%__kont210942210943%_
                             _%$%g210040210249%_
                             _%$%g210041210250%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd210046210236%_))
                                (let ((_%$%e210060210159%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd210046210236%_))))
                                  (let ((_%$%tl210062210164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210060210159%_)))
                                        (_%$%hd210061210162%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210060210159%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl210062210164%_))
                                        (let ((_%__splice210946210947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl210062210164%_
                                                  '0))))
                                          (let ((_%$%tl210065210169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice210946210947%_
                                                    '1)))
                                                (_%$%target210063210167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice210946210947%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210065210169%_))
                                                (_%__match210995210996%_
                                                 _%$%e210042210225%_
                                                 _%$%hd210043210228%_
                                                 _%$%tl210044210230%_
                                                 _%$%e210045210233%_
                                                 _%$%hd210046210236%_
                                                 _%$%tl210047210238%_
                                                 _%$%e210060210159%_
                                                 _%$%hd210061210162%_
                                                 _%$%tl210062210164%_
                                                 _%__splice210946210947%_
                                                 _%$%target210063210167%_
                                                 _%$%tl210065210169%_)
                                                (_%__kont210948210949%_
                                                 _%$%hd210049210244%_
                                                 _%$%hd210046210236%_))))
                                        (_%__kont210948210949%_
                                         _%$%hd210049210244%_
                                         _%$%hd210046210236%_))))
                                (_%__kont210948210949%_
                                 _%$%hd210049210244%_
                                 _%$%hd210046210236%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210940210941%_))
                  (let ((_%$%e210042210225%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx210940210941%_))))
                    (let ((_%$%tl210044210230%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210042210225%_)))
                          (_%$%hd210043210228%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210042210225%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl210044210230%_))
                          (let ((_%$%e210045210233%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl210044210230%_))))
                            (let ((_%$%tl210047210238%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e210045210233%_)))
                                  (_%$%hd210046210236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e210045210233%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl210047210238%_))
                                  (let ((_%$%e210048210241%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl210047210238%_))))
                                    (let ((_%$%tl210050210246%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210048210241%_)))
                                          (_%$%hd210049210244%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210048210241%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl210050210246%_))
                                          (_%__match210969210970%_
                                           _%$%e210042210225%_
                                           _%$%hd210043210228%_
                                           _%$%tl210044210230%_
                                           _%$%e210045210233%_
                                           _%$%hd210046210236%_
                                           _%$%tl210047210238%_
                                           _%$%e210048210241%_
                                           _%$%hd210049210244%_
                                           _%$%tl210050210246%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd210046210236%_))
                                              (let ((_%$%e210060210159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd210046210236%_))))
                                                (let ((_%$%tl210062210164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210060210159%_)))
                                                      (_%$%hd210061210162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210060210159%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl210062210164%_))
                                                      (let ((_%__splice210946210947%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl210062210164%_
                        '0))))
                (let ((_%$%tl210065210169%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210946210947%_ '1)))
                      (_%$%target210063210167%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210946210947%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210065210169%_))
                      (_%__match210995210996%_
                       _%$%e210042210225%_
                       _%$%hd210043210228%_
                       _%$%tl210044210230%_
                       _%$%e210045210233%_
                       _%$%hd210046210236%_
                       _%$%tl210047210238%_
                       _%$%e210060210159%_
                       _%$%hd210061210162%_
                       _%$%tl210062210164%_
                       _%__splice210946210947%_
                       _%$%target210063210167%_
                       _%$%tl210065210169%_)
                      (let () (declare (not safe)) (_%$%g210038210090%_)))))
              (let () (declare (not safe)) (_%$%g210038210090%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g210038210090%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd210046210236%_))
                                      (let ((_%$%e210060210159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd210046210236%_))))
                                        (let ((_%$%tl210062210164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210060210159%_)))
                                              (_%$%hd210061210162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210060210159%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl210062210164%_))
                                              (let ((_%__splice210946210947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl210062210164%_
                                                        '0))))
                                                (let ((_%$%tl210065210169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210946210947%_
                                                          '1)))
                                                      (_%$%target210063210167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210946210947%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210065210169%_))
                                                      (_%__match210995210996%_
                                                       _%$%e210042210225%_
                                                       _%$%hd210043210228%_
                                                       _%$%tl210044210230%_
                                                       _%$%e210045210233%_
                                                       _%$%hd210046210236%_
                                                       _%$%tl210047210238%_
                                                       _%$%e210060210159%_
                                                       _%$%hd210061210162%_
                                                       _%$%tl210062210164%_
                                                       _%__splice210946210947%_
                                                       _%$%target210063210167%_
                                                       _%$%tl210065210169%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g210038210090%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g210038210090%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g210038210090%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g210038210090%_)))))
                  (let () (declare (not safe)) (_%$%g210038210090%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self209992%_ _%stx209993%_)
        (let* ((_%$%g209995210005%_
                (lambda (_%$%g209996210002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209996210002%_))))
               (_%$%g209994210030%_
                (lambda (_%$%g209996210008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209996210008%_))
                      (let ((_%$%e209998210010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209996210008%_))))
                        (let ((_%$%hd209999210013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209998210010%_)))
                              (_%$%tl210000210015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209998210010%_))))
                          (let ((_%decls210028%_
                                 (map gx#syntax->datum _%$%tl210000210015%_)))
                            (let ((__tmp212356
                                   (let ((__tmp212357
                                          (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls))))
                                     (declare (not safe))
                                     (foldr__0
                                      cons
                                      __tmp212357
                                      _%decls210028%_))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp212356))
                            (cons 'declare _%decls210028%_))))
                      (_%$%g209995210005%_ _%$%g209996210008%_)))))
          (_%$%g209994210030%_ _%stx209993%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self209739%_ _%stx209740%_)
        (let* ((_%$%g209742209759%_
                (lambda (_%$%g209743209756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209743209756%_))))
               (_%$%g209741209989%_
                (lambda (_%$%g209743209762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209743209762%_))
                      (let ((_%$%e209746209764%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209743209762%_))))
                        (let ((_%$%hd209747209767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209746209764%_)))
                              (_%$%tl209748209769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209746209764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209748209769%_))
                              (let ((_%$%e209749209772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209748209769%_))))
                                (let ((_%$%hd209750209775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209749209772%_)))
                                      (_%$%tl209751209777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209749209772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209751209777%_))
                                      (let ((_%$%e209752209780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209751209777%_))))
                                        (let ((_%$%hd209753209783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209752209780%_)))
                                              (_%$%tl209754209785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209752209780%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209754209785%_))
                                              (let* ((_%__stx211048211049%_
                                                      _%$%hd209750209775%_)
                                                     (_%$%g209806209820%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx211048211049%_)))))
                                                (let ((_%__kont211050211051%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self209739%_
                                                            _%$%hd209753209783%_))))
                                                      (_%__kont211052211053%_
                                                       (lambda (_%$%g209812209952%_)
                                                         (let ((_%eid209961%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g209812209952%_))))
                   (let ((_%$%lambda-expr209962209964%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd209753209783%_)))
                     (if _%$%lambda-expr209962209964%_
                         (let* ((_%lambda-expr209966%_
                                 _%$%lambda-expr209962209964%_)
                                (__tmp212358
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp212358
                            _%lambda-expr209966%_
                            _%eid209961%_))
                         '#f))
                   (cons 'define
                         (cons _%eid209961%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self209739%_
                                        _%$%hd209753209783%_))
                                     '()))))))
              (_%__kont211054211055%_
               (lambda ()
                 (let* ((_%tmp209827%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body209936%_
                         (let _%lp209829%_ ((_%rest209831%_
                                             _%$%hd209750209775%_)
                                            (_%k209832%_ '0)
                                            (_%r209833%_ '()))
                           (let* ((_%__stx211018211019%_ _%rest209831%_)
                                  (_%$%g209838209855%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx211018211019%_)))))
                             (let ((_%__kont211020211021%_
                                    (lambda (_%$%g209840209923%_)
                                      (_%lp209829%_
                                       _%$%g209840209923%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k209832%_ '1))
                                       _%r209833%_)))
                                   (_%__kont211022211023%_
                                    (lambda (_%$%g209845209896%_
                                             _%$%g209846209897%_)
                                      (_%lp209829%_
                                       _%$%g209845209896%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k209832%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g209846209897%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp209827%_
                                                                _%k209832%_
                                                                _%$%g209845209896%_)
                                                               '())))
                                             _%r209833%_))))
                                   (_%__kont211024211025%_
                                    (lambda (_%$%g209850209867%_)
                                      (let ((__tmp212359
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g209850209867%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp209827%_
                              _%k209832%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp212359
                                         _%r209833%_))))
                                   (_%__kont211026211027%_
                                    (lambda () (reverse _%r209833%_))))
                               (let ((_%$%g209836209883%_
                                      (lambda ()
                                        (let ((_%$%g209850209867%_
                                               _%__stx211018211019%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g209850209867%_))
                                              (_%__kont211024211025%_
                                               _%$%g209850209867%_)
                                              (_%__kont211026211027%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx211018211019%_))
                                     (let ((_%$%e209841209912%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx211018211019%_))))
                                       (let ((_%$%tl209843209917%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e209841209912%_)))
                                             (_%$%hd209842209915%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e209841209912%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd209842209915%_))
                                             (let ((_%$%e209844209920%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd209842209915%_))))
                                               (if (equal? _%$%e209844209920%_
                                                           '#f)
                                                   (_%__kont211020211021%_
                                                    _%$%tl209843209917%_)
                                                   (_%__kont211022211023%_
                                                    _%$%tl209843209917%_
                                                    _%$%hd209842209915%_)))
                                             (_%__kont211022211023%_
                                              _%$%tl209843209917%_
                                              _%$%hd209842209915%_))))
                                     (_%$%g209836209883%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp209827%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self209739%_
                                                    _%$%hd209753209783%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp209827%_
                                      _%$%hd209750209775%_
                                      _%$%hd209753209783%_)
                                     _%body209936%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx211048211049%_))
                                                      (let ((_%$%e209808209973%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx211048211049%_))))
                (let ((_%$%tl209810209978%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e209808209973%_)))
                      (_%$%hd209809209976%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e209808209973%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd209809209976%_))
                      (let ((_%$%e209811209981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd209809209976%_))))
                        (if (equal? _%$%e209811209981%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl209810209978%_))
                                (_%__kont211050211051%_)
                                (_%__kont211054211055%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl209810209978%_))
                                (_%__kont211052211053%_ _%$%hd209809209976%_)
                                (_%__kont211054211055%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl209810209978%_))
                          (_%__kont211052211053%_ _%$%hd209809209976%_)
                          (_%__kont211054211055%_)))))
              (_%__kont211054211055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209742209759%_
                                               _%$%g209743209762%_))))
                                      (_%$%g209742209759%_
                                       _%$%g209743209762%_))))
                              (_%$%g209742209759%_ _%$%g209743209762%_))))
                      (_%$%g209742209759%_ _%$%g209743209762%_)))))
          (_%$%g209741209989%_ _%stx209740%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals209714%_ _%hd209715%_ _%expr209716%_)
        (let ((_%$e209718%_ (gxc#apply-count-values _%expr209716%_)))
          (if _%$e209718%_
              (let ((_%len209723%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd209715%_)))
                    (_%cmp209724%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd209715%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len209723%_ '0))
                        (_%cmp209724%_ _%$e209718%_ _%len209723%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr209716%_
                       _%hd209715%_))))
              (let* ((_%len209730%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd209715%_)))
                     (_%cmp209732%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd209715%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg209734%_
                      (let ((__tmp212361
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd209715%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp212360 (number->string _%len209730%_)))
                        (declare (not safe))
                        (##string-append __tmp212361 __tmp212360 '" values")))
                     (_%count209736%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd209715%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len209730%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count209736%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals209714%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp209732%_
                                (cons _%count209736%_
                                      (cons _%len209730%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp209732%_
                                                        (cons _%count209736%_
                                                              (cons _%len209730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg209734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count209736%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var209709%_)
        (letrec ((_%generate-inline209711%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var209709%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var209709%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline209711%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline209711%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var209702%_ _%i209703%_ _%rest209704%_)
        (letrec ((_%generate-inline209706%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i209703%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest209704%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var209702%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var209702%_
                                                      (cons '0 '())))
                                          (cons _%var209702%_ '()))))
                        (cons '##values-ref
                              (cons _%var209702%_ (cons _%i209703%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline209706%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline209706%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var209696%_ _%i209697%_)
        (if (let () (declare (not safe)) (##fx= _%i209697%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var209696%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var209696%_ '()))
                                  (cons (cons 'list (cons _%var209696%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var209696%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var209696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var209696%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i209697%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var209696%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var209696%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var209696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var209696%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var209696%_ '()))
                                (cons _%i209697%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var209696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i209697%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self209628%_ _%stx209629%_)
        (let* ((_%$%g209631209648%_
                (lambda (_%$%g209632209645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209632209645%_))))
               (_%$%g209630209693%_
                (lambda (_%$%g209632209651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209632209651%_))
                      (let ((_%$%e209635209653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209632209651%_))))
                        (let ((_%$%hd209636209656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209635209653%_)))
                              (_%$%tl209637209658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209635209653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209637209658%_))
                              (let ((_%$%e209638209661%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209637209658%_))))
                                (let ((_%$%hd209639209664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209638209661%_)))
                                      (_%$%tl209640209666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209638209661%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209640209666%_))
                                      (let ((_%$%e209641209669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209640209666%_))))
                                        (let ((_%$%hd209642209672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209641209669%_)))
                                              (_%$%tl209643209674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209641209669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209643209674%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self209628%_
                                               _%$%hd209639209664%_
                                               _%$%hd209642209672%_)
                                              (_%$%g209631209648%_
                                               _%$%g209632209651%_))))
                                      (_%$%g209631209648%_
                                       _%$%g209632209651%_))))
                              (_%$%g209631209648%_ _%$%g209632209651%_))))
                      (_%$%g209631209648%_ _%$%g209632209651%_)))))
          (_%$%g209630209693%_ _%stx209629%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self209587%_ _%hd209588%_ _%body209589%_)
        (let* ((_%hd209591%_ (gxc#generate-runtime-lambda-head _%hd209588%_))
               (_%body209593%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self209587%_ _%body209589%_)))
               (_%body209625%_
                (let* ((_%$%body209594209602%_ _%body209593%_)
                       (_%$%else209596209610%_
                        (lambda () (cons _%body209593%_ '())))
                       (_%$%K209598209615%_
                        (lambda (_%exprs209613%_) _%exprs209613%_)))
                  (if (pair? _%$%body209594209602%_)
                      (let ((_%$%hd209599209618%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body209594209602%_)))
                            (_%$%tl209600209620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body209594209602%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd209599209618%_ 'begin))
                            (let ((_%exprs209623%_ _%$%tl209600209620%_))
                              (_%$%K209598209615%_ _%exprs209623%_))
                            (_%$%else209596209610%_)))
                      (_%$%else209596209610%_)))))
          (cons 'lambda (cons _%hd209591%_ _%body209625%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd209585%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd209585%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self208142%_ _%stx208143%_)
        (letrec ((_%dispatch-case?208145%_
                  (lambda (_%hd208823%_ _%body208824%_)
                    (let* ((_%form208826%_
                            (cons _%hd208823%_ (cons _%body208824%_ '())))
                           (_%__stx211080211081%_ _%form208826%_)
                           (_%$%g208831208988%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx211080211081%_)))))
                      (let ((_%__kont211082211083%_
                             (lambda (_%$%g208833209505%_
                                      _%$%g208834209506%_
                                      _%$%g208835209507%_)
                               '#t))
                            (_%__kont211088211089%_
                             (lambda (_%$%g208878209297%_
                                      _%$%g208879209298%_
                                      _%$%g208880209299%_
                                      _%$%g208881209300%_
                                      _%$%g208882209301%_
                                      _%$%g208883209302%_)
                               '#t))
                            (_%__kont211094211095%_
                             (lambda (_%$%g208944209096%_
                                      _%$%g208945209097%_
                                      _%$%g208946209098%_
                                      _%$%g208947209099%_)
                               '#t))
                            (_%__kont211096211097%_ (lambda () '#f)))
                        (let* ((_%__match211221211222%_
                                (lambda (_%$%e208948209000%_
                                         _%$%hd208949209003%_
                                         _%$%tl208950209005%_
                                         _%$%e208951209008%_
                                         _%$%hd208952209011%_
                                         _%$%tl208953209013%_
                                         _%$%e208954209016%_
                                         _%$%hd208955209019%_
                                         _%$%tl208956209021%_
                                         _%$%e208957209024%_
                                         _%$%hd208958209027%_
                                         _%$%tl208959209029%_
                                         _%$%e208960209032%_
                                         _%$%hd208961209035%_
                                         _%$%tl208962209037%_
                                         _%$%e208963209040%_
                                         _%$%hd208964209043%_
                                         _%$%tl208965209045%_
                                         _%$%e208966209048%_
                                         _%$%hd208967209051%_
                                         _%$%tl208968209053%_
                                         _%$%e208969209056%_
                                         _%$%hd208970209059%_
                                         _%$%tl208971209061%_
                                         _%$%e208972209064%_
                                         _%$%hd208973209067%_
                                         _%$%tl208974209069%_
                                         _%$%e208975209072%_
                                         _%$%hd208976209075%_
                                         _%$%tl208977209077%_
                                         _%$%e208978209080%_
                                         _%$%hd208979209083%_
                                         _%$%tl208980209085%_
                                         _%$%e208981209088%_
                                         _%$%hd208982209091%_
                                         _%$%tl208983209093%_)
                                  (let ((_%$%g208944209096%_
                                         _%$%hd208982209091%_)
                                        (_%$%g208945209097%_
                                         _%$%hd208973209067%_)
                                        (_%$%g208946209098%_
                                         _%$%hd208964209043%_)
                                        (_%$%g208947209099%_
                                         _%$%hd208949209003%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g208947209099%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g208946209098%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g208947209099%_
                                                _%$%g208944209096%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g208945209097%_
                                                     _%$%g208947209099%_))))
                                        (_%__kont211094211095%_
                                         _%$%g208944209096%_
                                         _%$%g208945209097%_
                                         _%$%g208946209098%_
                                         _%$%g208947209099%_)
                                        (_%__kont211096211097%_)))))
                               (_%__match211193211194%_
                                (lambda (_%$%e208948209000%_
                                         _%$%hd208949209003%_
                                         _%$%tl208950209005%_
                                         _%$%e208951209008%_
                                         _%$%hd208952209011%_
                                         _%$%tl208953209013%_
                                         _%$%e208954209016%_
                                         _%$%hd208955209019%_
                                         _%$%tl208956209021%_
                                         _%$%e208957209024%_
                                         _%$%hd208958209027%_
                                         _%$%tl208959209029%_
                                         _%$%e208960209032%_
                                         _%$%hd208961209035%_
                                         _%$%tl208962209037%_
                                         _%$%e208963209040%_
                                         _%$%hd208964209043%_
                                         _%$%tl208965209045%_
                                         _%$%e208966209048%_
                                         _%$%hd208967209051%_
                                         _%$%tl208968209053%_
                                         _%$%e208969209056%_
                                         _%$%hd208970209059%_
                                         _%$%tl208971209061%_
                                         _%$%e208972209064%_
                                         _%$%hd208973209067%_
                                         _%$%tl208974209069%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208968209053%_))
                                      (let ((_%$%e208975209072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208968209053%_))))
                                        (let ((_%$%tl208977209077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208975209072%_)))
                                              (_%$%hd208976209075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208975209072%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd208976209075%_))
                                              (let ((_%$%e208978209080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd208976209075%_))))
                                                (let ((_%$%tl208980209085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208978209080%_)))
                                                      (_%$%hd208979209083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208978209080%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd208979209083%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd208979209083%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl208980209085%_))
                      (let ((_%$%e208981209088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl208980209085%_))))
                        (let ((_%$%tl208983209093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208981209088%_)))
                              (_%$%hd208982209091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208981209088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl208983209093%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl208977209077%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl208953209013%_))
                                      (_%__match211221211222%_
                                       _%$%e208948209000%_
                                       _%$%hd208949209003%_
                                       _%$%tl208950209005%_
                                       _%$%e208951209008%_
                                       _%$%hd208952209011%_
                                       _%$%tl208953209013%_
                                       _%$%e208954209016%_
                                       _%$%hd208955209019%_
                                       _%$%tl208956209021%_
                                       _%$%e208957209024%_
                                       _%$%hd208958209027%_
                                       _%$%tl208959209029%_
                                       _%$%e208960209032%_
                                       _%$%hd208961209035%_
                                       _%$%tl208962209037%_
                                       _%$%e208963209040%_
                                       _%$%hd208964209043%_
                                       _%$%tl208965209045%_
                                       _%$%e208966209048%_
                                       _%$%hd208967209051%_
                                       _%$%tl208968209053%_
                                       _%$%e208969209056%_
                                       _%$%hd208970209059%_
                                       _%$%tl208971209061%_
                                       _%$%e208972209064%_
                                       _%$%hd208973209067%_
                                       _%$%tl208974209069%_
                                       _%$%e208975209072%_
                                       _%$%hd208976209075%_
                                       _%$%tl208977209077%_
                                       _%$%e208978209080%_
                                       _%$%hd208979209083%_
                                       _%$%tl208980209085%_
                                       _%$%e208981209088%_
                                       _%$%hd208982209091%_
                                       _%$%tl208983209093%_)
                                      (_%__kont211096211097%_))
                                  (_%__kont211096211097%_))
                              (_%__kont211096211097%_))))
                      (_%__kont211096211097%_))
                  (_%__kont211096211097%_))
              (_%__kont211096211097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont211096211097%_))))
                                      (_%__kont211096211097%_))))
                               (_%__match211123211124%_
                                (lambda (_%$%e208884209141%_
                                         _%$%hd208885209144%_
                                         _%$%tl208886209146%_
                                         _%__splice211090211091%_
                                         _%$%target208887209149%_
                                         _%$%tl208889209151%_)
                                  (letrec ((_%$%loop208890209154%_
                                            (lambda (_%$%hd208888209157%_
                                                     _%$%arg208894209159%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208888209157%_))
                                                  (let ((_%$%e208891209161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208888209157%_))))
                                                    (let ((_%$%lp-tl208893209166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208891209161%_)))
                                                          (_%$%lp-hd208892209164%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208891209161%_))))
                                                      (_%$%loop208890209154%_
                                                       _%$%lp-tl208893209166%_
                                                       (cons _%$%lp-hd208892209164%_
                                                             _%$%arg208894209159%_))))
                                                  (let ((_%$%arg208895209169%_
                                                         (reverse _%$%arg208894209159%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208886209146%_))
                                                        (let ((_%$%e208896209171%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208886209146%_))))
                  (let ((_%$%tl208898209176%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208896209171%_)))
                        (_%$%hd208897209174%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208896209171%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208897209174%_))
                        (let ((_%$%e208899209179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208897209174%_))))
                          (let ((_%$%tl208901209184%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208899209179%_)))
                                (_%$%hd208900209182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208899209179%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd208900209182%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd208900209182%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208901209184%_))
                                        (let ((_%$%e208902209187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208901209184%_))))
                                          (let ((_%$%tl208904209192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208902209187%_)))
                                                (_%$%hd208903209190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208902209187%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd208903209190%_))
                                                (let ((_%$%e208905209195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd208903209190%_))))
                                                  (let ((_%$%tl208907209200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208905209195%_)))
                                                        (_%$%hd208906209198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208905209195%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd208906209198%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd208906209198%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl208907209200%_))
                        (let ((_%$%e208908209203%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl208907209200%_))))
                          (let ((_%$%tl208910209208%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208908209203%_)))
                                (_%$%hd208909209206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208908209203%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208910209208%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl208904209192%_))
                                    (let ((_%$%e208911209211%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl208904209192%_))))
                                      (let ((_%$%tl208913209216%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e208911209211%_)))
                                            (_%$%hd208912209214%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e208911209211%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd208912209214%_))
                                            (let ((_%$%e208914209219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd208912209214%_))))
                                              (let ((_%$%tl208916209224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208914209219%_)))
                                                    (_%$%hd208915209222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208914209219%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd208915209222%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd208915209222%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl208916209224%_))
                                                            (let ((_%$%e208917209227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl208916209224%_))))
                      (let ((_%$%tl208919209232%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208917209227%_)))
                            (_%$%hd208918209230%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208917209227%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl208919209232%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl208913209216%_))
                                (if (let ((__tmp212362
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl208913209216%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp212362 '1))
                                    (let ((_%__splice211092211093%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl208913209216%_
                                              '1))))
                                      (let ((_%$%tl208922209237%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211092211093%_
                                                '1)))
                                            (_%$%target208920209235%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211092211093%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl208922209237%_))
                                            (let ((_%$%e208929209240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl208922209237%_))))
                                              (let ((_%$%tl208931209245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208929209240%_)))
                                                    (_%$%hd208930209243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208929209240%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd208930209243%_))
                                                    (let ((_%$%e208932209248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd208930209243%_))))
                                                      (let ((_%$%tl208934209253%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e208932209248%_)))
                    (_%$%hd208933209251%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e208932209248%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd208933209251%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd208933209251%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl208934209253%_))
                            (let ((_%$%e208935209256%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl208934209253%_))))
                              (let ((_%$%tl208937209261%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e208935209256%_)))
                                    (_%$%hd208936209259%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e208935209256%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl208937209261%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl208931209245%_))
                                        (letrec ((_%$%loop208923209264%_
                                                  (lambda (_%$%hd208921209267%_
                                                           _%$%xarg208927209269%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd208921209267%_))
                                                        (let ((_%$%e208924209271%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd208921209267%_))))
                  (let ((_%$%lp-tl208926209276%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208924209271%_)))
                        (_%$%lp-hd208925209274%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208924209271%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd208925209274%_))
                        (let ((_%$%e208938209279%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd208925209274%_))))
                          (let ((_%$%tl208940209284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208938209279%_)))
                                (_%$%hd208939209282%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208938209279%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd208939209282%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd208939209282%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208940209284%_))
                                        (let ((_%$%e208941209287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208940209284%_))))
                                          (let ((_%$%tl208943209292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208941209287%_)))
                                                (_%$%hd208942209290%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208941209287%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl208943209292%_))
                                                (_%$%loop208923209264%_
                                                 _%$%lp-tl208926209276%_
                                                 (cons _%$%hd208942209290%_
                                                       _%$%xarg208927209269%_))
                                                (_%__match211193211194%_
                                                 _%$%e208884209141%_
                                                 _%$%hd208885209144%_
                                                 _%$%tl208886209146%_
                                                 _%$%e208896209171%_
                                                 _%$%hd208897209174%_
                                                 _%$%tl208898209176%_
                                                 _%$%e208899209179%_
                                                 _%$%hd208900209182%_
                                                 _%$%tl208901209184%_
                                                 _%$%e208902209187%_
                                                 _%$%hd208903209190%_
                                                 _%$%tl208904209192%_
                                                 _%$%e208905209195%_
                                                 _%$%hd208906209198%_
                                                 _%$%tl208907209200%_
                                                 _%$%e208908209203%_
                                                 _%$%hd208909209206%_
                                                 _%$%tl208910209208%_
                                                 _%$%e208911209211%_
                                                 _%$%hd208912209214%_
                                                 _%$%tl208913209216%_
                                                 _%$%e208914209219%_
                                                 _%$%hd208915209222%_
                                                 _%$%tl208916209224%_
                                                 _%$%e208917209227%_
                                                 _%$%hd208918209230%_
                                                 _%$%tl208919209232%_))))
                                        (_%__match211193211194%_
                                         _%$%e208884209141%_
                                         _%$%hd208885209144%_
                                         _%$%tl208886209146%_
                                         _%$%e208896209171%_
                                         _%$%hd208897209174%_
                                         _%$%tl208898209176%_
                                         _%$%e208899209179%_
                                         _%$%hd208900209182%_
                                         _%$%tl208901209184%_
                                         _%$%e208902209187%_
                                         _%$%hd208903209190%_
                                         _%$%tl208904209192%_
                                         _%$%e208905209195%_
                                         _%$%hd208906209198%_
                                         _%$%tl208907209200%_
                                         _%$%e208908209203%_
                                         _%$%hd208909209206%_
                                         _%$%tl208910209208%_
                                         _%$%e208911209211%_
                                         _%$%hd208912209214%_
                                         _%$%tl208913209216%_
                                         _%$%e208914209219%_
                                         _%$%hd208915209222%_
                                         _%$%tl208916209224%_
                                         _%$%e208917209227%_
                                         _%$%hd208918209230%_
                                         _%$%tl208919209232%_))
                                    (_%__match211193211194%_
                                     _%$%e208884209141%_
                                     _%$%hd208885209144%_
                                     _%$%tl208886209146%_
                                     _%$%e208896209171%_
                                     _%$%hd208897209174%_
                                     _%$%tl208898209176%_
                                     _%$%e208899209179%_
                                     _%$%hd208900209182%_
                                     _%$%tl208901209184%_
                                     _%$%e208902209187%_
                                     _%$%hd208903209190%_
                                     _%$%tl208904209192%_
                                     _%$%e208905209195%_
                                     _%$%hd208906209198%_
                                     _%$%tl208907209200%_
                                     _%$%e208908209203%_
                                     _%$%hd208909209206%_
                                     _%$%tl208910209208%_
                                     _%$%e208911209211%_
                                     _%$%hd208912209214%_
                                     _%$%tl208913209216%_
                                     _%$%e208914209219%_
                                     _%$%hd208915209222%_
                                     _%$%tl208916209224%_
                                     _%$%e208917209227%_
                                     _%$%hd208918209230%_
                                     _%$%tl208919209232%_))
                                (_%__match211193211194%_
                                 _%$%e208884209141%_
                                 _%$%hd208885209144%_
                                 _%$%tl208886209146%_
                                 _%$%e208896209171%_
                                 _%$%hd208897209174%_
                                 _%$%tl208898209176%_
                                 _%$%e208899209179%_
                                 _%$%hd208900209182%_
                                 _%$%tl208901209184%_
                                 _%$%e208902209187%_
                                 _%$%hd208903209190%_
                                 _%$%tl208904209192%_
                                 _%$%e208905209195%_
                                 _%$%hd208906209198%_
                                 _%$%tl208907209200%_
                                 _%$%e208908209203%_
                                 _%$%hd208909209206%_
                                 _%$%tl208910209208%_
                                 _%$%e208911209211%_
                                 _%$%hd208912209214%_
                                 _%$%tl208913209216%_
                                 _%$%e208914209219%_
                                 _%$%hd208915209222%_
                                 _%$%tl208916209224%_
                                 _%$%e208917209227%_
                                 _%$%hd208918209230%_
                                 _%$%tl208919209232%_))))
                        (_%__match211193211194%_
                         _%$%e208884209141%_
                         _%$%hd208885209144%_
                         _%$%tl208886209146%_
                         _%$%e208896209171%_
                         _%$%hd208897209174%_
                         _%$%tl208898209176%_
                         _%$%e208899209179%_
                         _%$%hd208900209182%_
                         _%$%tl208901209184%_
                         _%$%e208902209187%_
                         _%$%hd208903209190%_
                         _%$%tl208904209192%_
                         _%$%e208905209195%_
                         _%$%hd208906209198%_
                         _%$%tl208907209200%_
                         _%$%e208908209203%_
                         _%$%hd208909209206%_
                         _%$%tl208910209208%_
                         _%$%e208911209211%_
                         _%$%hd208912209214%_
                         _%$%tl208913209216%_
                         _%$%e208914209219%_
                         _%$%hd208915209222%_
                         _%$%tl208916209224%_
                         _%$%e208917209227%_
                         _%$%hd208918209230%_
                         _%$%tl208919209232%_))))
                (let ((_%$%xarg208928209295%_
                       (reverse _%$%xarg208927209269%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl208898209176%_))
                      (let ((_%$%g208878209297%_ _%$%hd208936209259%_)
                            (_%$%g208879209298%_ _%$%xarg208928209295%_)
                            (_%$%g208880209299%_ _%$%hd208918209230%_)
                            (_%$%g208881209300%_ _%$%hd208909209206%_)
                            (_%$%g208882209301%_ _%$%tl208889209151%_)
                            (_%$%g208883209302%_ _%$%arg208895209169%_))
                        (if (and (let ((__tmp212363
                                        (let ((__tmp212364
                                               (lambda (_%$%g209345209348%_
                                                        _%$%g209346209350%_)
                                                 (cons _%$%g209345209348%_
                                                       _%$%g209346209350%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp212364
                                           '()
                                           _%$%g208883209302%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp212363))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g208882209301%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g208881209300%_
                                    'apply))
                                 (let ((__tmp212367
                                        (length (let ((__tmp212368
                                                       (lambda (_%$%g209352209355%_
                                                                _%$%g209353209357%_)
                                                         (cons _%$%g209352209355%_
                                                               _%$%g209353209357%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp212368
                                                   '()
                                                   _%$%g208883209302%_))))
                                       (__tmp212365
                                        (length (let ((__tmp212366
                                                       (lambda (_%$%g209359209362%_
                                                                _%$%g209360209364%_)
                                                         (cons _%$%g209359209362%_
                                                               _%$%g209360209364%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp212366
                                                   '()
                                                   _%$%g208879209298%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp212367 __tmp212365))
                                 (let ((__tmp212371
                                        (let ((__tmp212372
                                               (lambda (_%$%g209366209369%_
                                                        _%$%g209367209371%_)
                                                 (cons _%$%g209366209369%_
                                                       _%$%g209367209371%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp212372
                                           '()
                                           _%$%g208883209302%_)))
                                       (__tmp212369
                                        (let ((__tmp212370
                                               (lambda (_%$%g209373209376%_
                                                        _%$%g209374209378%_)
                                                 (cons _%$%g209373209376%_
                                                       _%$%g209374209378%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp212370
                                           '()
                                           _%$%g208879209298%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp212371
                                    __tmp212369))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g208882209301%_
                                    _%$%g208878209297%_))
                                 (not (let ((__tmp212376
                                             (lambda (_%$%g209380209382%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g209380209382%_
                                                  _%$%g208880209299%_))))
                                            (__tmp212373
                                             (let ((__tmp212375
                                                    (lambda (_%$%g209384209387%_
                                                             _%$%g209385209389%_)
                                                      (cons _%$%g209384209387%_
                                                            _%$%g209385209389%_)))
                                                   (__tmp212374
                                                    (cons _%$%g208882209301%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp212375
                                                __tmp212374
                                                _%$%g208883209302%_))))
                                        (declare (not safe))
                                        (__find __tmp212376 __tmp212373))))
                            (_%__kont211088211089%_
                             _%$%g208878209297%_
                             _%$%g208879209298%_
                             _%$%g208880209299%_
                             _%$%g208881209300%_
                             _%$%g208882209301%_
                             _%$%g208883209302%_)
                            (_%__match211193211194%_
                             _%$%e208884209141%_
                             _%$%hd208885209144%_
                             _%$%tl208886209146%_
                             _%$%e208896209171%_
                             _%$%hd208897209174%_
                             _%$%tl208898209176%_
                             _%$%e208899209179%_
                             _%$%hd208900209182%_
                             _%$%tl208901209184%_
                             _%$%e208902209187%_
                             _%$%hd208903209190%_
                             _%$%tl208904209192%_
                             _%$%e208905209195%_
                             _%$%hd208906209198%_
                             _%$%tl208907209200%_
                             _%$%e208908209203%_
                             _%$%hd208909209206%_
                             _%$%tl208910209208%_
                             _%$%e208911209211%_
                             _%$%hd208912209214%_
                             _%$%tl208913209216%_
                             _%$%e208914209219%_
                             _%$%hd208915209222%_
                             _%$%tl208916209224%_
                             _%$%e208917209227%_
                             _%$%hd208918209230%_
                             _%$%tl208919209232%_)))
                      (_%__match211193211194%_
                       _%$%e208884209141%_
                       _%$%hd208885209144%_
                       _%$%tl208886209146%_
                       _%$%e208896209171%_
                       _%$%hd208897209174%_
                       _%$%tl208898209176%_
                       _%$%e208899209179%_
                       _%$%hd208900209182%_
                       _%$%tl208901209184%_
                       _%$%e208902209187%_
                       _%$%hd208903209190%_
                       _%$%tl208904209192%_
                       _%$%e208905209195%_
                       _%$%hd208906209198%_
                       _%$%tl208907209200%_
                       _%$%e208908209203%_
                       _%$%hd208909209206%_
                       _%$%tl208910209208%_
                       _%$%e208911209211%_
                       _%$%hd208912209214%_
                       _%$%tl208913209216%_
                       _%$%e208914209219%_
                       _%$%hd208915209222%_
                       _%$%tl208916209224%_
                       _%$%e208917209227%_
                       _%$%hd208918209230%_
                       _%$%tl208919209232%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop208923209264%_
                                           _%$%target208920209235%_
                                           '()))
                                        (_%__match211193211194%_
                                         _%$%e208884209141%_
                                         _%$%hd208885209144%_
                                         _%$%tl208886209146%_
                                         _%$%e208896209171%_
                                         _%$%hd208897209174%_
                                         _%$%tl208898209176%_
                                         _%$%e208899209179%_
                                         _%$%hd208900209182%_
                                         _%$%tl208901209184%_
                                         _%$%e208902209187%_
                                         _%$%hd208903209190%_
                                         _%$%tl208904209192%_
                                         _%$%e208905209195%_
                                         _%$%hd208906209198%_
                                         _%$%tl208907209200%_
                                         _%$%e208908209203%_
                                         _%$%hd208909209206%_
                                         _%$%tl208910209208%_
                                         _%$%e208911209211%_
                                         _%$%hd208912209214%_
                                         _%$%tl208913209216%_
                                         _%$%e208914209219%_
                                         _%$%hd208915209222%_
                                         _%$%tl208916209224%_
                                         _%$%e208917209227%_
                                         _%$%hd208918209230%_
                                         _%$%tl208919209232%_))
                                    (_%__match211193211194%_
                                     _%$%e208884209141%_
                                     _%$%hd208885209144%_
                                     _%$%tl208886209146%_
                                     _%$%e208896209171%_
                                     _%$%hd208897209174%_
                                     _%$%tl208898209176%_
                                     _%$%e208899209179%_
                                     _%$%hd208900209182%_
                                     _%$%tl208901209184%_
                                     _%$%e208902209187%_
                                     _%$%hd208903209190%_
                                     _%$%tl208904209192%_
                                     _%$%e208905209195%_
                                     _%$%hd208906209198%_
                                     _%$%tl208907209200%_
                                     _%$%e208908209203%_
                                     _%$%hd208909209206%_
                                     _%$%tl208910209208%_
                                     _%$%e208911209211%_
                                     _%$%hd208912209214%_
                                     _%$%tl208913209216%_
                                     _%$%e208914209219%_
                                     _%$%hd208915209222%_
                                     _%$%tl208916209224%_
                                     _%$%e208917209227%_
                                     _%$%hd208918209230%_
                                     _%$%tl208919209232%_))))
                            (_%__match211193211194%_
                             _%$%e208884209141%_
                             _%$%hd208885209144%_
                             _%$%tl208886209146%_
                             _%$%e208896209171%_
                             _%$%hd208897209174%_
                             _%$%tl208898209176%_
                             _%$%e208899209179%_
                             _%$%hd208900209182%_
                             _%$%tl208901209184%_
                             _%$%e208902209187%_
                             _%$%hd208903209190%_
                             _%$%tl208904209192%_
                             _%$%e208905209195%_
                             _%$%hd208906209198%_
                             _%$%tl208907209200%_
                             _%$%e208908209203%_
                             _%$%hd208909209206%_
                             _%$%tl208910209208%_
                             _%$%e208911209211%_
                             _%$%hd208912209214%_
                             _%$%tl208913209216%_
                             _%$%e208914209219%_
                             _%$%hd208915209222%_
                             _%$%tl208916209224%_
                             _%$%e208917209227%_
                             _%$%hd208918209230%_
                             _%$%tl208919209232%_))
                        (_%__match211193211194%_
                         _%$%e208884209141%_
                         _%$%hd208885209144%_
                         _%$%tl208886209146%_
                         _%$%e208896209171%_
                         _%$%hd208897209174%_
                         _%$%tl208898209176%_
                         _%$%e208899209179%_
                         _%$%hd208900209182%_
                         _%$%tl208901209184%_
                         _%$%e208902209187%_
                         _%$%hd208903209190%_
                         _%$%tl208904209192%_
                         _%$%e208905209195%_
                         _%$%hd208906209198%_
                         _%$%tl208907209200%_
                         _%$%e208908209203%_
                         _%$%hd208909209206%_
                         _%$%tl208910209208%_
                         _%$%e208911209211%_
                         _%$%hd208912209214%_
                         _%$%tl208913209216%_
                         _%$%e208914209219%_
                         _%$%hd208915209222%_
                         _%$%tl208916209224%_
                         _%$%e208917209227%_
                         _%$%hd208918209230%_
                         _%$%tl208919209232%_))
                    (_%__match211193211194%_
                     _%$%e208884209141%_
                     _%$%hd208885209144%_
                     _%$%tl208886209146%_
                     _%$%e208896209171%_
                     _%$%hd208897209174%_
                     _%$%tl208898209176%_
                     _%$%e208899209179%_
                     _%$%hd208900209182%_
                     _%$%tl208901209184%_
                     _%$%e208902209187%_
                     _%$%hd208903209190%_
                     _%$%tl208904209192%_
                     _%$%e208905209195%_
                     _%$%hd208906209198%_
                     _%$%tl208907209200%_
                     _%$%e208908209203%_
                     _%$%hd208909209206%_
                     _%$%tl208910209208%_
                     _%$%e208911209211%_
                     _%$%hd208912209214%_
                     _%$%tl208913209216%_
                     _%$%e208914209219%_
                     _%$%hd208915209222%_
                     _%$%tl208916209224%_
                     _%$%e208917209227%_
                     _%$%hd208918209230%_
                     _%$%tl208919209232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match211193211194%_
                                                     _%$%e208884209141%_
                                                     _%$%hd208885209144%_
                                                     _%$%tl208886209146%_
                                                     _%$%e208896209171%_
                                                     _%$%hd208897209174%_
                                                     _%$%tl208898209176%_
                                                     _%$%e208899209179%_
                                                     _%$%hd208900209182%_
                                                     _%$%tl208901209184%_
                                                     _%$%e208902209187%_
                                                     _%$%hd208903209190%_
                                                     _%$%tl208904209192%_
                                                     _%$%e208905209195%_
                                                     _%$%hd208906209198%_
                                                     _%$%tl208907209200%_
                                                     _%$%e208908209203%_
                                                     _%$%hd208909209206%_
                                                     _%$%tl208910209208%_
                                                     _%$%e208911209211%_
                                                     _%$%hd208912209214%_
                                                     _%$%tl208913209216%_
                                                     _%$%e208914209219%_
                                                     _%$%hd208915209222%_
                                                     _%$%tl208916209224%_
                                                     _%$%e208917209227%_
                                                     _%$%hd208918209230%_
                                                     _%$%tl208919209232%_))))
                                            (_%__match211193211194%_
                                             _%$%e208884209141%_
                                             _%$%hd208885209144%_
                                             _%$%tl208886209146%_
                                             _%$%e208896209171%_
                                             _%$%hd208897209174%_
                                             _%$%tl208898209176%_
                                             _%$%e208899209179%_
                                             _%$%hd208900209182%_
                                             _%$%tl208901209184%_
                                             _%$%e208902209187%_
                                             _%$%hd208903209190%_
                                             _%$%tl208904209192%_
                                             _%$%e208905209195%_
                                             _%$%hd208906209198%_
                                             _%$%tl208907209200%_
                                             _%$%e208908209203%_
                                             _%$%hd208909209206%_
                                             _%$%tl208910209208%_
                                             _%$%e208911209211%_
                                             _%$%hd208912209214%_
                                             _%$%tl208913209216%_
                                             _%$%e208914209219%_
                                             _%$%hd208915209222%_
                                             _%$%tl208916209224%_
                                             _%$%e208917209227%_
                                             _%$%hd208918209230%_
                                             _%$%tl208919209232%_))))
                                    (_%__match211193211194%_
                                     _%$%e208884209141%_
                                     _%$%hd208885209144%_
                                     _%$%tl208886209146%_
                                     _%$%e208896209171%_
                                     _%$%hd208897209174%_
                                     _%$%tl208898209176%_
                                     _%$%e208899209179%_
                                     _%$%hd208900209182%_
                                     _%$%tl208901209184%_
                                     _%$%e208902209187%_
                                     _%$%hd208903209190%_
                                     _%$%tl208904209192%_
                                     _%$%e208905209195%_
                                     _%$%hd208906209198%_
                                     _%$%tl208907209200%_
                                     _%$%e208908209203%_
                                     _%$%hd208909209206%_
                                     _%$%tl208910209208%_
                                     _%$%e208911209211%_
                                     _%$%hd208912209214%_
                                     _%$%tl208913209216%_
                                     _%$%e208914209219%_
                                     _%$%hd208915209222%_
                                     _%$%tl208916209224%_
                                     _%$%e208917209227%_
                                     _%$%hd208918209230%_
                                     _%$%tl208919209232%_))
                                (_%__match211193211194%_
                                 _%$%e208884209141%_
                                 _%$%hd208885209144%_
                                 _%$%tl208886209146%_
                                 _%$%e208896209171%_
                                 _%$%hd208897209174%_
                                 _%$%tl208898209176%_
                                 _%$%e208899209179%_
                                 _%$%hd208900209182%_
                                 _%$%tl208901209184%_
                                 _%$%e208902209187%_
                                 _%$%hd208903209190%_
                                 _%$%tl208904209192%_
                                 _%$%e208905209195%_
                                 _%$%hd208906209198%_
                                 _%$%tl208907209200%_
                                 _%$%e208908209203%_
                                 _%$%hd208909209206%_
                                 _%$%tl208910209208%_
                                 _%$%e208911209211%_
                                 _%$%hd208912209214%_
                                 _%$%tl208913209216%_
                                 _%$%e208914209219%_
                                 _%$%hd208915209222%_
                                 _%$%tl208916209224%_
                                 _%$%e208917209227%_
                                 _%$%hd208918209230%_
                                 _%$%tl208919209232%_))
                            (_%__kont211096211097%_))))
                    (_%__kont211096211097%_))
                (_%__kont211096211097%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont211096211097%_))))
                                            (_%__kont211096211097%_))))
                                    (_%__kont211096211097%_))
                                (_%__kont211096211097%_))))
                        (_%__kont211096211097%_))
                    (_%__kont211096211097%_))
                (_%__kont211096211097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont211096211097%_))))
                                        (_%__kont211096211097%_))
                                    (_%__kont211096211097%_))
                                (_%__kont211096211097%_))))
                        (_%__kont211096211097%_))))
                (_%__kont211096211097%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop208890209154%_
                                     _%$%target208887209149%_
                                     '()))))
                               (_%__match211111211112%_
                                (lambda (_%$%e208836209397%_
                                         _%$%hd208837209400%_
                                         _%$%tl208838209402%_
                                         _%__splice211084211085%_
                                         _%$%target208839209405%_
                                         _%$%tl208841209407%_)
                                  (letrec ((_%$%loop208842209410%_
                                            (lambda (_%$%hd208840209413%_
                                                     _%$%arg208846209415%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208840209413%_))
                                                  (let ((_%$%e208843209417%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208840209413%_))))
                                                    (let ((_%$%lp-tl208845209422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208843209417%_)))
                                                          (_%$%lp-hd208844209420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208843209417%_))))
                                                      (_%$%loop208842209410%_
                                                       _%$%lp-tl208845209422%_
                                                       (cons _%$%lp-hd208844209420%_
                                                             _%$%arg208846209415%_))))
                                                  (let ((_%$%arg208847209425%_
                                                         (reverse _%$%arg208846209415%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208838209402%_))
                                                        (let ((_%$%e208848209427%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208838209402%_))))
                  (let ((_%$%tl208850209432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208848209427%_)))
                        (_%$%hd208849209430%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208848209427%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208849209430%_))
                        (let ((_%$%e208851209435%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208849209430%_))))
                          (let ((_%$%tl208853209440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208851209435%_)))
                                (_%$%hd208852209438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208851209435%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd208852209438%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd208852209438%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208853209440%_))
                                        (let ((_%$%e208854209443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208853209440%_))))
                                          (let ((_%$%tl208856209448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208854209443%_)))
                                                (_%$%hd208855209446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208854209443%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd208855209446%_))
                                                (let ((_%$%e208857209451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd208855209446%_))))
                                                  (let ((_%$%tl208859209456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208857209451%_)))
                                                        (_%$%hd208858209454%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208857209451%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd208858209454%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd208858209454%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl208859209456%_))
                        (let ((_%$%e208860209459%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl208859209456%_))))
                          (let ((_%$%tl208862209464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208860209459%_)))
                                (_%$%hd208861209462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208860209459%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208862209464%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl208856209448%_))
                                    (let ((_%__splice211086211087%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl208856209448%_
                                              '0))))
                                      (let ((_%$%tl208865209469%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211086211087%_
                                                '1)))
                                            (_%$%target208863209467%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211086211087%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl208865209469%_))
                                            (letrec ((_%$%loop208866209472%_
                                                      (lambda (_%$%hd208864209475%_
                                                               _%$%xarg208870209477%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd208864209475%_))
                                                            (let ((_%$%e208867209479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd208864209475%_))))
                      (let ((_%$%lp-tl208869209484%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208867209479%_)))
                            (_%$%lp-hd208868209482%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208867209479%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd208868209482%_))
                            (let ((_%$%e208872209487%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd208868209482%_))))
                              (let ((_%$%tl208874209492%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e208872209487%_)))
                                    (_%$%hd208873209490%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e208872209487%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd208873209490%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd208873209490%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl208874209492%_))
                                            (let ((_%$%e208875209495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl208874209492%_))))
                                              (let ((_%$%tl208877209500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208875209495%_)))
                                                    (_%$%hd208876209498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208875209495%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl208877209500%_))
                                                    (_%$%loop208866209472%_
                                                     _%$%lp-tl208869209484%_
                                                     (cons _%$%hd208876209498%_
                                                           _%$%xarg208870209477%_))
                                                    (_%__match211123211124%_
                                                     _%$%e208836209397%_
                                                     _%$%hd208837209400%_
                                                     _%$%tl208838209402%_
                                                     _%__splice211084211085%_
                                                     _%$%target208839209405%_
                                                     _%$%tl208841209407%_))))
                                            (_%__match211123211124%_
                                             _%$%e208836209397%_
                                             _%$%hd208837209400%_
                                             _%$%tl208838209402%_
                                             _%__splice211084211085%_
                                             _%$%target208839209405%_
                                             _%$%tl208841209407%_))
                                        (_%__match211123211124%_
                                         _%$%e208836209397%_
                                         _%$%hd208837209400%_
                                         _%$%tl208838209402%_
                                         _%__splice211084211085%_
                                         _%$%target208839209405%_
                                         _%$%tl208841209407%_))
                                    (_%__match211123211124%_
                                     _%$%e208836209397%_
                                     _%$%hd208837209400%_
                                     _%$%tl208838209402%_
                                     _%__splice211084211085%_
                                     _%$%target208839209405%_
                                     _%$%tl208841209407%_))))
                            (_%__match211123211124%_
                             _%$%e208836209397%_
                             _%$%hd208837209400%_
                             _%$%tl208838209402%_
                             _%__splice211084211085%_
                             _%$%target208839209405%_
                             _%$%tl208841209407%_))))
                    (let ((_%$%xarg208871209503%_
                           (reverse _%$%xarg208870209477%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl208850209432%_))
                          (let ((_%$%g208833209505%_ _%$%xarg208871209503%_)
                                (_%$%g208834209506%_ _%$%hd208861209462%_)
                                (_%$%g208835209507%_ _%$%arg208847209425%_))
                            (if (and (let ((__tmp212377
                                            (let ((__tmp212378
                                                   (lambda (_%$%g209535209538%_
                                                            _%$%g209536209540%_)
                                                     (cons _%$%g209535209538%_
                                                           _%$%g209536209540%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212378
                                               '()
                                               _%$%g208835209507%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp212377))
                                     (let ((__tmp212381
                                            (length (let ((__tmp212382
                                                           (lambda (_%$%g209542209545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209543209547%_)
                     (cons _%$%g209542209545%_ _%$%g209543209547%_))))
              (declare (not safe))
              (foldr__0 __tmp212382 '() _%$%g208835209507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp212379
                                            (length (let ((__tmp212380
                                                           (lambda (_%$%g209549209552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209550209554%_)
                     (cons _%$%g209549209552%_ _%$%g209550209554%_))))
              (declare (not safe))
              (foldr__0 __tmp212380 '() _%$%g208833209505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp212381 __tmp212379))
                                     (let ((__tmp212385
                                            (let ((__tmp212386
                                                   (lambda (_%$%g209556209559%_
                                                            _%$%g209557209561%_)
                                                     (cons _%$%g209556209559%_
                                                           _%$%g209557209561%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212386
                                               '()
                                               _%$%g208835209507%_)))
                                           (__tmp212383
                                            (let ((__tmp212384
                                                   (lambda (_%$%g209563209566%_
                                                            _%$%g209564209568%_)
                                                     (cons _%$%g209563209566%_
                                                           _%$%g209564209568%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212384
                                               '()
                                               _%$%g208833209505%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp212385
                                        __tmp212383))
                                     (not (let ((__tmp212389
                                                 (lambda (_%$%g209570209572%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g209570209572%_
                                                      _%$%g208834209506%_))))
                                                (__tmp212387
                                                 (let ((__tmp212388
                                                        (lambda (_%$%g209574209577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g209575209579%_)
                  (cons _%$%g209574209577%_ _%$%g209575209579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp212388
                                                    '()
                                                    _%$%g208835209507%_))))
                                            (declare (not safe))
                                            (__find __tmp212389 __tmp212387))))
                                (_%__kont211082211083%_
                                 _%$%g208833209505%_
                                 _%$%g208834209506%_
                                 _%$%g208835209507%_)
                                (_%__match211123211124%_
                                 _%$%e208836209397%_
                                 _%$%hd208837209400%_
                                 _%$%tl208838209402%_
                                 _%__splice211084211085%_
                                 _%$%target208839209405%_
                                 _%$%tl208841209407%_)))
                          (_%__match211123211124%_
                           _%$%e208836209397%_
                           _%$%hd208837209400%_
                           _%$%tl208838209402%_
                           _%__splice211084211085%_
                           _%$%target208839209405%_
                           _%$%tl208841209407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop208866209472%_
                                               _%$%target208863209467%_
                                               '()))
                                            (_%__match211123211124%_
                                             _%$%e208836209397%_
                                             _%$%hd208837209400%_
                                             _%$%tl208838209402%_
                                             _%__splice211084211085%_
                                             _%$%target208839209405%_
                                             _%$%tl208841209407%_))))
                                    (_%__match211123211124%_
                                     _%$%e208836209397%_
                                     _%$%hd208837209400%_
                                     _%$%tl208838209402%_
                                     _%__splice211084211085%_
                                     _%$%target208839209405%_
                                     _%$%tl208841209407%_))
                                (_%__match211123211124%_
                                 _%$%e208836209397%_
                                 _%$%hd208837209400%_
                                 _%$%tl208838209402%_
                                 _%__splice211084211085%_
                                 _%$%target208839209405%_
                                 _%$%tl208841209407%_))))
                        (_%__match211123211124%_
                         _%$%e208836209397%_
                         _%$%hd208837209400%_
                         _%$%tl208838209402%_
                         _%__splice211084211085%_
                         _%$%target208839209405%_
                         _%$%tl208841209407%_))
                    (_%__match211123211124%_
                     _%$%e208836209397%_
                     _%$%hd208837209400%_
                     _%$%tl208838209402%_
                     _%__splice211084211085%_
                     _%$%target208839209405%_
                     _%$%tl208841209407%_))
                (_%__match211123211124%_
                 _%$%e208836209397%_
                 _%$%hd208837209400%_
                 _%$%tl208838209402%_
                 _%__splice211084211085%_
                 _%$%target208839209405%_
                 _%$%tl208841209407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match211123211124%_
                                                 _%$%e208836209397%_
                                                 _%$%hd208837209400%_
                                                 _%$%tl208838209402%_
                                                 _%__splice211084211085%_
                                                 _%$%target208839209405%_
                                                 _%$%tl208841209407%_))))
                                        (_%__match211123211124%_
                                         _%$%e208836209397%_
                                         _%$%hd208837209400%_
                                         _%$%tl208838209402%_
                                         _%__splice211084211085%_
                                         _%$%target208839209405%_
                                         _%$%tl208841209407%_))
                                    (_%__match211123211124%_
                                     _%$%e208836209397%_
                                     _%$%hd208837209400%_
                                     _%$%tl208838209402%_
                                     _%__splice211084211085%_
                                     _%$%target208839209405%_
                                     _%$%tl208841209407%_))
                                (_%__match211123211124%_
                                 _%$%e208836209397%_
                                 _%$%hd208837209400%_
                                 _%$%tl208838209402%_
                                 _%__splice211084211085%_
                                 _%$%target208839209405%_
                                 _%$%tl208841209407%_))))
                        (_%__match211123211124%_
                         _%$%e208836209397%_
                         _%$%hd208837209400%_
                         _%$%tl208838209402%_
                         _%__splice211084211085%_
                         _%$%target208839209405%_
                         _%$%tl208841209407%_))))
                (_%__match211123211124%_
                 _%$%e208836209397%_
                 _%$%hd208837209400%_
                 _%$%tl208838209402%_
                 _%__splice211084211085%_
                 _%$%target208839209405%_
                 _%$%tl208841209407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop208842209410%_
                                     _%$%target208839209405%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211080211081%_))
                              (let ((_%$%e208836209397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211080211081%_))))
                                (let ((_%$%tl208838209402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208836209397%_)))
                                      (_%$%hd208837209400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208836209397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd208837209400%_))
                                      (let ((_%__splice211084211085%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd208837209400%_
                                                '0))))
                                        (let ((_%$%tl208841209407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211084211085%_
                                                  '1)))
                                              (_%$%target208839209405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211084211085%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208841209407%_))
                                              (_%__match211111211112%_
                                               _%$%e208836209397%_
                                               _%$%hd208837209400%_
                                               _%$%tl208838209402%_
                                               _%__splice211084211085%_
                                               _%$%target208839209405%_
                                               _%$%tl208841209407%_)
                                              (_%__match211123211124%_
                                               _%$%e208836209397%_
                                               _%$%hd208837209400%_
                                               _%$%tl208838209402%_
                                               _%__splice211084211085%_
                                               _%$%target208839209405%_
                                               _%$%tl208841209407%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl208838209402%_))
                                          (let ((_%$%e208951209008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl208838209402%_))))
                                            (let ((_%$%tl208953209013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e208951209008%_)))
                                                  (_%$%hd208952209011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e208951209008%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208952209011%_))
                                                  (let ((_%$%e208954209016%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208952209011%_))))
                                                    (let ((_%$%tl208956209021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208954209016%_)))
                                                          (_%$%hd208955209019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208954209016%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd208955209019%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd208955209019%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl208956209021%_))
                          (let ((_%$%e208957209024%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl208956209021%_))))
                            (let ((_%$%tl208959209029%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208957209024%_)))
                                  (_%$%hd208958209027%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208957209024%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd208958209027%_))
                                  (let ((_%$%e208960209032%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd208958209027%_))))
                                    (let ((_%$%tl208962209037%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208960209032%_)))
                                          (_%$%hd208961209035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208960209032%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd208961209035%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd208961209035%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208962209037%_))
                                                  (let ((_%$%e208963209040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208962209037%_))))
                                                    (let ((_%$%tl208965209045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208963209040%_)))
                                                          (_%$%hd208964209043%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208963209040%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208965209045%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl208959209029%_))
                      (let ((_%$%e208966209048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl208959209029%_))))
                        (let ((_%$%tl208968209053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208966209048%_)))
                              (_%$%hd208967209051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208966209048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd208967209051%_))
                              (let ((_%$%e208969209056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd208967209051%_))))
                                (let ((_%$%tl208971209061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208969209056%_)))
                                      (_%$%hd208970209059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208969209056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208970209059%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208970209059%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208971209061%_))
                                              (let ((_%$%e208972209064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208971209061%_))))
                                                (let ((_%$%tl208974209069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208972209064%_)))
                                                      (_%$%hd208973209067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208972209064%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208974209069%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl208968209053%_))
                                                          (let ((_%$%e208975209072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl208968209053%_))))
                    (let ((_%$%tl208977209077%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208975209072%_)))
                          (_%$%hd208976209075%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208975209072%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd208976209075%_))
                          (let ((_%$%e208978209080%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd208976209075%_))))
                            (let ((_%$%tl208980209085%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208978209080%_)))
                                  (_%$%hd208979209083%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208978209080%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd208979209083%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd208979209083%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl208980209085%_))
                                          (let ((_%$%e208981209088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl208980209085%_))))
                                            (let ((_%$%tl208983209093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e208981209088%_)))
                                                  (_%$%hd208982209091%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e208981209088%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl208983209093%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208977209077%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208953209013%_))
                                                          (_%__match211221211222%_
                                                           _%$%e208836209397%_
                                                           _%$%hd208837209400%_
                                                           _%$%tl208838209402%_
                                                           _%$%e208951209008%_
                                                           _%$%hd208952209011%_
                                                           _%$%tl208953209013%_
                                                           _%$%e208954209016%_
                                                           _%$%hd208955209019%_
                                                           _%$%tl208956209021%_
                                                           _%$%e208957209024%_
                                                           _%$%hd208958209027%_
                                                           _%$%tl208959209029%_
                                                           _%$%e208960209032%_
                                                           _%$%hd208961209035%_
                                                           _%$%tl208962209037%_
                                                           _%$%e208963209040%_
                                                           _%$%hd208964209043%_
                                                           _%$%tl208965209045%_
                                                           _%$%e208966209048%_
                                                           _%$%hd208967209051%_
                                                           _%$%tl208968209053%_
                                                           _%$%e208969209056%_
                                                           _%$%hd208970209059%_
                                                           _%$%tl208971209061%_
                                                           _%$%e208972209064%_
                                                           _%$%hd208973209067%_
                                                           _%$%tl208974209069%_
                                                           _%$%e208975209072%_
                                                           _%$%hd208976209075%_
                                                           _%$%tl208977209077%_
                                                           _%$%e208978209080%_
                                                           _%$%hd208979209083%_
                                                           _%$%tl208980209085%_
                                                           _%$%e208981209088%_
                                                           _%$%hd208982209091%_
                                                           _%$%tl208983209093%_)
                                                          (_%__kont211096211097%_))
                                                      (_%__kont211096211097%_))
                                                  (_%__kont211096211097%_))))
                                          (_%__kont211096211097%_))
                                      (_%__kont211096211097%_))
                                  (_%__kont211096211097%_))))
                          (_%__kont211096211097%_))))
                  (_%__kont211096211097%_))
              (_%__kont211096211097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont211096211097%_))
                                          (_%__kont211096211097%_))
                                      (_%__kont211096211097%_))))
                              (_%__kont211096211097%_))))
                      (_%__kont211096211097%_))
                  (_%__kont211096211097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont211096211097%_))
                                              (_%__kont211096211097%_))
                                          (_%__kont211096211097%_))))
                                  (_%__kont211096211097%_))))
                          (_%__kont211096211097%_))
                      (_%__kont211096211097%_))
                  (_%__kont211096211097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont211096211097%_))))
                                          (_%__kont211096211097%_)))))
                              (_%__kont211096211097%_)))))))
                 (_%dispatch-case-e208146%_
                  (lambda (_%hd208293%_ _%body208294%_)
                    (let* ((_%form208296%_
                            (cons _%hd208293%_ (cons _%body208294%_ '())))
                           (_%__stx211224211225%_ _%form208296%_)
                           (_%$%g208300208424%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx211224211225%_)))))
                      (let ((_%__kont211226211227%_
                             (lambda (_%$%g208302208789%_
                                      _%$%g208303208790%_
                                      _%$%g208304208791%_)
                               (let ((__tmp212390
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g208303208790%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self208142%_
                                  __tmp212390))))
                            (_%__kont211232211233%_
                             (lambda (_%$%g208347208641%_
                                      _%$%g208348208642%_
                                      _%$%g208349208643%_
                                      _%$%g208350208644%_)
                               (let ((__tmp212391
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g208347208641%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self208142%_
                                  __tmp212391))))
                            (_%__kont211236211237%_
                             (lambda (_%$%g208387208509%_
                                      _%$%g208388208510%_
                                      _%$%g208389208511%_)
                               (let ((__tmp212392
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g208387208509%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self208142%_
                                  __tmp212392)))))
                        (let* ((_%__match211333211334%_
                                (lambda (_%$%e208390208429%_
                                         _%$%hd208391208432%_
                                         _%$%tl208392208434%_
                                         _%$%e208393208437%_
                                         _%$%hd208394208440%_
                                         _%$%tl208395208442%_
                                         _%$%e208396208445%_
                                         _%$%hd208397208448%_
                                         _%$%tl208398208450%_
                                         _%$%e208399208453%_
                                         _%$%hd208400208456%_
                                         _%$%tl208401208458%_
                                         _%$%e208402208461%_
                                         _%$%hd208403208464%_
                                         _%$%tl208404208466%_
                                         _%$%e208405208469%_
                                         _%$%hd208406208472%_
                                         _%$%tl208407208474%_
                                         _%$%e208408208477%_
                                         _%$%hd208409208480%_
                                         _%$%tl208410208482%_
                                         _%$%e208411208485%_
                                         _%$%hd208412208488%_
                                         _%$%tl208413208490%_
                                         _%$%e208414208493%_
                                         _%$%hd208415208496%_
                                         _%$%tl208416208498%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208410208482%_))
                                      (let ((_%$%e208417208501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208410208482%_))))
                                        (let ((_%$%tl208419208506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208417208501%_)))
                                              (_%$%hd208418208504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208417208501%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208419208506%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl208395208442%_))
                                                  (_%__kont211236211237%_
                                                   _%$%hd208415208496%_
                                                   _%$%hd208406208472%_
                                                   _%$%hd208391208432%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g208300208424%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208300208424%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g208300208424%_)))))
                               (_%__match211263211264%_
                                (lambda (_%$%e208351208547%_
                                         _%$%hd208352208550%_
                                         _%$%tl208353208552%_
                                         _%__splice211234211235%_
                                         _%$%target208354208555%_
                                         _%$%tl208356208557%_)
                                  (letrec ((_%$%loop208357208560%_
                                            (lambda (_%$%hd208355208563%_
                                                     _%$%arg208361208565%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208355208563%_))
                                                  (let ((_%$%e208358208567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208355208563%_))))
                                                    (let ((_%$%lp-tl208360208572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208358208567%_)))
                                                          (_%$%lp-hd208359208570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208358208567%_))))
                                                      (_%$%loop208357208560%_
                                                       _%$%lp-tl208360208572%_
                                                       (cons _%$%lp-hd208359208570%_
                                                             _%$%arg208361208565%_))))
                                                  (let ((_%$%arg208362208575%_
                                                         (reverse _%$%arg208361208565%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208353208552%_))
                                                        (let ((_%$%e208363208577%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208353208552%_))))
                  (let ((_%$%tl208365208582%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208363208577%_)))
                        (_%$%hd208364208580%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208363208577%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208364208580%_))
                        (let ((_%$%e208366208585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208364208580%_))))
                          (let ((_%$%tl208368208590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208366208585%_)))
                                (_%$%hd208367208588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208366208585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd208367208588%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd208367208588%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208368208590%_))
                                        (let ((_%$%e208369208593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208368208590%_))))
                                          (let ((_%$%tl208371208598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208369208593%_)))
                                                (_%$%hd208370208596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208369208593%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd208370208596%_))
                                                (let ((_%$%e208372208601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd208370208596%_))))
                                                  (let ((_%$%tl208374208606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208372208601%_)))
                                                        (_%$%hd208373208604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208372208601%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd208373208604%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd208373208604%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl208374208606%_))
                        (let ((_%$%e208375208609%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl208374208606%_))))
                          (let ((_%$%tl208377208614%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208375208609%_)))
                                (_%$%hd208376208612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208375208609%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208377208614%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl208371208598%_))
                                    (let ((_%$%e208378208617%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl208371208598%_))))
                                      (let ((_%$%tl208380208622%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e208378208617%_)))
                                            (_%$%hd208379208620%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e208378208617%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd208379208620%_))
                                            (let ((_%$%e208381208625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd208379208620%_))))
                                              (let ((_%$%tl208383208630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208381208625%_)))
                                                    (_%$%hd208382208628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208381208625%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd208382208628%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd208382208628%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl208383208630%_))
                                                            (let ((_%$%e208384208633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl208383208630%_))))
                      (let ((_%$%tl208386208638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208384208633%_)))
                            (_%$%hd208385208636%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208384208633%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl208386208638%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208365208582%_))
                                (_%__kont211232211233%_
                                 _%$%hd208385208636%_
                                 _%$%hd208376208612%_
                                 _%$%tl208356208557%_
                                 _%$%arg208362208575%_)
                                (_%__match211333211334%_
                                 _%$%e208351208547%_
                                 _%$%hd208352208550%_
                                 _%$%tl208353208552%_
                                 _%$%e208363208577%_
                                 _%$%hd208364208580%_
                                 _%$%tl208365208582%_
                                 _%$%e208366208585%_
                                 _%$%hd208367208588%_
                                 _%$%tl208368208590%_
                                 _%$%e208369208593%_
                                 _%$%hd208370208596%_
                                 _%$%tl208371208598%_
                                 _%$%e208372208601%_
                                 _%$%hd208373208604%_
                                 _%$%tl208374208606%_
                                 _%$%e208375208609%_
                                 _%$%hd208376208612%_
                                 _%$%tl208377208614%_
                                 _%$%e208378208617%_
                                 _%$%hd208379208620%_
                                 _%$%tl208380208622%_
                                 _%$%e208381208625%_
                                 _%$%hd208382208628%_
                                 _%$%tl208383208630%_
                                 _%$%e208384208633%_
                                 _%$%hd208385208636%_
                                 _%$%tl208386208638%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g208300208424%_)))))
                    (let () (declare (not safe)) (_%$%g208300208424%_)))
                (let () (declare (not safe)) (_%$%g208300208424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g208300208424%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g208300208424%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g208300208424%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g208300208424%_)))))
                        (let () (declare (not safe)) (_%$%g208300208424%_)))
                    (let () (declare (not safe)) (_%$%g208300208424%_)))
                (let () (declare (not safe)) (_%$%g208300208424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g208300208424%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g208300208424%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g208300208424%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g208300208424%_)))))
                        (let () (declare (not safe)) (_%$%g208300208424%_)))))
                (let () (declare (not safe)) (_%$%g208300208424%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop208357208560%_
                                     _%$%target208354208555%_
                                     '()))))
                               (_%__match211251211252%_
                                (lambda (_%$%e208305208681%_
                                         _%$%hd208306208684%_
                                         _%$%tl208307208686%_
                                         _%__splice211228211229%_
                                         _%$%target208308208689%_
                                         _%$%tl208310208691%_)
                                  (letrec ((_%$%loop208311208694%_
                                            (lambda (_%$%hd208309208697%_
                                                     _%$%arg208315208699%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208309208697%_))
                                                  (let ((_%$%e208312208701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208309208697%_))))
                                                    (let ((_%$%lp-tl208314208706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208312208701%_)))
                                                          (_%$%lp-hd208313208704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208312208701%_))))
                                                      (_%$%loop208311208694%_
                                                       _%$%lp-tl208314208706%_
                                                       (cons _%$%lp-hd208313208704%_
                                                             _%$%arg208315208699%_))))
                                                  (let ((_%$%arg208316208709%_
                                                         (reverse _%$%arg208315208699%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208307208686%_))
                                                        (let ((_%$%e208317208711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208307208686%_))))
                  (let ((_%$%tl208319208716%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208317208711%_)))
                        (_%$%hd208318208714%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208317208711%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208318208714%_))
                        (let ((_%$%e208320208719%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208318208714%_))))
                          (let ((_%$%tl208322208724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208320208719%_)))
                                (_%$%hd208321208722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208320208719%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd208321208722%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd208321208722%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208322208724%_))
                                        (let ((_%$%e208323208727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208322208724%_))))
                                          (let ((_%$%tl208325208732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208323208727%_)))
                                                (_%$%hd208324208730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208323208727%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd208324208730%_))
                                                (let ((_%$%e208326208735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd208324208730%_))))
                                                  (let ((_%$%tl208328208740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208326208735%_)))
                                                        (_%$%hd208327208738%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208326208735%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd208327208738%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd208327208738%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl208328208740%_))
                        (let ((_%$%e208329208743%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl208328208740%_))))
                          (let ((_%$%tl208331208748%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208329208743%_)))
                                (_%$%hd208330208746%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208329208743%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208331208748%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl208325208732%_))
                                    (let ((_%__splice211230211231%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl208325208732%_
                                              '0))))
                                      (let ((_%$%tl208334208753%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211230211231%_
                                                '1)))
                                            (_%$%target208332208751%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211230211231%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl208334208753%_))
                                            (letrec ((_%$%loop208335208756%_
                                                      (lambda (_%$%hd208333208759%_
                                                               _%$%xarg208339208761%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd208333208759%_))
                                                            (let ((_%$%e208336208763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd208333208759%_))))
                      (let ((_%$%lp-tl208338208768%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208336208763%_)))
                            (_%$%lp-hd208337208766%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208336208763%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd208337208766%_))
                            (let ((_%$%e208341208771%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd208337208766%_))))
                              (let ((_%$%tl208343208776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e208341208771%_)))
                                    (_%$%hd208342208774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e208341208771%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd208342208774%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd208342208774%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl208343208776%_))
                                            (let ((_%$%e208344208779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl208343208776%_))))
                                              (let ((_%$%tl208346208784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208344208779%_)))
                                                    (_%$%hd208345208782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208344208779%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl208346208784%_))
                                                    (_%$%loop208335208756%_
                                                     _%$%lp-tl208338208768%_
                                                     (cons _%$%hd208345208782%_
                                                           _%$%xarg208339208761%_))
                                                    (_%__match211263211264%_
                                                     _%$%e208305208681%_
                                                     _%$%hd208306208684%_
                                                     _%$%tl208307208686%_
                                                     _%__splice211228211229%_
                                                     _%$%target208308208689%_
                                                     _%$%tl208310208691%_))))
                                            (_%__match211263211264%_
                                             _%$%e208305208681%_
                                             _%$%hd208306208684%_
                                             _%$%tl208307208686%_
                                             _%__splice211228211229%_
                                             _%$%target208308208689%_
                                             _%$%tl208310208691%_))
                                        (_%__match211263211264%_
                                         _%$%e208305208681%_
                                         _%$%hd208306208684%_
                                         _%$%tl208307208686%_
                                         _%__splice211228211229%_
                                         _%$%target208308208689%_
                                         _%$%tl208310208691%_))
                                    (_%__match211263211264%_
                                     _%$%e208305208681%_
                                     _%$%hd208306208684%_
                                     _%$%tl208307208686%_
                                     _%__splice211228211229%_
                                     _%$%target208308208689%_
                                     _%$%tl208310208691%_))))
                            (_%__match211263211264%_
                             _%$%e208305208681%_
                             _%$%hd208306208684%_
                             _%$%tl208307208686%_
                             _%__splice211228211229%_
                             _%$%target208308208689%_
                             _%$%tl208310208691%_))))
                    (let ((_%$%xarg208340208787%_
                           (reverse _%$%xarg208339208761%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl208319208716%_))
                          (_%__kont211226211227%_
                           _%$%xarg208340208787%_
                           _%$%hd208330208746%_
                           _%$%arg208316208709%_)
                          (_%__match211263211264%_
                           _%$%e208305208681%_
                           _%$%hd208306208684%_
                           _%$%tl208307208686%_
                           _%__splice211228211229%_
                           _%$%target208308208689%_
                           _%$%tl208310208691%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop208335208756%_
                                               _%$%target208332208751%_
                                               '()))
                                            (_%__match211263211264%_
                                             _%$%e208305208681%_
                                             _%$%hd208306208684%_
                                             _%$%tl208307208686%_
                                             _%__splice211228211229%_
                                             _%$%target208308208689%_
                                             _%$%tl208310208691%_))))
                                    (_%__match211263211264%_
                                     _%$%e208305208681%_
                                     _%$%hd208306208684%_
                                     _%$%tl208307208686%_
                                     _%__splice211228211229%_
                                     _%$%target208308208689%_
                                     _%$%tl208310208691%_))
                                (_%__match211263211264%_
                                 _%$%e208305208681%_
                                 _%$%hd208306208684%_
                                 _%$%tl208307208686%_
                                 _%__splice211228211229%_
                                 _%$%target208308208689%_
                                 _%$%tl208310208691%_))))
                        (_%__match211263211264%_
                         _%$%e208305208681%_
                         _%$%hd208306208684%_
                         _%$%tl208307208686%_
                         _%__splice211228211229%_
                         _%$%target208308208689%_
                         _%$%tl208310208691%_))
                    (_%__match211263211264%_
                     _%$%e208305208681%_
                     _%$%hd208306208684%_
                     _%$%tl208307208686%_
                     _%__splice211228211229%_
                     _%$%target208308208689%_
                     _%$%tl208310208691%_))
                (_%__match211263211264%_
                 _%$%e208305208681%_
                 _%$%hd208306208684%_
                 _%$%tl208307208686%_
                 _%__splice211228211229%_
                 _%$%target208308208689%_
                 _%$%tl208310208691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match211263211264%_
                                                 _%$%e208305208681%_
                                                 _%$%hd208306208684%_
                                                 _%$%tl208307208686%_
                                                 _%__splice211228211229%_
                                                 _%$%target208308208689%_
                                                 _%$%tl208310208691%_))))
                                        (_%__match211263211264%_
                                         _%$%e208305208681%_
                                         _%$%hd208306208684%_
                                         _%$%tl208307208686%_
                                         _%__splice211228211229%_
                                         _%$%target208308208689%_
                                         _%$%tl208310208691%_))
                                    (_%__match211263211264%_
                                     _%$%e208305208681%_
                                     _%$%hd208306208684%_
                                     _%$%tl208307208686%_
                                     _%__splice211228211229%_
                                     _%$%target208308208689%_
                                     _%$%tl208310208691%_))
                                (_%__match211263211264%_
                                 _%$%e208305208681%_
                                 _%$%hd208306208684%_
                                 _%$%tl208307208686%_
                                 _%__splice211228211229%_
                                 _%$%target208308208689%_
                                 _%$%tl208310208691%_))))
                        (_%__match211263211264%_
                         _%$%e208305208681%_
                         _%$%hd208306208684%_
                         _%$%tl208307208686%_
                         _%__splice211228211229%_
                         _%$%target208308208689%_
                         _%$%tl208310208691%_))))
                (_%__match211263211264%_
                 _%$%e208305208681%_
                 _%$%hd208306208684%_
                 _%$%tl208307208686%_
                 _%__splice211228211229%_
                 _%$%target208308208689%_
                 _%$%tl208310208691%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop208311208694%_
                                     _%$%target208308208689%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211224211225%_))
                              (let ((_%$%e208305208681%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211224211225%_))))
                                (let ((_%$%tl208307208686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208305208681%_)))
                                      (_%$%hd208306208684%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208305208681%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd208306208684%_))
                                      (let ((_%__splice211228211229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd208306208684%_
                                                '0))))
                                        (let ((_%$%tl208310208691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211228211229%_
                                                  '1)))
                                              (_%$%target208308208689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211228211229%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208310208691%_))
                                              (_%__match211251211252%_
                                               _%$%e208305208681%_
                                               _%$%hd208306208684%_
                                               _%$%tl208307208686%_
                                               _%__splice211228211229%_
                                               _%$%target208308208689%_
                                               _%$%tl208310208691%_)
                                              (_%__match211263211264%_
                                               _%$%e208305208681%_
                                               _%$%hd208306208684%_
                                               _%$%tl208307208686%_
                                               _%__splice211228211229%_
                                               _%$%target208308208689%_
                                               _%$%tl208310208691%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl208307208686%_))
                                          (let ((_%$%e208393208437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl208307208686%_))))
                                            (let ((_%$%tl208395208442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e208393208437%_)))
                                                  (_%$%hd208394208440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e208393208437%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208394208440%_))
                                                  (let ((_%$%e208396208445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208394208440%_))))
                                                    (let ((_%$%tl208398208450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208396208445%_)))
                                                          (_%$%hd208397208448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208396208445%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd208397208448%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd208397208448%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl208398208450%_))
                          (let ((_%$%e208399208453%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl208398208450%_))))
                            (let ((_%$%tl208401208458%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208399208453%_)))
                                  (_%$%hd208400208456%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208399208453%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd208400208456%_))
                                  (let ((_%$%e208402208461%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd208400208456%_))))
                                    (let ((_%$%tl208404208466%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208402208461%_)))
                                          (_%$%hd208403208464%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208402208461%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd208403208464%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd208403208464%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208404208466%_))
                                                  (let ((_%$%e208405208469%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208404208466%_))))
                                                    (let ((_%$%tl208407208474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208405208469%_)))
                                                          (_%$%hd208406208472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208405208469%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208407208474%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl208401208458%_))
                      (let ((_%$%e208408208477%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl208401208458%_))))
                        (let ((_%$%tl208410208482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208408208477%_)))
                              (_%$%hd208409208480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208408208477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd208409208480%_))
                              (let ((_%$%e208411208485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd208409208480%_))))
                                (let ((_%$%tl208413208490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208411208485%_)))
                                      (_%$%hd208412208488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208411208485%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208412208488%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208412208488%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208413208490%_))
                                              (let ((_%$%e208414208493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208413208490%_))))
                                                (let ((_%$%tl208416208498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208414208493%_)))
                                                      (_%$%hd208415208496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208414208493%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208416208498%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl208410208482%_))
                                                          (let ((_%$%e208417208501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl208410208482%_))))
                    (let ((_%$%tl208419208506%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208417208501%_)))
                          (_%$%hd208418208504%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208417208501%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl208419208506%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl208395208442%_))
                              (_%__kont211236211237%_
                               _%$%hd208415208496%_
                               _%$%hd208406208472%_
                               _%$%hd208306208684%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g208300208424%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g208300208424%_)))))
                  (let () (declare (not safe)) (_%$%g208300208424%_)))
              (let () (declare (not safe)) (_%$%g208300208424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208300208424%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g208300208424%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g208300208424%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g208300208424%_)))))
                      (let () (declare (not safe)) (_%$%g208300208424%_)))
                  (let () (declare (not safe)) (_%$%g208300208424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g208300208424%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208300208424%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g208300208424%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g208300208424%_)))))
                          (let () (declare (not safe)) (_%$%g208300208424%_)))
                      (let () (declare (not safe)) (_%$%g208300208424%_)))
                  (let () (declare (not safe)) (_%$%g208300208424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g208300208424%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g208300208424%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g208300208424%_))))))))
                 (_%generate1208147%_
                  (lambda (_%args208278%_
                           _%arglen208279%_
                           _%hd208280%_
                           _%body208281%_)
                    (let* ((_%len208283%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd208280%_)))
                           (_%condition208288%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd208280%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen208279%_
                                                (cons _%len208283%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen208279%_ (cons _%len208283%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len208283%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen208279%_
                                                    (cons _%len208283%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen208279%_ (cons _%len208283%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch208290%_
                            (if (_%dispatch-case?208145%_
                                 _%hd208280%_
                                 _%body208281%_)
                                (_%dispatch-case-e208146%_
                                 _%hd208280%_
                                 _%body208281%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self208142%_
                                 _%hd208280%_
                                 _%body208281%_))))
                      (cons _%condition208288%_
                            (cons (cons 'apply
                                        (cons _%dispatch208290%_
                                              (cons _%args208278%_ '())))
                                  '()))))))
          (let* ((_%$%g208149208177%_
                  (lambda (_%$%g208150208174%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208150208174%_))))
                 (_%$%g208148208275%_
                  (lambda (_%$%g208150208180%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208150208180%_))
                        (let ((_%$%e208153208182%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208150208180%_))))
                          (let ((_%$%hd208154208185%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208153208182%_)))
                                (_%$%tl208155208187%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208153208182%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl208155208187%_))
                                (let ((_g212393_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl208155208187%_
                                          '0))))
                                  (begin
                                    (let ((_g212394_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g212393_)
                                                 (##values-length _g212393_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g212394_ 2)))
                                          (error "Context expects 2 values"
                                                 _g212394_)))
                                    (let ((_%$%target208156208190%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212393_ 0)))
                                          (_%$%tl208158208192%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212393_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208158208192%_))
                                          (letrec ((_%$%loop208159208195%_
                                                    (lambda (_%$%hd208157208198%_
                                                             _%$%body208163208200%_
                                                             _%$%hd208164208201%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd208157208198%_))
                                                          (let ((_%$%e208160208203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd208157208198%_))))
                    (let ((_%$%lp-hd208161208206%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208160208203%_)))
                          (_%$%lp-tl208162208208%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208160208203%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd208161208206%_))
                          (let ((_%$%e208167208211%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd208161208206%_))))
                            (let ((_%$%hd208168208214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208167208211%_)))
                                  (_%$%tl208169208216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208167208211%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl208169208216%_))
                                  (let ((_%$%e208170208219%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl208169208216%_))))
                                    (let ((_%$%hd208171208222%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208170208219%_)))
                                          (_%$%tl208172208224%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208170208219%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208172208224%_))
                                          (_%$%loop208159208195%_
                                           _%$%lp-tl208162208208%_
                                           (cons _%$%hd208171208222%_
                                                 _%$%body208163208200%_)
                                           (cons _%$%hd208168208214%_
                                                 _%$%hd208164208201%_))
                                          (_%$%g208149208177%_
                                           _%$%g208150208180%_))))
                                  (_%$%g208149208177%_ _%$%g208150208180%_))))
                          (_%$%g208149208177%_ _%$%g208150208180%_))))
                  (let ((_%$%body208165208227%_
                         (reverse _%$%body208163208200%_))
                        (_%$%hd208166208228%_ (reverse _%$%hd208164208201%_)))
                    (let ((_%args208250%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen208251%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name208252%_
                           (let ((_%$e208247%_
                                  (let ((__tmp212395
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp212395 _%stx208143%_))))
                             (if _%$e208247%_
                                 _%$e208247%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args208250%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen208251%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args208250%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args208250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp212399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name208252%_
                                                             (cons _%args208250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '()))
                              (__tmp212396
                               (map (lambda (_%$%g208253208256%_
                                             _%$%g208254208258%_)
                                      (_%generate1208147%_
                                       _%args208250%_
                                       _%arglen208251%_
                                       _%$%g208253208256%_
                                       _%$%g208254208258%_))
                                    (let ((__tmp212397
                                           (lambda (_%$%g208260208263%_
                                                    _%$%g208261208265%_)
                                             (cons _%$%g208260208263%_
                                                   _%$%g208261208265%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp212397
                                       '()
                                       _%$%hd208166208228%_))
                                    (let ((__tmp212398
                                           (lambda (_%$%g208267208270%_
                                                    _%$%g208268208272%_)
                                             (cons _%$%g208267208270%_
                                                   _%$%g208268208272%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp212398
                                       '()
                                       _%$%body208165208227%_)))))
                          (declare (not safe))
                          (foldr__0 cons __tmp212399 __tmp212396)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop208159208195%_
                                             _%$%target208156208190%_
                                             '()
                                             '()))
                                          (_%$%g208149208177%_
                                           _%$%g208150208180%_)))))
                                (_%$%g208149208177%_ _%$%g208150208180%_))))
                        (_%$%g208149208177%_ _%$%g208150208180%_)))))
            (_%$%g208148208275%_ _%stx208143%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self207379%_ _%stx207380%_ _%compiled-body?207381%_)
        (letrec ((_%generate-simple207383%_
                  (lambda (_%hd208127%_ _%body208128%_)
                    (_%coalesce-boolean207384%_
                     (_%simplify-let207385%_
                      (gxc#generate-runtime-simple-let
                       _%self207379%_
                       'let
                       _%hd208127%_
                       _%body208128%_
                       _%compiled-body?207381%_)))))
                 (_%coalesce-boolean207384%_
                  (lambda (_%code207988%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code207989208015%_ _%code207988%_)
                               (_%$%else207991208023%_
                                (lambda () _%code207988%_))
                               (_%$%K207993208060%_
                                (lambda (_%expr2208026%_
                                         _%expr1208027%_
                                         _%id208028%_)
                                  (let* ((_%$%expr2208029208037%_
                                          _%expr2208026%_)
                                         (_%$%else208031208045%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1208027%_
                                                        (cons _%expr2208026%_
                                                              '())))))
                                         (_%$%K208033208050%_
                                          (lambda (_%exprs208048%_)
                                            (cons 'or
                                                  (cons _%expr1208027%_
                                                        _%exprs208048%_)))))
                                    (if (pair? _%$%expr2208029208037%_)
                                        (let ((_%$%hd208034208053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2208029208037%_)))
                                              (_%$%tl208035208055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2208029208037%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd208034208053%_
                                                       'or))
                                              (let ((_%exprs208058%_
                                                     _%$%tl208035208055%_))
                                                (_%$%K208033208050%_
                                                 _%exprs208058%_))
                                              (_%$%else208031208045%_)))
                                        (_%$%else208031208045%_))))))
                          (if (pair? _%$%code207989208015%_)
                              (let ((_%$%hd207994208063%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code207989208015%_)))
                                    (_%$%tl207995208065%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code207989208015%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd207994208063%_ 'let))
                                    (if (pair? _%$%tl207995208065%_)
                                        (let ((_%$%hd207996208068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl207995208065%_)))
                                              (_%$%tl207997208070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl207995208065%_))))
                                          (if (pair? _%$%hd207996208068%_)
                                              (let ((_%$%hd208008208073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd207996208068%_)))
                                                    (_%$%tl208009208075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd207996208068%_))))
                                                (if (pair? _%$%hd208008208073%_)
                                                    (let ((_%$%hd208010208078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd208008208073%_)))
                                                          (_%$%tl208011208080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd208008208073%_))))
                                                      (let ((_%id208083%_
                                                             _%$%hd208010208078%_))
                                                        (if (pair? _%$%tl208011208080%_)
                                                            (let ((_%$%hd208012208085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl208011208080%_)))
                          (_%$%tl208013208087%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl208011208080%_))))
                      (let ((_%expr1208090%_ _%$%hd208012208085%_))
                        (if (null? _%$%tl208013208087%_)
                            (if (null? _%$%tl208009208075%_)
                                (if (pair? _%$%tl207997208070%_)
                                    (let ((_%$%hd207998208092%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl207997208070%_)))
                                          (_%$%tl207999208094%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl207997208070%_))))
                                      (if (pair? _%$%hd207998208092%_)
                                          (let ((_%$%hd208000208097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd207998208092%_)))
                                                (_%$%tl208001208099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd207998208092%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd208000208097%_
                                                         'if))
                                                (if (pair? _%$%tl208001208099%_)
                                                    (let ((_%$%hd208002208102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl208001208099%_)))
                                                          (_%$%tl208003208104%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl208001208099%_))))
                                                      (if (eq? _%$%hd208002208102%_
                                                               _%id208083%_)
                                                          (if (pair? _%$%tl208003208104%_)
                                                              (let ((_%$%hd208004208111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl208003208104%_)))
                            (_%$%tl208005208113%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl208003208104%_))))
                        (if (eq? _%$%hd208004208111%_ _%id208083%_)
                            (if (pair? _%$%tl208005208113%_)
                                (let ((_%$%hd208006208120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl208005208113%_)))
                                      (_%$%tl208007208122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl208005208113%_))))
                                  (let ((_%expr2208125%_ _%$%hd208006208120%_))
                                    (if (null? _%$%tl208007208122%_)
                                        (if (null? _%$%tl207999208094%_)
                                            (_%$%K207993208060%_
                                             _%expr2208125%_
                                             _%expr1208090%_
                                             _%id208083%_)
                                            (_%$%else207991208023%_))
                                        (_%$%else207991208023%_))))
                                (_%$%else207991208023%_))
                            (_%$%else207991208023%_)))
                      (_%$%else207991208023%_))
                  (_%$%else207991208023%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else207991208023%_))
                                                (_%$%else207991208023%_)))
                                          (_%$%else207991208023%_)))
                                    (_%$%else207991208023%_))
                                (_%$%else207991208023%_))
                            (_%$%else207991208023%_))))
                    (_%$%else207991208023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else207991208023%_)))
                                              (_%$%else207991208023%_)))
                                        (_%$%else207991208023%_))
                                    (_%$%else207991208023%_)))
                              (_%$%else207991208023%_)))
                        _%code207988%_)))
                 (_%simplify-let207385%_
                  (lambda (_%code207687%_)
                    (let* ((_%$%code207688207760%_ _%code207687%_)
                           (_%$%else207693207768%_ (lambda () _%code207687%_)))
                      (let ((_%$%K207752207968%_
                             (lambda (_%expr207966%_) _%expr207966%_))
                            (_%$%K207735207914%_
                             (lambda (_%body207910%_
                                      _%expr207911%_
                                      _%id207912%_)
                               (cons 'let
                                     (cons (cons (cons _%id207912%_
                                                       (cons _%expr207911%_
                                                             '()))
                                                 '())
                                           _%body207910%_))))
                            (_%$%K207712207838%_
                             (lambda (_%body207832%_
                                      _%expr2207833%_
                                      _%id2207834%_
                                      _%expr1207835%_
                                      _%id1207836%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1207836%_
                                                       (cons _%expr1207835%_
                                                             '()))
                                                 (cons (cons _%id2207834%_
                                                             (cons _%expr2207833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body207832%_))))
                            (_%$%K207695207777%_
                             (lambda (_%body207772%_
                                      _%bind207773%_
                                      _%expr1207774%_
                                      _%id1207775%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1207775%_
                                                       (cons _%expr1207774%_
                                                             '()))
                                                 _%bind207773%_)
                                           _%body207772%_)))))
                        (if (pair? _%$%code207688207760%_)
                            (let ((_%$%tl207754207973%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code207688207760%_)))
                                  (_%$%hd207753207971%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code207688207760%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd207753207971%_ 'let))
                                  (if (pair? _%$%tl207754207973%_)
                                      (let ((_%$%tl207756207978%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl207754207973%_)))
                                            (_%$%hd207755207976%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl207754207973%_))))
                                        (if (null? _%$%hd207755207976%_)
                                            (if (pair? _%$%tl207756207978%_)
                                                (let ((_%$%tl207758207983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl207756207978%_)))
                                                      (_%$%hd207757207981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl207756207978%_))))
                                                  (if (null? _%$%tl207758207983%_)
                                                      (let ((_%expr207986%_
                                                             _%$%hd207757207981%_))
                                                        (_%$%K207752207968%_
                                                         _%expr207986%_))
                                                      (_%$%else207693207768%_)))
                                                (_%$%else207693207768%_))
                                            (if (pair? _%$%hd207755207976%_)
                                                (let ((_%$%tl207747207929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd207755207976%_)))
                                                      (_%$%hd207746207927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd207755207976%_))))
                                                  (if (pair? _%$%hd207746207927%_)
                                                      (let ((_%$%tl207749207934%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd207746207927%_)))
                    (_%$%hd207748207932%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd207746207927%_))))
                (if (pair? _%$%tl207749207934%_)
                    (let ((_%$%tl207751207941%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl207749207934%_)))
                          (_%$%hd207750207939%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl207749207934%_))))
                      (if (null? _%$%tl207751207941%_)
                          (if (null? _%$%tl207747207929%_)
                              (if (pair? _%$%tl207756207978%_)
                                  (let ((_%$%tl207741207948%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl207756207978%_)))
                                        (_%$%hd207740207946%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl207756207978%_))))
                                    (if (pair? _%$%hd207740207946%_)
                                        (let ((_%$%tl207743207953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd207740207946%_)))
                                              (_%$%hd207742207951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd207740207946%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd207742207951%_
                                                       'let))
                                              (if (pair? _%$%tl207743207953%_)
                                                  (let ((_%$%tl207745207958%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl207743207953%_)))
                                                        (_%$%hd207744207956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl207743207953%_))))
                                                    (if (null? _%$%hd207744207956%_)
                                                        (if (null? _%$%tl207741207948%_)
                                                            (let ((_%id207937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd207748207932%_)
                          (_%expr207944%_ _%$%hd207750207939%_)
                          (_%body207961%_ _%$%tl207745207958%_))
                      (_%$%K207735207914%_
                       _%body207961%_
                       _%expr207944%_
                       _%id207937%_))
                    (_%$%else207693207768%_))
                (if (pair? _%$%hd207744207956%_)
                    (let ((_%$%tl207724207887%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd207744207956%_)))
                          (_%$%hd207723207885%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd207744207956%_))))
                      (if (pair? _%$%hd207723207885%_)
                          (let ((_%$%tl207726207892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd207723207885%_)))
                                (_%$%hd207725207890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd207723207885%_))))
                            (if (pair? _%$%tl207726207892%_)
                                (let ((_%$%tl207728207899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl207726207892%_)))
                                      (_%$%hd207727207897%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl207726207892%_))))
                                  (if (null? _%$%tl207728207899%_)
                                      (if (null? _%$%tl207724207887%_)
                                          (if (null? _%$%tl207741207948%_)
                                              (let ((_%id1207861%_
                                                     _%$%hd207748207932%_)
                                                    (_%expr1207868%_
                                                     _%$%hd207750207939%_)
                                                    (_%id2207895%_
                                                     _%$%hd207725207890%_)
                                                    (_%expr2207902%_
                                                     _%$%hd207727207897%_)
                                                    (_%body207904%_
                                                     _%$%tl207745207958%_))
                                                (_%$%K207712207838%_
                                                 _%body207904%_
                                                 _%expr2207902%_
                                                 _%id2207895%_
                                                 _%expr1207868%_
                                                 _%id1207861%_))
                                              (_%$%else207693207768%_))
                                          (_%$%else207693207768%_))
                                      (_%$%else207693207768%_)))
                                (_%$%else207693207768%_)))
                          (_%$%else207693207768%_)))
                    (_%$%else207693207768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else207693207768%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd207742207951%_
                                                           'let*))
                                                  (if (pair? _%$%tl207743207953%_)
                                                      (let ((_%$%tl207705207821%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl207743207953%_)))
                    (_%$%hd207704207819%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl207743207953%_))))
                (if (null? _%$%tl207741207948%_)
                    (let ((_%id1207800%_ _%$%hd207748207932%_)
                          (_%expr1207807%_ _%$%hd207750207939%_)
                          (_%bind207824%_ _%$%hd207704207819%_)
                          (_%body207826%_ _%$%tl207705207821%_))
                      (_%$%K207695207777%_
                       _%body207826%_
                       _%bind207824%_
                       _%expr1207807%_
                       _%id1207800%_))
                    (_%$%else207693207768%_)))
              (_%$%else207693207768%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else207693207768%_))))
                                        (_%$%else207693207768%_)))
                                  (_%$%else207693207768%_))
                              (_%$%else207693207768%_))
                          (_%$%else207693207768%_)))
                    (_%$%else207693207768%_)))
              (_%$%else207693207768%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else207693207768%_))))
                                      (_%$%else207693207768%_))
                                  (_%$%else207693207768%_)))
                            (_%$%else207693207768%_))))))
                 (_%generate-values207386%_
                  (lambda (_%hd207500%_ _%body207501%_)
                    (let _%lp207503%_ ((_%rest207505%_ _%hd207500%_)
                                       (_%bind207506%_ '())
                                       (_%check207507%_ '())
                                       (_%post207508%_ '()))
                      (let* ((_%__stx211553211554%_ _%rest207505%_)
                             (_%$%g207511207522%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx211553211554%_)))))
                        (let ((_%__kont211555211556%_
                               (lambda (_%$%g207513207549%_
                                        _%$%g207514207550%_)
                                 (let* ((_%__stx211509211510%_
                                         _%$%g207514207550%_)
                                        (_%$%g207565207590%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx211509211510%_)))))
                                   (let ((_%__kont211511211512%_
                                          (lambda (_%$%g207567207663%_
                                                   _%$%g207568207664%_)
                                            (let ((_%eid207678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g207568207664%_)))
                                                  (_%expr207679%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207379%_
                                                      _%$%g207567207663%_))))
                                              (_%lp207503%_
                                               _%$%g207513207549%_
                                               (cons (cons _%eid207678%_
                                                           (cons _%expr207679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind207506%_)
                                               _%check207507%_
                                               _%post207508%_))))
                                         (_%__kont211513211514%_
                                          (lambda (_%$%g207578207611%_
                                                   _%$%g207579207612%_)
                                            (let* ((_%vals207625%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values207627%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals207625%_
                                                     _%$%g207579207612%_
                                                     _%$%g207578207611%_))
                                                   (_%refs207629%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals207625%_
                                                     _%$%g207579207612%_))
                                                   (_%expr207631%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207379%_
                                                       _%$%g207578207611%_))))
                                              (_%lp207503%_
                                               _%$%g207513207549%_
                                               (cons (cons _%vals207625%_
                                                           (cons _%expr207631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind207506%_)
                                               (cons _%check-values207627%_
                                                     _%check207507%_)
                                               (cons _%refs207629%_
                                                     _%post207508%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx211509211510%_))
                                         (let ((_%$%e207569207639%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx211509211510%_))))
                                           (let ((_%$%tl207571207644%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e207569207639%_)))
                                                 (_%$%hd207570207642%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e207569207639%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd207570207642%_))
                                                 (let ((_%$%e207572207647%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd207570207642%_))))
                                                   (let ((_%$%tl207574207652%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e207572207647%_)))
                                                         (_%$%hd207573207650%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e207572207647%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl207574207652%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl207571207644%_))
                     (let ((_%$%e207575207655%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207571207644%_))))
                       (let ((_%$%tl207577207660%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207575207655%_)))
                             (_%$%hd207576207658%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207575207655%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207577207660%_))
                             (_%__kont211511211512%_
                              _%$%hd207576207658%_
                              _%$%hd207573207650%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207565207590%_)))))
                     (let () (declare (not safe)) (_%$%g207565207590%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl207571207644%_))
                     (let ((_%$%e207583207603%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207571207644%_))))
                       (let ((_%$%tl207585207608%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207583207603%_)))
                             (_%$%hd207584207606%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207583207603%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207585207608%_))
                             (_%__kont211513211514%_
                              _%$%hd207584207606%_
                              _%$%hd207570207642%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207565207590%_)))))
                     (let () (declare (not safe)) (_%$%g207565207590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl207571207644%_))
                                                     (let ((_%$%e207583207603%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl207571207644%_))))
                                                       (let ((_%$%tl207585207608%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e207583207603%_)))
                     (_%$%hd207584207606%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e207583207603%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl207585207608%_))
                     (_%__kont211513211514%_
                      _%$%hd207584207606%_
                      _%$%hd207570207642%_)
                     (let () (declare (not safe)) (_%$%g207565207590%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g207565207590%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g207565207590%_)))))))
                              (_%__kont211557211558%_
                               (lambda ()
                                 (let* ((_%body207529%_
                                         (if _%compiled-body?207381%_
                                             _%body207501%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self207379%_
                                                _%body207501%_))))
                                        (_%body207531%_
                                         (_%generate-values-post207387%_
                                          _%post207508%_
                                          _%body207529%_))
                                        (_%body207533%_
                                         (_%generate-values-check207388%_
                                          _%check207507%_
                                          _%body207531%_)))
                                   (cons 'let
                                         (cons (reverse _%bind207506%_)
                                               (cons _%body207533%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211553211554%_))
                              (let ((_%$%e207515207541%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211553211554%_))))
                                (let ((_%$%tl207517207546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207515207541%_)))
                                      (_%$%hd207516207544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207515207541%_))))
                                  (_%__kont211555211556%_
                                   _%$%tl207517207546%_
                                   _%$%hd207516207544%_)))
                              (_%__kont211557211558%_)))))))
                 (_%generate-values-post207387%_
                  (lambda (_%post207459%_ _%body207460%_)
                    (let _%lp207462%_ ((_%rest207464%_ _%post207459%_)
                                       (_%body207465%_ _%body207460%_))
                      (let* ((_%$%rest207466207474%_ _%rest207464%_)
                             (_%$%else207468207482%_
                              (lambda () _%body207465%_))
                             (_%$%K207470207488%_
                              (lambda (_%rest207485%_ _%bind207486%_)
                                (_%lp207462%_
                                 _%rest207485%_
                                 (cons 'let
                                       (cons _%bind207486%_
                                             (cons _%body207465%_ '())))))))
                        (if (pair? _%$%rest207466207474%_)
                            (let ((_%$%hd207471207491%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest207466207474%_)))
                                  (_%$%tl207472207493%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest207466207474%_))))
                              (let* ((_%bind207496%_ _%$%hd207471207491%_)
                                     (_%rest207498%_ _%$%tl207472207493%_))
                                (_%$%K207470207488%_
                                 _%rest207498%_
                                 _%bind207496%_)))
                            (_%$%else207468207482%_))))))
                 (_%generate-values-check207388%_
                  (lambda (_%check207456%_ _%body207457%_)
                    (cons 'begin
                          (let ((__tmp212401 (cons _%body207457%_ '()))
                                (__tmp212400 (reverse _%check207456%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp212401 __tmp212400))))))
          (let* ((_%$%g207390207407%_
                  (lambda (_%$%g207391207404%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207391207404%_))))
                 (_%$%g207389207453%_
                  (lambda (_%$%g207391207410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207391207410%_))
                        (let ((_%$%e207394207412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207391207410%_))))
                          (let ((_%$%hd207395207415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207394207412%_)))
                                (_%$%tl207396207417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207394207412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl207396207417%_))
                                (let ((_%$%e207397207420%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl207396207417%_))))
                                  (let ((_%$%hd207398207423%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e207397207420%_)))
                                        (_%$%tl207399207425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e207397207420%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl207399207425%_))
                                        (let ((_%$%e207400207428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl207399207425%_))))
                                          (let ((_%$%hd207401207431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207400207428%_)))
                                                (_%$%tl207402207433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207400207428%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl207402207433%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd207398207423%_)
                                                    (_%generate-simple207383%_
                                                     _%$%hd207398207423%_
                                                     _%$%hd207401207431%_)
                                                    (_%generate-values207386%_
                                                     _%$%hd207398207423%_
                                                     _%$%hd207401207431%_))
                                                (_%$%g207390207407%_
                                                 _%$%g207391207410%_))))
                                        (_%$%g207390207407%_
                                         _%$%g207391207410%_))))
                                (_%$%g207390207407%_ _%$%g207391207410%_))))
                        (_%$%g207390207407%_ _%$%g207391207410%_)))))
            (_%$%g207389207453%_ _%stx207380%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self208133%_ _%stx208134%_)
        (let ((_%compiled-body?208136%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self208133%_
           _%stx208134%_
           _%compiled-body?208136%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g212402_
        (let ((_g212403_ (let () (declare (not safe)) (##length _g212402_))))
          (cond ((let () (declare (not safe)) (##fx= _g212403_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g212402_))
                ((let () (declare (not safe)) (##fx= _g212403_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g212402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g212402_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals207273%_ _%hd207274%_)
        (let _%lp207276%_ ((_%rest207278%_ _%hd207274%_)
                           (_%k207279%_ '0)
                           (_%r207280%_ '()))
          (let* ((_%__stx211567211568%_ _%rest207278%_)
                 (_%$%g207285207302%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx211567211568%_)))))
            (let ((_%__kont211569211570%_
                   (lambda (_%$%g207287207365%_)
                     (_%lp207276%_
                      _%$%g207287207365%_
                      (let () (declare (not safe)) (##fx+ _%k207279%_ '1))
                      _%r207280%_)))
                  (_%__kont211571211572%_
                   (lambda (_%$%g207292207338%_ _%$%g207293207339%_)
                     (_%lp207276%_
                      _%$%g207292207338%_
                      (let () (declare (not safe)) (##fx+ _%k207279%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g207293207339%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals207273%_
                                         _%k207279%_
                                         _%$%g207292207338%_)
                                        '()))
                            _%r207280%_))))
                  (_%__kont211573211574%_
                   (lambda (_%$%g207297207314%_)
                     (let ((__tmp212404
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g207297207314%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals207273%_
                                               _%k207279%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp212404 _%r207280%_))))
                  (_%__kont211575211576%_ (lambda () (reverse _%r207280%_))))
              (let ((_%$%g207283207325%_
                     (lambda ()
                       (let ((_%$%g207297207314%_ _%__stx211567211568%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g207297207314%_))
                             (_%__kont211573211574%_ _%$%g207297207314%_)
                             (_%__kont211575211576%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx211567211568%_))
                    (let ((_%$%e207288207354%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx211567211568%_))))
                      (let ((_%$%tl207290207359%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207288207354%_)))
                            (_%$%hd207289207357%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207288207354%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd207289207357%_))
                            (let ((_%$%e207291207362%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd207289207357%_))))
                              (if (equal? _%$%e207291207362%_ '#f)
                                  (_%__kont211569211570%_ _%$%tl207290207359%_)
                                  (_%__kont211571211572%_
                                   _%$%tl207290207359%_
                                   _%$%hd207289207357%_)))
                            (_%__kont211571211572%_
                             _%$%tl207290207359%_
                             _%$%hd207289207357%_))))
                    (let () (declare (not safe)) (_%$%g207283207325%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self206952%_ _%stx206953%_ _%compiled-body?206954%_)
        (letrec ((_%generate-simple206956%_
                  (lambda (_%hd207258%_ _%body207259%_)
                    (gxc#generate-runtime-simple-let
                     _%self206952%_
                     'letrec
                     _%hd207258%_
                     _%body207259%_
                     _%compiled-body?206954%_)))
                 (_%generate-values206957%_
                  (lambda (_%hd207037%_ _%body207038%_)
                    (let _%lp207040%_ ((_%rest207042%_ _%hd207037%_)
                                       (_%bind207043%_ '())
                                       (_%check207044%_ '())
                                       (_%post207045%_ '()))
                      (let* ((_%__stx211641211642%_ _%rest207042%_)
                             (_%$%g207048207059%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx211641211642%_)))))
                        (let ((_%__kont211643211644%_
                               (lambda (_%$%g207050207086%_
                                        _%$%g207051207087%_)
                                 (let* ((_%__stx211597211598%_
                                         _%$%g207051207087%_)
                                        (_%$%g207102207127%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx211597211598%_)))))
                                   (let ((_%__kont211599211600%_
                                          (lambda (_%$%g207104207234%_
                                                   _%$%g207105207235%_)
                                            (let ((_%eid207249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g207105207235%_)))
                                                  (_%expr207250%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self206952%_
                                                      _%$%g207104207234%_))))
                                              (_%lp207040%_
                                               _%$%g207050207086%_
                                               (cons (cons _%eid207249%_
                                                           (cons _%expr207250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind207043%_)
                                               _%check207044%_
                                               _%post207045%_))))
                                         (_%__kont211601211602%_
                                          (lambda (_%$%g207115207148%_
                                                   _%$%g207116207149%_)
                                            (let* ((_%vals207162%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values207164%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals207162%_
                                                     _%$%g207116207149%_
                                                     _%$%g207115207148%_))
                                                   (_%refs207166%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals207162%_
                                                     _%$%g207116207149%_))
                                                   (_%expr207168%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self206952%_
                                                       _%$%g207115207148%_))))
                                              (_%lp207040%_
                                               _%$%g207050207086%_
                                               (let ((__tmp212406
                                                      (cons (cons _%vals207162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr207168%_ '()))
                    _%bind207043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp212405
                                                      (map (lambda (_%$%e207170207172%_)
                                                             (let* ((_%$%$%e207170207174207183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e207170207172%_)
                            (_%$%E207176207187%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e207170207174207183%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K207177207192%_
                             (lambda (_%eid207190%_)
                               (cons _%eid207190%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e207170207174207183%_)
                           (let ((_%$%hd207178207195%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e207170207174207183%_)))
                                 (_%$%tl207179207197%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e207170207174207183%_))))
                             (let ((_%eid207200%_ _%$%hd207178207195%_))
                               (if (pair? _%$%tl207179207197%_)
                                   (let ((_%$%tl207181207202%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl207179207197%_))))
                                     (if (null? _%$%tl207181207202%_)
                                         (_%$%K207177207192%_ _%eid207200%_)
                                         (_%$%E207176207187%_)))
                                   (_%$%E207176207187%_))))
                           (_%$%E207176207187%_))))
                   _%refs207166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp212406
                                                  __tmp212405))
                                               (cons _%check-values207164%_
                                                     _%check207044%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs207166%_
                                                  _%post207045%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx211597211598%_))
                                         (let ((_%$%e207106207210%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx211597211598%_))))
                                           (let ((_%$%tl207108207215%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e207106207210%_)))
                                                 (_%$%hd207107207213%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e207106207210%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd207107207213%_))
                                                 (let ((_%$%e207109207218%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd207107207213%_))))
                                                   (let ((_%$%tl207111207223%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e207109207218%_)))
                                                         (_%$%hd207110207221%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e207109207218%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl207111207223%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl207108207215%_))
                     (let ((_%$%e207112207226%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207108207215%_))))
                       (let ((_%$%tl207114207231%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207112207226%_)))
                             (_%$%hd207113207229%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207112207226%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207114207231%_))
                             (_%__kont211599211600%_
                              _%$%hd207113207229%_
                              _%$%hd207110207221%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207102207127%_)))))
                     (let () (declare (not safe)) (_%$%g207102207127%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl207108207215%_))
                     (let ((_%$%e207120207140%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207108207215%_))))
                       (let ((_%$%tl207122207145%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207120207140%_)))
                             (_%$%hd207121207143%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207120207140%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207122207145%_))
                             (_%__kont211601211602%_
                              _%$%hd207121207143%_
                              _%$%hd207107207213%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207102207127%_)))))
                     (let () (declare (not safe)) (_%$%g207102207127%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl207108207215%_))
                                                     (let ((_%$%e207120207140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl207108207215%_))))
                                                       (let ((_%$%tl207122207145%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e207120207140%_)))
                     (_%$%hd207121207143%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e207120207140%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl207122207145%_))
                     (_%__kont211601211602%_
                      _%$%hd207121207143%_
                      _%$%hd207107207213%_)
                     (let () (declare (not safe)) (_%$%g207102207127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g207102207127%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g207102207127%_)))))))
                              (_%__kont211645211646%_
                               (lambda ()
                                 (let* ((_%body207066%_
                                         (if _%compiled-body?206954%_
                                             _%body207038%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self206952%_
                                                _%body207038%_))))
                                        (_%body207068%_
                                         (_%generate-values-post206959%_
                                          _%post207045%_
                                          _%body207066%_))
                                        (_%body207070%_
                                         (_%generate-values-check206958%_
                                          _%check207044%_
                                          _%body207068%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind207043%_)
                                               (cons _%body207070%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211641211642%_))
                              (let ((_%$%e207052207078%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211641211642%_))))
                                (let ((_%$%tl207054207083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207052207078%_)))
                                      (_%$%hd207053207081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207052207078%_))))
                                  (_%__kont211643211644%_
                                   _%$%tl207054207083%_
                                   _%$%hd207053207081%_)))
                              (_%__kont211645211646%_)))))))
                 (_%generate-values-check206958%_
                  (lambda (_%check207034%_ _%body207035%_)
                    (cons 'begin
                          (let ((__tmp212408 (cons _%body207035%_ '()))
                                (__tmp212407 (reverse _%check207034%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp212408 __tmp212407)))))
                 (_%generate-values-post206959%_
                  (lambda (_%post207027%_ _%body207028%_)
                    (cons 'begin
                          (let ((__tmp212412 (cons _%body207028%_ '()))
                                (__tmp212409
                                 (let ((__tmp212411
                                        (lambda (_%$%g207029207031%_)
                                          (cons 'set! _%$%g207029207031%_)))
                                       (__tmp212410 (reverse _%post207027%_)))
                                   (declare (not safe))
                                   (##map __tmp212411 __tmp212410))))
                            (declare (not safe))
                            (foldr__0 cons __tmp212412 __tmp212409))))))
          (let* ((_%$%g206961206978%_
                  (lambda (_%$%g206962206975%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206962206975%_))))
                 (_%$%g206960207024%_
                  (lambda (_%$%g206962206981%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206962206981%_))
                        (let ((_%$%e206965206983%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206962206981%_))))
                          (let ((_%$%hd206966206986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206965206983%_)))
                                (_%$%tl206967206988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206965206983%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206967206988%_))
                                (let ((_%$%e206968206991%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206967206988%_))))
                                  (let ((_%$%hd206969206994%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206968206991%_)))
                                        (_%$%tl206970206996%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206968206991%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206970206996%_))
                                        (let ((_%$%e206971206999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206970206996%_))))
                                          (let ((_%$%hd206972207002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206971206999%_)))
                                                (_%$%tl206973207004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206971206999%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206973207004%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd206969206994%_)
                                                    (_%generate-simple206956%_
                                                     _%$%hd206969206994%_
                                                     _%$%hd206972207002%_)
                                                    (_%generate-values206957%_
                                                     _%$%hd206969206994%_
                                                     _%$%hd206972207002%_))
                                                (_%$%g206961206978%_
                                                 _%$%g206962206981%_))))
                                        (_%$%g206961206978%_
                                         _%$%g206962206981%_))))
                                (_%$%g206961206978%_ _%$%g206962206981%_))))
                        (_%$%g206961206978%_ _%$%g206962206981%_)))))
            (_%$%g206960207024%_ _%stx206953%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self207264%_ _%stx207265%_)
        (let ((_%compiled-body?207267%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self207264%_
           _%stx207265%_
           _%compiled-body?207267%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g212413_
        (let ((_g212414_ (let () (declare (not safe)) (##length _g212413_))))
          (cond ((let () (declare (not safe)) (##fx= _g212414_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g212413_))
                ((let () (declare (not safe)) (##fx= _g212414_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g212413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g212413_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self206533%_ _%stx206534%_)
        (letrec ((_%generate-values206536%_
                  (lambda (_%hd206779%_ _%body206780%_)
                    (let _%lp206782%_ ((_%rest206784%_ _%hd206779%_)
                                       (_%bind206785%_ '()))
                      (let* ((_%$%rest206786206794%_ _%rest206784%_)
                             (_%$%else206788206805%_
                              (lambda ()
                                (let ((_%bind206802%_ (reverse _%bind206785%_))
                                      (_%body206803%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self206533%_
                                          _%body206780%_))))
                                  (cons 'letrec*
                                        (cons _%bind206802%_
                                              (cons _%body206803%_ '()))))))
                             (_%$%K206790206939%_
                              (lambda (_%rest206808%_ _%hd-bind206809%_)
                                (let* ((_%__stx211655211656%_
                                        _%hd-bind206809%_)
                                       (_%$%g206812206837%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx211655211656%_)))))
                                  (let ((_%__kont211657211658%_
                                         (lambda (_%$%g206814206918%_
                                                  _%$%g206815206919%_)
                                           (let ((_%eid206933%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g206815206919%_)))
                                                 (_%expr206934%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self206533%_
                                                     _%$%g206814206918%_))))
                                             (_%lp206782%_
                                              _%rest206808%_
                                              (cons (cons _%eid206933%_
                                                          (cons _%expr206934%_
                                                                '()))
                                                    _%bind206785%_)))))
                                        (_%__kont211659211660%_
                                         (lambda (_%$%g206825206858%_
                                                  _%$%g206826206859%_)
                                           (let* ((_%vals206878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp206880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values206882%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp206880%_
                                                    _%$%g206826206859%_
                                                    _%$%g206825206858%_))
                                                  (_%refs206884%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals206878%_
                                                    _%$%g206826206859%_))
                                                  (_%expr206886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self206533%_
                                                      _%$%g206825206858%_))))
                                             (_%lp206782%_
                                              _%rest206808%_
                                              (let ((__tmp212415
                                                     (cons (cons _%vals206878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp206880%_
                                                       (cons _%expr206886%_
                                                             '()))
                                                 '())
                                           (cons _%check-values206882%_
                                                 (cons _%tmp206880%_ '()))))
                               '()))
                   _%bind206785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp212415
                                                 _%refs206884%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx211655211656%_))
                                        (let ((_%$%e206816206894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx211655211656%_))))
                                          (let ((_%$%tl206818206899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206816206894%_)))
                                                (_%$%hd206817206897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206816206894%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd206817206897%_))
                                                (let ((_%$%e206819206902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd206817206897%_))))
                                                  (let ((_%$%tl206821206907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e206819206902%_)))
                                                        (_%$%hd206820206905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e206819206902%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl206821206907%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl206818206899%_))
                                                            (let ((_%$%e206822206910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl206818206899%_))))
                      (let ((_%$%tl206824206915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e206822206910%_)))
                            (_%$%hd206823206913%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e206822206910%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl206824206915%_))
                            (_%__kont211657211658%_
                             _%$%hd206823206913%_
                             _%$%hd206820206905%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g206812206837%_)))))
                    (let () (declare (not safe)) (_%$%g206812206837%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl206818206899%_))
                    (let ((_%$%e206830206850%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl206818206899%_))))
                      (let ((_%$%tl206832206855%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e206830206850%_)))
                            (_%$%hd206831206853%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e206830206850%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl206832206855%_))
                            (_%__kont211659211660%_
                             _%$%hd206831206853%_
                             _%$%hd206817206897%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g206812206837%_)))))
                    (let () (declare (not safe)) (_%$%g206812206837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl206818206899%_))
                                                    (let ((_%$%e206830206850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl206818206899%_))))
                                                      (let ((_%$%tl206832206855%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e206830206850%_)))
                    (_%$%hd206831206853%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e206830206850%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl206832206855%_))
                    (_%__kont211659211660%_
                     _%$%hd206831206853%_
                     _%$%hd206817206897%_)
                    (let () (declare (not safe)) (_%$%g206812206837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g206812206837%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g206812206837%_))))))))
                        (if (pair? _%$%rest206786206794%_)
                            (let ((_%$%hd206791206942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest206786206794%_)))
                                  (_%$%tl206792206944%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest206786206794%_))))
                              (let* ((_%hd-bind206947%_ _%$%hd206791206942%_)
                                     (_%rest206949%_ _%$%tl206792206944%_))
                                (_%$%K206790206939%_
                                 _%rest206949%_
                                 _%hd-bind206947%_)))
                            (_%$%else206788206805%_))))))
                 (_%generate-letrec?206537%_
                  (lambda (_%hd206669%_)
                    (let _%lp206671%_ ((_%rest206673%_ _%hd206669%_))
                      (let* ((_%$%rest206674206682%_ _%rest206673%_)
                             (_%$%else206676206690%_ (lambda () '#t))
                             (_%$%K206678206767%_
                              (lambda (_%rest206693%_ _%hd-bind206694%_)
                                (let* ((_%$%g206696206713%_
                                        (lambda (_%$%g206697206710%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g206697206710%_))))
                                       (_%$%g206695206764%_
                                        (lambda (_%$%g206697206716%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g206697206716%_))
                                              (let ((_%$%e206700206718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g206697206716%_))))
                                                (let ((_%$%hd206701206721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206700206718%_)))
                                                      (_%$%tl206702206723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206700206718%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd206701206721%_))
                                                      (let ((_%$%e206703206726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd206701206721%_))))
                (let ((_%$%hd206704206729%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e206703206726%_)))
                      (_%$%tl206705206731%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e206703206726%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl206705206731%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl206702206723%_))
                          (let ((_%$%e206706206734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl206702206723%_))))
                            (let ((_%$%hd206707206737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206706206734%_)))
                                  (_%$%tl206708206739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206706206734%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl206708206739%_))
                                  (if (_%is-lambda-expr?206538%_
                                       _%$%hd206707206737%_)
                                      (_%lp206671%_ _%rest206693%_)
                                      '#f)
                                  (_%$%g206696206713%_ _%$%g206697206716%_))))
                          (_%$%g206696206713%_ _%$%g206697206716%_))
                      (_%$%g206696206713%_ _%$%g206697206716%_))))
              (_%$%g206696206713%_ _%$%g206697206716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206696206713%_
                                               _%$%g206697206716%_)))))
                                  (_%$%g206695206764%_ _%hd-bind206694%_)))))
                        (if (pair? _%$%rest206674206682%_)
                            (let ((_%$%hd206679206770%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest206674206682%_)))
                                  (_%$%tl206680206772%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest206674206682%_))))
                              (let* ((_%hd-bind206775%_ _%$%hd206679206770%_)
                                     (_%rest206777%_ _%$%tl206680206772%_))
                                (_%$%K206678206767%_
                                 _%rest206777%_
                                 _%hd-bind206775%_)))
                            (_%$%else206676206690%_))))))
                 (_%is-lambda-expr?206538%_
                  (lambda (_%expr206606%_)
                    (let* ((_%__stx211699211700%_ _%expr206606%_)
                           (_%$%g206609206623%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx211699211700%_)))))
                      (let ((_%__kont211701211702%_
                             (lambda (_%$%g206611206651%_ _%$%g206612206652%_)
                               '#t))
                            (_%__kont211703211704%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx211699211700%_))
                            (let ((_%$%e206613206635%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx211699211700%_))))
                              (let ((_%$%tl206615206640%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e206613206635%_)))
                                    (_%$%hd206614206638%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e206613206635%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd206614206638%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd206614206638%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl206615206640%_))
                                            (let ((_%$%e206616206643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl206615206640%_))))
                                              (let ((_%$%tl206618206648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e206616206643%_)))
                                                    (_%$%hd206617206646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e206616206643%_))))
                                                (_%__kont211701211702%_
                                                 _%$%tl206618206648%_
                                                 _%$%hd206617206646%_)))
                                            (_%__kont211703211704%_))
                                        (_%__kont211703211704%_))
                                    (_%__kont211703211704%_))))
                            (_%__kont211703211704%_)))))))
          (let* ((_%$%g206540206557%_
                  (lambda (_%$%g206541206554%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206541206554%_))))
                 (_%$%g206539206603%_
                  (lambda (_%$%g206541206560%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206541206560%_))
                        (let ((_%$%e206544206562%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206541206560%_))))
                          (let ((_%$%hd206545206565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206544206562%_)))
                                (_%$%tl206546206567%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206544206562%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206546206567%_))
                                (let ((_%$%e206547206570%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206546206567%_))))
                                  (let ((_%$%hd206548206573%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206547206570%_)))
                                        (_%$%tl206549206575%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206547206570%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206549206575%_))
                                        (let ((_%$%e206550206578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206549206575%_))))
                                          (let ((_%$%hd206551206581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206550206578%_)))
                                                (_%$%tl206552206583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206550206578%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206552206583%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd206548206573%_)
                                                    (if (_%generate-letrec?206537%_
                                                         _%$%hd206548206573%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self206533%_
                                                         'letrec
                                                         _%$%hd206548206573%_
                                                         _%$%hd206551206581%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self206533%_
                                                         'letrec*
                                                         _%$%hd206548206573%_
                                                         _%$%hd206551206581%_
                                                         '#f))
                                                    (_%generate-values206536%_
                                                     _%$%hd206548206573%_
                                                     _%$%hd206551206581%_))
                                                (_%$%g206540206557%_
                                                 _%$%g206541206560%_))))
                                        (_%$%g206540206557%_
                                         _%$%g206541206560%_))))
                                (_%$%g206540206557%_ _%$%g206541206560%_))))
                        (_%$%g206540206557%_ _%$%g206541206560%_)))))
            (_%$%g206539206603%_ _%stx206534%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd206470%_)
        (let _%lp206472%_ ((_%rest206474%_ _%hd206470%_))
          (let* ((_%$%rest206475206491%_ _%rest206474%_)
                 (_%$%else206478206499%_ (lambda () '#f)))
            (let ((_%$%K206481206512%_
                   (lambda (_%rest206510%_) (_%lp206472%_ _%rest206510%_)))
                  (_%$%K206480206504%_ (lambda () '#t)))
              (let ((_%$%try-match206477206507%_
                     (lambda ()
                       (if (null? _%$%rest206475206491%_)
                           (_%$%K206480206504%_)
                           (_%$%else206478206499%_)))))
                (if (pair? _%$%rest206475206491%_)
                    (let ((_%$%tl206483206517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest206475206491%_)))
                          (_%$%hd206482206515%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest206475206491%_))))
                      (if (pair? _%$%hd206482206515%_)
                          (let ((_%$%tl206485206522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd206482206515%_)))
                                (_%$%hd206484206520%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd206482206515%_))))
                            (if (pair? _%$%hd206484206520%_)
                                (let ((_%$%tl206489206525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd206484206520%_))))
                                  (if (null? _%$%tl206489206525%_)
                                      (if (pair? _%$%tl206485206522%_)
                                          (let ((_%$%tl206487206528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl206485206522%_))))
                                            (if (null? _%$%tl206487206528%_)
                                                (let ((_%rest206531%_
                                                       _%$%tl206483206517%_))
                                                  (_%lp206472%_
                                                   _%rest206531%_))
                                                (_%$%else206478206499%_)))
                                          (_%$%else206478206499%_))
                                      (_%$%else206478206499%_)))
                                (_%$%else206478206499%_)))
                          (_%$%else206478206499%_)))
                    (_%$%try-match206477206507%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self206382%_
               _%form206383%_
               _%hd206384%_
               _%body206385%_
               _%compiled-body?206386%_)
        (letrec ((_%generate1206388%_
                  (lambda (_%bind206427%_)
                    (let* ((_%$%bind206428206439%_ _%bind206427%_)
                           (_%$%E206430206442%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind206428206439%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K206431206448%_
                            (lambda (_%expr206445%_ _%id206446%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id206446%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self206382%_
                                             _%expr206445%_))
                                          '())))))
                      (if (pair? _%$%bind206428206439%_)
                          (let ((_%$%hd206432206451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind206428206439%_)))
                                (_%$%tl206433206453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind206428206439%_))))
                            (if (pair? _%$%hd206432206451%_)
                                (let ((_%$%hd206436206456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd206432206451%_)))
                                      (_%$%tl206437206458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd206432206451%_))))
                                  (let ((_%id206461%_ _%$%hd206436206456%_))
                                    (if (null? _%$%tl206437206458%_)
                                        (if (pair? _%$%tl206433206453%_)
                                            (let ((_%$%hd206434206463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl206433206453%_)))
                                                  (_%$%tl206435206465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl206433206453%_))))
                                              (let ((_%expr206468%_
                                                     _%$%hd206434206463%_))
                                                (if (null? _%$%tl206435206465%_)
                                                    (_%$%K206431206448%_
                                                     _%expr206468%_
                                                     _%id206461%_)
                                                    (_%$%E206430206442%_))))
                                            (_%$%E206430206442%_))
                                        (_%$%E206430206442%_))))
                                (_%$%E206430206442%_)))
                          (_%$%E206430206442%_))))))
          (let* ((_%bind206390%_ (map _%generate1206388%_ _%hd206384%_))
                 (_%body206392%_
                  (if _%compiled-body?206386%_
                      _%body206385%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self206382%_ _%body206385%_))))
                 (_%body206424%_
                  (let* ((_%$%body206393206401%_ _%body206392%_)
                         (_%$%else206395206409%_
                          (lambda () (cons _%body206392%_ '())))
                         (_%$%K206397206414%_
                          (lambda (_%exprs206412%_) _%exprs206412%_)))
                    (if (pair? _%$%body206393206401%_)
                        (let ((_%$%hd206398206417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body206393206401%_)))
                              (_%$%tl206399206419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body206393206401%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd206398206417%_ 'begin))
                              (let ((_%exprs206422%_ _%$%tl206399206419%_))
                                (_%$%K206397206414%_ _%exprs206422%_))
                              (_%$%else206395206409%_)))
                        (_%$%else206395206409%_)))))
            (cons _%form206383%_ (cons _%bind206390%_ _%body206424%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self206282%_ _%stx206283%_)
        (letrec ((_%generate1206285%_
                  (lambda (_%datum206337%_)
                    (if (or (null? _%datum206337%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum206337%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum206337%_))
                            (eof-object? _%datum206337%_))
                        _%datum206337%_
                        (if (uninterned-symbol? _%datum206337%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum206337%_
                               '#t))
                            (if (pair? _%datum206337%_)
                                (cons (_%generate1206285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum206337%_)))
                                      (_%generate1206285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum206337%_))))
                                (if (box? _%datum206337%_)
                                    (box (_%generate1206285%_
                                          (unbox _%datum206337%_)))
                                    (if (vector? _%datum206337%_)
                                        (vector-map
                                         _%generate1206285%_
                                         _%datum206337%_)
                                        (if (or (s8vector? _%datum206337%_)
                                                (u8vector? _%datum206337%_)
                                                (s16vector? _%datum206337%_)
                                                (u16vector? _%datum206337%_)
                                                (s32vector? _%datum206337%_)
                                                (u32vector? _%datum206337%_)
                                                (s64vector? _%datum206337%_)
                                                (u64vector? _%datum206337%_)
                                                (f32vector? _%datum206337%_)
                                                (f64vector? _%datum206337%_))
                                            _%datum206337%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx206283%_)))))))))))
          (let* ((_%$%g206287206300%_
                  (lambda (_%$%g206288206297%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206288206297%_))))
                 (_%$%g206286206334%_
                  (lambda (_%$%g206288206303%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206288206303%_))
                        (let ((_%$%e206290206305%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206288206303%_))))
                          (let ((_%$%hd206291206308%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206290206305%_)))
                                (_%$%tl206292206310%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206290206305%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206292206310%_))
                                (let ((_%$%e206293206313%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206292206310%_))))
                                  (let ((_%$%hd206294206316%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206293206313%_)))
                                        (_%$%tl206295206318%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206293206313%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206295206318%_))
                                        (cons 'quote
                                              (cons (_%generate1206285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd206294206316%_)))
                                                    '()))
                                        (_%$%g206287206300%_
                                         _%$%g206288206303%_))))
                                (_%$%g206287206300%_ _%$%g206288206303%_))))
                        (_%$%g206287206300%_ _%$%g206288206303%_)))))
            (_%$%g206286206334%_ _%stx206283%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self205729%_ _%stx205730%_)
        (letrec ((_%compile-call205732%_
                  (lambda (_%rator206019%_ _%rands206020%_)
                    (let ((_%rator206026%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self205729%_
                              _%rator206019%_)))
                          (_%rands206027%_
                           (map (lambda (_%$%g206021206023%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self205729%_
                                     _%$%g206021206023%_)))
                                _%rands206020%_)))
                      (let* ((_%__stx211746211747%_ _%rator206026%_)
                             (_%$%g206030206082%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx211746211747%_)))))
                        (let ((_%__kont211748211749%_
                               (lambda (_%$%g206032206202%_
                                        _%$%g206033206203%_
                                        _%$%g206034206204%_
                                        _%$%g206035206205%_)
                                 (if (let ((__tmp212418
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands206027%_)))
                                           (__tmp212416
                                            (length (let ((__tmp212417
                                                           (lambda (_%$%g206241206244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g206242206246%_)
                     (cons _%$%g206241206244%_ _%$%g206242206246%_))))
              (declare (not safe))
              (foldr__0 __tmp212417 '() _%$%g206034206204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp212418 __tmp212416))
                                     (let* ((_%id206249%_ _%$%g206035206205%_)
                                            (_%args206258%_
                                             (let ((__tmp212419
                                                    (lambda (_%$%g206250206253%_
                                                             _%$%g206251206255%_)
                                                      (cons _%$%g206250206253%_
                                                            _%$%g206251206255%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp212419
                                                '()
                                                _%$%g206034206204%_)))
                                            (_%body206267%_
                                             (let ((__tmp212420
                                                    (lambda (_%$%g206259206262%_
                                                             _%$%g206260206264%_)
                                                      (cons _%$%g206259206262%_
                                                            _%$%g206260206264%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp212420
                                                '()
                                                _%$%g206033206203%_)))
                                            (_%init206269%_
                                             (map list
                                                  _%args206258%_
                                                  _%rands206027%_)))
                                       (cons 'let
                                             (cons _%id206249%_
                                                   (cons _%init206269%_
                                                         _%body206267%_))))
                                     (let ((__tmp212421
                                            (let ((__tmp212422
                                                   (lambda (_%$%g206271206274%_
                                                            _%$%g206272206276%_)
                                                     (cons _%$%g206271206274%_
                                                           _%$%g206272206276%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212422
                                               '()
                                               _%$%g206034206204%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx205730%_
                                        __tmp212421
                                        _%rands206027%_)))))
                              (_%__kont211754211755%_
                               (lambda ()
                                 (cons _%rator206026%_ _%rands206027%_))))
                          (let ((_%__match211813211814%_
                                 (lambda (_%$%e206036206094%_
                                          _%$%hd206037206097%_
                                          _%$%tl206038206099%_
                                          _%$%e206039206102%_
                                          _%$%hd206040206105%_
                                          _%$%tl206041206107%_
                                          _%$%e206042206110%_
                                          _%$%hd206043206113%_
                                          _%$%tl206044206115%_
                                          _%$%e206045206118%_
                                          _%$%hd206046206121%_
                                          _%$%tl206047206123%_
                                          _%$%e206048206126%_
                                          _%$%hd206049206129%_
                                          _%$%tl206050206131%_
                                          _%$%e206051206134%_
                                          _%$%hd206052206137%_
                                          _%$%tl206053206139%_
                                          _%$%e206054206142%_
                                          _%$%hd206055206145%_
                                          _%$%tl206056206147%_
                                          _%__splice211750211751%_
                                          _%$%target206057206150%_
                                          _%$%tl206059206152%_)
                                   (letrec ((_%$%loop206060206155%_
                                             (lambda (_%$%hd206058206158%_
                                                      _%$%arg206064206160%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd206058206158%_))
                                                   (let ((_%$%e206061206162%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd206058206158%_))))
                                                     (let ((_%$%lp-tl206063206167%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e206061206162%_)))
                                                           (_%$%lp-hd206062206165%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e206061206162%_))))
                                                       (_%$%loop206060206155%_
                                                        _%$%lp-tl206063206167%_
                                                        (cons _%$%lp-hd206062206165%_
                                                              _%$%arg206064206160%_))))
                                                   (let ((_%$%arg206065206170%_
                                                          (reverse _%$%arg206064206160%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl206056206147%_))
                                                         (let ((_%__splice211752211753%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl206056206147%_
                           '0))))
                   (let ((_%$%tl206068206174%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice211752211753%_ '1)))
                         (_%$%target206066206172%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice211752211753%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl206068206174%_))
                         (letrec ((_%$%loop206069206177%_
                                   (lambda (_%$%hd206067206180%_
                                            _%$%body206073206182%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd206067206180%_))
                                         (let ((_%$%e206070206184%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd206067206180%_))))
                                           (let ((_%$%lp-tl206072206189%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e206070206184%_)))
                                                 (_%$%lp-hd206071206187%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e206070206184%_))))
                                             (_%$%loop206069206177%_
                                              _%$%lp-tl206072206189%_
                                              (cons _%$%lp-hd206071206187%_
                                                    _%$%body206073206182%_))))
                                         (let ((_%$%body206074206192%_
                                                (reverse _%$%body206073206182%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl206050206131%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl206044206115%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl206041206107%_))
                                                       (let ((_%$%e206075206194%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl206041206107%_))))
                 (let ((_%$%tl206077206199%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e206075206194%_)))
                       (_%$%hd206076206197%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e206075206194%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl206077206199%_))
                       (let ((_%$%g206032206202%_ _%$%hd206076206197%_)
                             (_%$%g206033206203%_ _%$%body206074206192%_)
                             (_%$%g206034206204%_ _%$%arg206065206170%_)
                             (_%$%g206035206205%_ _%$%hd206046206121%_))
                         (if (eq? _%$%g206035206205%_ _%$%g206032206202%_)
                             (_%__kont211748211749%_
                              _%$%g206032206202%_
                              _%$%g206033206203%_
                              _%$%g206034206204%_
                              _%$%g206035206205%_)
                             (_%__kont211754211755%_)))
                       (_%__kont211754211755%_))))
               (_%__kont211754211755%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont211754211755%_))
                                               (_%__kont211754211755%_)))))))
                           (_%$%loop206069206177%_
                            _%$%target206066206172%_
                            '()))
                         (_%__kont211754211755%_))))
                 (_%__kont211754211755%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop206060206155%_
                                      _%$%target206057206150%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx211746211747%_))
                                (let ((_%$%e206036206094%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx211746211747%_))))
                                  (let ((_%$%tl206038206099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206036206094%_)))
                                        (_%$%hd206037206097%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206036206094%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd206037206097%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd206037206097%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl206038206099%_))
                                                (let ((_%$%e206039206102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl206038206099%_))))
                                                  (let ((_%$%tl206041206107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e206039206102%_)))
                                                        (_%$%hd206040206105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e206039206102%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd206040206105%_))
                                                        (let ((_%$%e206042206110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd206040206105%_))))
                  (let ((_%$%tl206044206115%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206042206110%_)))
                        (_%$%hd206043206113%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206042206110%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd206043206113%_))
                        (let ((_%$%e206045206118%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd206043206113%_))))
                          (let ((_%$%tl206047206123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206045206118%_)))
                                (_%$%hd206046206121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206045206118%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206047206123%_))
                                (let ((_%$%e206048206126%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206047206123%_))))
                                  (let ((_%$%tl206050206131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206048206126%_)))
                                        (_%$%hd206049206129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206048206126%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd206049206129%_))
                                        (let ((_%$%e206051206134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd206049206129%_))))
                                          (let ((_%$%tl206053206139%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206051206134%_)))
                                                (_%$%hd206052206137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206051206134%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd206052206137%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd206052206137%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl206053206139%_))
                                                        (let ((_%$%e206054206142%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl206053206139%_))))
                  (let ((_%$%tl206056206147%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206054206142%_)))
                        (_%$%hd206055206145%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206054206142%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd206055206145%_))
                        (let ((_%__splice211750211751%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd206055206145%_
                                  '0))))
                          (let ((_%$%tl206059206152%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice211750211751%_ '1)))
                                (_%$%target206057206150%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice211750211751%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl206059206152%_))
                                (_%__match211813211814%_
                                 _%$%e206036206094%_
                                 _%$%hd206037206097%_
                                 _%$%tl206038206099%_
                                 _%$%e206039206102%_
                                 _%$%hd206040206105%_
                                 _%$%tl206041206107%_
                                 _%$%e206042206110%_
                                 _%$%hd206043206113%_
                                 _%$%tl206044206115%_
                                 _%$%e206045206118%_
                                 _%$%hd206046206121%_
                                 _%$%tl206047206123%_
                                 _%$%e206048206126%_
                                 _%$%hd206049206129%_
                                 _%$%tl206050206131%_
                                 _%$%e206051206134%_
                                 _%$%hd206052206137%_
                                 _%$%tl206053206139%_
                                 _%$%e206054206142%_
                                 _%$%hd206055206145%_
                                 _%$%tl206056206147%_
                                 _%__splice211750211751%_
                                 _%$%target206057206150%_
                                 _%$%tl206059206152%_)
                                (_%__kont211754211755%_))))
                        (_%__kont211754211755%_))))
                (_%__kont211754211755%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont211754211755%_))
                                                (_%__kont211754211755%_))))
                                        (_%__kont211754211755%_))))
                                (_%__kont211754211755%_))))
                        (_%__kont211754211755%_))))
                (_%__kont211754211755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont211754211755%_))
                                            (_%__kont211754211755%_))
                                        (_%__kont211754211755%_))))
                                (_%__kont211754211755%_)))))))))
          (let* ((_%$%g205734205757%_
                  (lambda (_%$%g205735205754%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205735205754%_))))
                 (_%$%g205733206016%_
                  (lambda (_%$%g205735205760%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205735205760%_))
                        (let ((_%$%e205738205762%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205735205760%_))))
                          (let ((_%$%hd205739205765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205738205762%_)))
                                (_%$%tl205740205767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205738205762%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205740205767%_))
                                (let ((_%$%e205741205770%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205740205767%_))))
                                  (let ((_%$%hd205742205773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205741205770%_)))
                                        (_%$%tl205743205775%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205741205770%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl205743205775%_))
                                        (let ((_g212423_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl205743205775%_
                                                  '0))))
                                          (begin
                                            (let ((_g212424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g212423_)
                                                         (##values-length
                                                          _g212423_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g212424_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g212424_)))
                                            (let ((_%$%target205744205778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g212423_
                                                      0)))
                                                  (_%$%tl205746205780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g212423_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl205746205780%_))
                                                  (letrec ((_%$%loop205747205783%_
                                                            (lambda (_%$%hd205745205786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand205751205788%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd205745205786%_))
                          (let ((_%$%e205748205790%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd205745205786%_))))
                            (let ((_%$%lp-hd205749205793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205748205790%_)))
                                  (_%$%lp-tl205750205795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205748205790%_))))
                              (_%$%loop205747205783%_
                               _%$%lp-tl205750205795%_
                               (cons _%$%lp-hd205749205793%_
                                     _%$%rand205751205788%_))))
                          (let ((_%$%rand205752205798%_
                                 (reverse _%$%rand205751205788%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call205732%_
                                 _%$%hd205742205773%_
                                 (let ((__tmp212425
                                        (lambda (_%$%g205818205821%_
                                                 _%$%g205819205823%_)
                                          (cons _%$%g205818205821%_
                                                _%$%g205819205823%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp212425
                                    '()
                                    _%$%rand205752205798%_)))
                                (let* ((_%__stx211862211863%_
                                        _%$%hd205742205773%_)
                                       (_%$%g205827205839%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx211862211863%_)))))
                                  (let ((_%__kont211864211865%_
                                         (lambda ()
                                           (let ((_%f205876%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self205729%_
                                                     _%$%hd205742205773%_))))
                                             (if (and (let ((__tmp212426
                                                             (symbol->string
                                                              _%f205876%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp212426))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f205876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp205878%_ ((_%rest205881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp212428
                                             (lambda (_%$%g205998206001%_
                                                      _%$%g205999206003%_)
                                               (cons _%$%g205998206001%_
                                                     _%$%g205999206003%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp212428
                                         '()
                                         _%$%rand205752205798%_))))
                            (_%bind205883%_ '())
                            (_%args205884%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest205885205893%_
                                                           _%rest205881%_)
                                                          (_%$%else205887205901%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind205883%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f205876%_ _%args205884%_)
                                             '()))))))
                  (_%$%K205889205987%_
                   (lambda (_%rest205904%_ _%e205905%_)
                     (let* ((_%__stx211816211817%_ _%e205905%_)
                            (_%$%g205910205928%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx211816211817%_)))))
                       (let ((_%__kont211818211819%_
                              (lambda ()
                                (_%lp205878%_
                                 _%rest205904%_
                                 _%bind205883%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e205905%_))
                                       _%args205884%_))))
                             (_%__kont211820211821%_
                              (lambda ()
                                (_%lp205878%_
                                 _%rest205904%_
                                 _%bind205883%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e205905%_))
                                       _%args205884%_))))
                             (_%__kont211822211823%_
                              (lambda ()
                                (let ((_%tmp205935%_
                                       (let ((__tmp212427
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp212427))))
                                  (_%lp205878%_
                                   _%rest205904%_
                                   (cons (cons _%tmp205935%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e205905%_))
                                                     '()))
                                         _%bind205883%_)
                                   (cons _%tmp205935%_ _%args205884%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx211816211817%_))
                             (let ((_%$%e205912205966%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx211816211817%_))))
                               (let ((_%$%tl205914205971%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e205912205966%_)))
                                     (_%$%hd205913205969%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e205912205966%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd205913205969%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd205913205969%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl205914205971%_))
                                             (let ((_%$%e205915205974%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl205914205971%_))))
                                               (let ((_%$%tl205917205979%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e205915205974%_)))
                                                     (_%$%hd205916205977%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e205915205974%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl205917205979%_))
                                                     (_%__kont211818211819%_)
                                                     (_%__kont211822211823%_))))
                                             (_%__kont211822211823%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd205913205969%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl205914205971%_))
                                                 (let ((_%$%e205921205951%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl205914205971%_))))
                                                   (let ((_%$%tl205923205956%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e205921205951%_)))
                                                         (_%$%hd205922205954%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e205921205951%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl205923205956%_))
                                                         (_%__kont211820211821%_)
                                                         (_%__kont211822211823%_))))
                                                 (_%__kont211822211823%_))
                                             (_%__kont211822211823%_)))
                                     (_%__kont211822211823%_))))
                             (_%__kont211822211823%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest205885205893%_)
                                                         (let ((_%$%hd205890205990%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest205885205893%_)))
                       (_%$%tl205891205992%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest205885205893%_))))
                   (let* ((_%e205995%_ _%$%hd205890205990%_)
                          (_%rest205997%_ _%$%tl205891205992%_))
                     (_%$%K205889205987%_ _%rest205997%_ _%e205995%_)))
                 (_%$%else205887205901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call205732%_
                                                  _%$%hd205742205773%_
                                                  (let ((__tmp212429
                                                         (lambda (_%$%g206005206008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g206006206010%_)
                   (cons _%$%g206005206008%_ _%$%g206006206010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp212429
                                                     '()
                                                     _%$%rand205752205798%_)))))))
                                        (_%__kont211866211867%_
                                         (lambda ()
                                           (_%compile-call205732%_
                                            _%$%hd205742205773%_
                                            (let ((__tmp212430
                                                   (lambda (_%$%g205845205848%_
                                                            _%$%g205846205850%_)
                                                     (cons _%$%g205845205848%_
                                                           _%$%g205846205850%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212430
                                               '()
                                               _%$%rand205752205798%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx211862211863%_))
                                        (let ((_%$%e205829205858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx211862211863%_))))
                                          (let ((_%$%tl205831205863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205829205858%_)))
                                                (_%$%hd205830205861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205829205858%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd205830205861%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd205830205861%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl205831205863%_))
                                                        (let ((_%$%e205832205866%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl205831205863%_))))
                  (let ((_%$%tl205834205871%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e205832205866%_)))
                        (_%$%hd205833205869%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e205832205866%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl205834205871%_))
                        (_%__kont211864211865%_)
                        (_%__kont211866211867%_))))
                (_%__kont211866211867%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont211866211867%_))
                                                (_%__kont211866211867%_))))
                                        (_%__kont211866211867%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop205747205783%_
                                                     _%$%target205744205778%_
                                                     '()))
                                                  (_%$%g205734205757%_
                                                   _%$%g205735205760%_)))))
                                        (_%$%g205734205757%_
                                         _%$%g205735205760%_))))
                                (_%$%g205734205757%_ _%$%g205735205760%_))))
                        (_%$%g205734205757%_ _%$%g205735205760%_)))))
            (_%$%g205733206016%_ _%stx205730%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self205474%_ _%stx205475%_)
        (let* ((_%__stx211934211935%_ _%stx205475%_)
               (_%$%g205478205507%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx211934211935%_)))))
          (let ((_%__kont211936211937%_
                 (lambda (_%$%g205480205573%_ _%$%g205481205574%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self205474%_
                        _%stx205475%_)
                       (let ((_%f205596%_
                              (let ((__tmp212431
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g205481205574%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self205474%_
                                 __tmp212431))))
                         (let _%lp205598%_ ((_%rest205601%_
                                             (reverse (let ((__tmp212433
                                                             (lambda (_%$%g205718205721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g205719205723%_)
                       (cons _%$%g205718205721%_ _%$%g205719205723%_))))
                (declare (not safe))
                (foldr__0 __tmp212433 '() _%$%g205480205573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind205603%_ '())
                                            (_%args205604%_ '()))
                           (let* ((_%$%rest205605205613%_ _%rest205601%_)
                                  (_%$%else205607205621%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind205603%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f205596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args205604%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K205609205707%_
                                   (lambda (_%rest205624%_ _%e205625%_)
                                     (let* ((_%__stx211888211889%_ _%e205625%_)
                                            (_%$%g205630205648%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx211888211889%_)))))
                                       (let ((_%__kont211890211891%_
                                              (lambda ()
                                                (_%lp205598%_
                                                 _%rest205624%_
                                                 _%bind205603%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e205625%_))
                                                       _%args205604%_))))
                                             (_%__kont211892211893%_
                                              (lambda ()
                                                (_%lp205598%_
                                                 _%rest205624%_
                                                 _%bind205603%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e205625%_))
                                                       _%args205604%_))))
                                             (_%__kont211894211895%_
                                              (lambda ()
                                                (let ((_%tmp205655%_
                                                       (let ((__tmp212432
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp212432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp205598%_
                                                   _%rest205624%_
                                                   (cons (cons _%tmp205655%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e205625%_))
                             '()))
                 _%bind205603%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp205655%_
                                                         _%args205604%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx211888211889%_))
                                             (let ((_%$%e205632205686%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx211888211889%_))))
                                               (let ((_%$%tl205634205691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e205632205686%_)))
                                                     (_%$%hd205633205689%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e205632205686%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd205633205689%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd205633205689%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl205634205691%_))
                     (let ((_%$%e205635205694%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl205634205691%_))))
                       (let ((_%$%tl205637205699%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e205635205694%_)))
                             (_%$%hd205636205697%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e205635205694%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl205637205699%_))
                             (_%__kont211890211891%_)
                             (_%__kont211894211895%_))))
                     (_%__kont211894211895%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd205633205689%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl205634205691%_))
                         (let ((_%$%e205641205671%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl205634205691%_))))
                           (let ((_%$%tl205643205676%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e205641205671%_)))
                                 (_%$%hd205642205674%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e205641205671%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl205643205676%_))
                                 (_%__kont211892211893%_)
                                 (_%__kont211894211895%_))))
                         (_%__kont211894211895%_))
                     (_%__kont211894211895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont211894211895%_))))
                                             (_%__kont211894211895%_)))))))
                             (if (pair? _%$%rest205605205613%_)
                                 (let ((_%$%hd205610205710%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest205605205613%_)))
                                       (_%$%tl205611205712%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest205605205613%_))))
                                   (let* ((_%e205715%_ _%$%hd205610205710%_)
                                          (_%rest205717%_
                                           _%$%tl205611205712%_))
                                     (_%$%K205609205707%_
                                      _%rest205717%_
                                      _%e205715%_)))
                                 (_%$%else205607205621%_))))))))
                (_%__kont211940211941%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self205474%_ _%stx205475%_))))
            (let ((_%__match211979211980%_
                   (lambda (_%$%e205482205519%_
                            _%$%hd205483205522%_
                            _%$%tl205484205524%_
                            _%$%e205485205527%_
                            _%$%hd205486205530%_
                            _%$%tl205487205532%_
                            _%$%e205488205535%_
                            _%$%hd205489205538%_
                            _%$%tl205490205540%_
                            _%$%e205491205543%_
                            _%$%hd205492205546%_
                            _%$%tl205493205548%_
                            _%__splice211938211939%_
                            _%$%target205494205551%_
                            _%$%tl205496205553%_)
                     (letrec ((_%$%loop205497205556%_
                               (lambda (_%$%hd205495205559%_
                                        _%$%rand205501205561%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd205495205559%_))
                                     (let ((_%$%e205498205563%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd205495205559%_))))
                                       (let ((_%$%lp-tl205500205568%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e205498205563%_)))
                                             (_%$%lp-hd205499205566%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e205498205563%_))))
                                         (_%$%loop205497205556%_
                                          _%$%lp-tl205500205568%_
                                          (cons _%$%lp-hd205499205566%_
                                                _%$%rand205501205561%_))))
                                     (let ((_%$%rand205502205571%_
                                            (reverse _%$%rand205501205561%_)))
                                       (_%__kont211936211937%_
                                        _%$%rand205502205571%_
                                        _%$%hd205492205546%_))))))
                       (_%$%loop205497205556%_
                        _%$%target205494205551%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx211934211935%_))
                  (let ((_%$%e205482205519%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx211934211935%_))))
                    (let ((_%$%tl205484205524%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e205482205519%_)))
                          (_%$%hd205483205522%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e205482205519%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl205484205524%_))
                          (let ((_%$%e205485205527%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl205484205524%_))))
                            (let ((_%$%tl205487205532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205485205527%_)))
                                  (_%$%hd205486205530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205485205527%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd205486205530%_))
                                  (let ((_%$%e205488205535%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd205486205530%_))))
                                    (let ((_%$%tl205490205540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205488205535%_)))
                                          (_%$%hd205489205538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205488205535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd205489205538%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd205489205538%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205490205540%_))
                                                  (let ((_%$%e205491205543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205490205540%_))))
                                                    (let ((_%$%tl205493205548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205491205543%_)))
                                                          (_%$%hd205492205546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205491205543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205493205548%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl205487205532%_))
                      (let ((_%__splice211938211939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl205487205532%_
                                '0))))
                        (let ((_%$%tl205496205553%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice211938211939%_ '1)))
                              (_%$%target205494205551%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice211938211939%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl205496205553%_))
                              (_%__match211979211980%_
                               _%$%e205482205519%_
                               _%$%hd205483205522%_
                               _%$%tl205484205524%_
                               _%$%e205485205527%_
                               _%$%hd205486205530%_
                               _%$%tl205487205532%_
                               _%$%e205488205535%_
                               _%$%hd205489205538%_
                               _%$%tl205490205540%_
                               _%$%e205491205543%_
                               _%$%hd205492205546%_
                               _%$%tl205493205548%_
                               _%__splice211938211939%_
                               _%$%target205494205551%_
                               _%$%tl205496205553%_)
                              (_%__kont211940211941%_))))
                      (_%__kont211940211941%_))
                  (_%__kont211940211941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont211940211941%_))
                                              (_%__kont211940211941%_))
                                          (_%__kont211940211941%_))))
                                  (_%__kont211940211941%_))))
                          (_%__kont211940211941%_))))
                  (_%__kont211940211941%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self205286%_ _%stx205287%_)
        (letrec ((_%simplify205289%_
                  (lambda (_%code205374%_)
                    (let* ((_%$%code205375205393%_ _%code205374%_)
                           (_%$%else205377205401%_ (lambda () _%code205374%_))
                           (_%$%K205379205437%_
                            (lambda (_%expr205404%_ _%test205405%_)
                              (let* ((_%$%expr205406205414%_ _%expr205404%_)
                                     (_%$%else205408205422%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test205405%_
                                                    (cons _%expr205404%_
                                                          '())))))
                                     (_%$%K205410205427%_
                                      (lambda (_%exprs205425%_)
                                        (cons 'and
                                              (cons _%test205405%_
                                                    _%exprs205425%_)))))
                                (if (pair? _%$%expr205406205414%_)
                                    (let ((_%$%hd205411205430%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr205406205414%_)))
                                          (_%$%tl205412205432%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr205406205414%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd205411205430%_ 'and))
                                          (let ((_%exprs205435%_
                                                 _%$%tl205412205432%_))
                                            (_%$%K205410205427%_
                                             _%exprs205435%_))
                                          (_%$%else205408205422%_)))
                                    (_%$%else205408205422%_))))))
                      (if (pair? _%$%code205375205393%_)
                          (let ((_%$%hd205380205440%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code205375205393%_)))
                                (_%$%tl205381205442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code205375205393%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd205380205440%_ 'if))
                                (if (pair? _%$%tl205381205442%_)
                                    (let ((_%$%hd205382205445%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl205381205442%_)))
                                          (_%$%tl205383205447%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl205381205442%_))))
                                      (let ((_%test205450%_
                                             _%$%hd205382205445%_))
                                        (if (pair? _%$%tl205383205447%_)
                                            (let ((_%$%hd205384205452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl205383205447%_)))
                                                  (_%$%tl205385205454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl205383205447%_))))
                                              (let ((_%expr205457%_
                                                     _%$%hd205384205452%_))
                                                (if (pair? _%$%tl205385205454%_)
                                                    (let ((_%$%hd205386205459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl205385205454%_)))
                                                          (_%$%tl205387205461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl205385205454%_))))
                                                      (if (pair? _%$%hd205386205459%_)
                                                          (let ((_%$%hd205388205464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd205386205459%_)))
                        (_%$%tl205389205466%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd205386205459%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd205388205464%_ 'quote))
                        (if (pair? _%$%tl205389205466%_)
                            (let ((_%$%hd205390205469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl205389205466%_)))
                                  (_%$%tl205391205471%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl205389205466%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd205390205469%_ '#f))
                                  (if (null? _%$%tl205391205471%_)
                                      (if (null? _%$%tl205387205461%_)
                                          (_%$%K205379205437%_
                                           _%expr205457%_
                                           _%test205450%_)
                                          (_%$%else205377205401%_))
                                      (_%$%else205377205401%_))
                                  (_%$%else205377205401%_)))
                            (_%$%else205377205401%_))
                        (_%$%else205377205401%_)))
                  (_%$%else205377205401%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else205377205401%_))))
                                            (_%$%else205377205401%_))))
                                    (_%$%else205377205401%_))
                                (_%$%else205377205401%_)))
                          (_%$%else205377205401%_))))))
          (let* ((_%$%g205291205312%_
                  (lambda (_%$%g205292205309%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205292205309%_))))
                 (_%$%g205290205371%_
                  (lambda (_%$%g205292205315%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205292205315%_))
                        (let ((_%$%e205296205317%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205292205315%_))))
                          (let ((_%$%hd205297205320%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205296205317%_)))
                                (_%$%tl205298205322%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205296205317%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205298205322%_))
                                (let ((_%$%e205299205325%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205298205322%_))))
                                  (let ((_%$%hd205300205328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205299205325%_)))
                                        (_%$%tl205301205330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205299205325%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205301205330%_))
                                        (let ((_%$%e205302205333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205301205330%_))))
                                          (let ((_%$%hd205303205336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205302205333%_)))
                                                (_%$%tl205304205338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205302205333%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl205304205338%_))
                                                (let ((_%$%e205305205341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl205304205338%_))))
                                                  (let ((_%$%hd205306205344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e205305205341%_)))
                                                        (_%$%tl205307205346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e205305205341%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl205307205346%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify205289%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self205286%_
                                    _%$%hd205300205328%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self205286%_
                                          _%$%hd205303205336%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self205286%_
                                                _%$%hd205306205344%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp212434
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self205286%_
                                            _%$%hd205300205328%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp212434
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self205286%_
                                         _%$%hd205303205336%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self205286%_
                                               _%$%hd205306205344%_))
                                            '())))))
                (_%$%g205291205312%_ _%$%g205292205315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g205291205312%_
                                                 _%$%g205292205315%_))))
                                        (_%$%g205291205312%_
                                         _%$%g205292205315%_))))
                                (_%$%g205291205312%_ _%$%g205292205315%_))))
                        (_%$%g205291205312%_ _%$%g205292205315%_)))))
            (_%$%g205290205371%_ _%stx205287%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self205234%_ _%stx205235%_)
        (let* ((_%$%g205237205250%_
                (lambda (_%$%g205238205247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205238205247%_))))
               (_%$%g205236205283%_
                (lambda (_%$%g205238205253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205238205253%_))
                      (let ((_%$%e205240205255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205238205253%_))))
                        (let ((_%$%hd205241205258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205240205255%_)))
                              (_%$%tl205242205260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205240205255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205242205260%_))
                              (let ((_%$%e205243205263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205242205260%_))))
                                (let ((_%$%hd205244205266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205243205263%_)))
                                      (_%$%tl205245205268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205243205263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl205245205268%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd205244205266%_))
                                      (_%$%g205237205250%_
                                       _%$%g205238205253%_))))
                              (_%$%g205237205250%_ _%$%g205238205253%_))))
                      (_%$%g205237205250%_ _%$%g205238205253%_)))))
          (_%$%g205236205283%_ _%stx205235%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self205166%_ _%stx205167%_)
        (let* ((_%$%g205169205186%_
                (lambda (_%$%g205170205183%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205170205183%_))))
               (_%$%g205168205231%_
                (lambda (_%$%g205170205189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205170205189%_))
                      (let ((_%$%e205173205191%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205170205189%_))))
                        (let ((_%$%hd205174205194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205173205191%_)))
                              (_%$%tl205175205196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205173205191%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205175205196%_))
                              (let ((_%$%e205176205199%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205175205196%_))))
                                (let ((_%$%hd205177205202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205176205199%_)))
                                      (_%$%tl205178205204%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205176205199%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205178205204%_))
                                      (let ((_%$%e205179205207%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205178205204%_))))
                                        (let ((_%$%hd205180205210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205179205207%_)))
                                              (_%$%tl205181205212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205179205207%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205181205212%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd205177205202%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self205166%_
                           _%$%hd205180205210%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205169205186%_
                                               _%$%g205170205189%_))))
                                      (_%$%g205169205186%_
                                       _%$%g205170205189%_))))
                              (_%$%g205169205186%_ _%$%g205170205189%_))))
                      (_%$%g205169205186%_ _%$%g205170205189%_)))))
          (_%$%g205168205231%_ _%stx205167%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self204977%_ _%stx204978%_)
        (let* ((_%$%g204980204997%_
                (lambda (_%$%g204981204994%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204981204994%_))))
               (_%$%g204979205163%_
                (lambda (_%$%g204981205000%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204981205000%_))
                      (let ((_%$%e204984205002%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204981205000%_))))
                        (let ((_%$%hd204985205005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204984205002%_)))
                              (_%$%tl204986205007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204984205002%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204986205007%_))
                              (let ((_%$%e204987205010%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204986205007%_))))
                                (let ((_%$%hd204988205013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204987205010%_)))
                                      (_%$%tl204989205015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204987205010%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204989205015%_))
                                      (let ((_%$%e204990205018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204989205015%_))))
                                        (let ((_%$%hd204991205021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204990205018%_)))
                                              (_%$%tl204992205023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204990205018%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204992205023%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self204977%_ _%$%hd204991205021%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self204977%_
                               _%$%hd204988205013%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp205042%_ ((_%rest205045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd204988205013%_
                                    (cons _%$%hd204991205021%_ '())))
                             (_%bind205047%_ '())
                             (_%args205048%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest205049205057%_
                                                            _%rest205045%_)
                                                           (_%$%else205051205065%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind205047%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args205048%_)
                                              '()))))))
                   (_%$%K205053205151%_
                    (lambda (_%rest205068%_ _%e205069%_)
                      (let* ((_%__stx211982211983%_ _%e205069%_)
                             (_%$%g205074205092%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx211982211983%_)))))
                        (let ((_%__kont211984211985%_
                               (lambda ()
                                 (_%lp205042%_
                                  _%rest205068%_
                                  _%bind205047%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e205069%_))
                                        _%args205048%_))))
                              (_%__kont211986211987%_
                               (lambda ()
                                 (_%lp205042%_
                                  _%rest205068%_
                                  _%bind205047%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e205069%_))
                                        _%args205048%_))))
                              (_%__kont211988211989%_
                               (lambda ()
                                 (let ((_%tmp205099%_
                                        (let ((__tmp212435
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp212435))))
                                   (_%lp205042%_
                                    _%rest205068%_
                                    (cons (cons _%tmp205099%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e205069%_))
                                                      '()))
                                          _%bind205047%_)
                                    (cons _%tmp205099%_ _%args205048%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211982211983%_))
                              (let ((_%$%e205076205130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211982211983%_))))
                                (let ((_%$%tl205078205135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205076205130%_)))
                                      (_%$%hd205077205133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205076205130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd205077205133%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd205077205133%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl205078205135%_))
                                              (let ((_%$%e205079205138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl205078205135%_))))
                                                (let ((_%$%tl205081205143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e205079205138%_)))
                                                      (_%$%hd205080205141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e205079205138%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl205081205143%_))
                                                      (_%__kont211984211985%_)
                                                      (_%__kont211988211989%_))))
                                              (_%__kont211988211989%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd205077205133%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205078205135%_))
                                                  (let ((_%$%e205085205115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205078205135%_))))
                                                    (let ((_%$%tl205087205120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205085205115%_)))
                                                          (_%$%hd205086205118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205085205115%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205087205120%_))
                                                          (_%__kont211986211987%_)
                                                          (_%__kont211988211989%_))))
                                                  (_%__kont211988211989%_))
                                              (_%__kont211988211989%_)))
                                      (_%__kont211988211989%_))))
                              (_%__kont211988211989%_)))))))
              (if (pair? _%$%rest205049205057%_)
                  (let ((_%$%hd205054205154%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest205049205057%_)))
                        (_%$%tl205055205156%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest205049205057%_))))
                    (let* ((_%e205159%_ _%$%hd205054205154%_)
                           (_%rest205161%_ _%$%tl205055205156%_))
                      (_%$%K205053205151%_ _%rest205161%_ _%e205159%_)))
                  (_%$%else205051205065%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204980204997%_
                                               _%$%g204981205000%_))))
                                      (_%$%g204980204997%_
                                       _%$%g204981205000%_))))
                              (_%$%g204980204997%_ _%$%g204981205000%_))))
                      (_%$%g204980204997%_ _%$%g204981205000%_)))))
          (_%$%g204979205163%_ _%stx204978%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self204788%_ _%stx204789%_)
        (let* ((_%$%g204791204808%_
                (lambda (_%$%g204792204805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204792204805%_))))
               (_%$%g204790204974%_
                (lambda (_%$%g204792204811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204792204811%_))
                      (let ((_%$%e204795204813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204792204811%_))))
                        (let ((_%$%hd204796204816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204795204813%_)))
                              (_%$%tl204797204818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204795204813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204797204818%_))
                              (let ((_%$%e204798204821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204797204818%_))))
                                (let ((_%$%hd204799204824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204798204821%_)))
                                      (_%$%tl204800204826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204798204821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204800204826%_))
                                      (let ((_%$%e204801204829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204800204826%_))))
                                        (let ((_%$%hd204802204832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204801204829%_)))
                                              (_%$%tl204803204834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204801204829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204803204834%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self204788%_ _%$%hd204802204832%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self204788%_
                               _%$%hd204799204824%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp204853%_ ((_%rest204856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd204799204824%_
                                    (cons _%$%hd204802204832%_ '())))
                             (_%bind204858%_ '())
                             (_%args204859%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest204860204868%_
                                                            _%rest204856%_)
                                                           (_%$%else204862204876%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind204858%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args204859%_)
                                              '()))))))
                   (_%$%K204864204962%_
                    (lambda (_%rest204879%_ _%e204880%_)
                      (let* ((_%__stx212028212029%_ _%e204880%_)
                             (_%$%g204885204903%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx212028212029%_)))))
                        (let ((_%__kont212030212031%_
                               (lambda ()
                                 (_%lp204853%_
                                  _%rest204879%_
                                  _%bind204858%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e204880%_))
                                        _%args204859%_))))
                              (_%__kont212032212033%_
                               (lambda ()
                                 (_%lp204853%_
                                  _%rest204879%_
                                  _%bind204858%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e204880%_))
                                        _%args204859%_))))
                              (_%__kont212034212035%_
                               (lambda ()
                                 (let ((_%tmp204910%_
                                        (let ((__tmp212436
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp212436))))
                                   (_%lp204853%_
                                    _%rest204879%_
                                    (cons (cons _%tmp204910%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e204880%_))
                                                      '()))
                                          _%bind204858%_)
                                    (cons _%tmp204910%_ _%args204859%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx212028212029%_))
                              (let ((_%$%e204887204941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx212028212029%_))))
                                (let ((_%$%tl204889204946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204887204941%_)))
                                      (_%$%hd204888204944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204887204941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd204888204944%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd204888204944%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204889204946%_))
                                              (let ((_%$%e204890204949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204889204946%_))))
                                                (let ((_%$%tl204892204954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204890204949%_)))
                                                      (_%$%hd204891204952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204890204949%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204892204954%_))
                                                      (_%__kont212030212031%_)
                                                      (_%__kont212034212035%_))))
                                              (_%__kont212034212035%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd204888204944%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl204889204946%_))
                                                  (let ((_%$%e204896204926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl204889204946%_))))
                                                    (let ((_%$%tl204898204931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204896204926%_)))
                                                          (_%$%hd204897204929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204896204926%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl204898204931%_))
                                                          (_%__kont212032212033%_)
                                                          (_%__kont212034212035%_))))
                                                  (_%__kont212034212035%_))
                                              (_%__kont212034212035%_)))
                                      (_%__kont212034212035%_))))
                              (_%__kont212034212035%_)))))))
              (if (pair? _%$%rest204860204868%_)
                  (let ((_%$%hd204865204965%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest204860204868%_)))
                        (_%$%tl204866204967%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest204860204868%_))))
                    (let* ((_%e204970%_ _%$%hd204865204965%_)
                           (_%rest204972%_ _%$%tl204866204967%_))
                      (_%$%K204864204962%_ _%rest204972%_ _%e204970%_)))
                  (_%$%else204862204876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204791204808%_
                                               _%$%g204792204811%_))))
                                      (_%$%g204791204808%_
                                       _%$%g204792204811%_))))
                              (_%$%g204791204808%_ _%$%g204792204811%_))))
                      (_%$%g204791204808%_ _%$%g204792204811%_)))))
          (_%$%g204790204974%_ _%stx204789%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self204704%_ _%stx204705%_)
        (let* ((_%$%g204707204728%_
                (lambda (_%$%g204708204725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204708204725%_))))
               (_%$%g204706204785%_
                (lambda (_%$%g204708204731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204708204731%_))
                      (let ((_%$%e204712204733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204708204731%_))))
                        (let ((_%$%hd204713204736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204712204733%_)))
                              (_%$%tl204714204738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204712204733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204714204738%_))
                              (let ((_%$%e204715204741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204714204738%_))))
                                (let ((_%$%hd204716204744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204715204741%_)))
                                      (_%$%tl204717204746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204715204741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204717204746%_))
                                      (let ((_%$%e204718204749%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204717204746%_))))
                                        (let ((_%$%hd204719204752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204718204749%_)))
                                              (_%$%tl204720204754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204718204749%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204720204754%_))
                                              (let ((_%$%e204721204757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204720204754%_))))
                                                (let ((_%$%hd204722204760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204721204757%_)))
                                                      (_%$%tl204723204762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204721204757%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204723204762%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self204704%_
                             _%$%hd204722204760%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self204704%_
                                   _%$%hd204719204752%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self204704%_
                                         _%$%hd204716204744%_))
                                      (cons ''#f '())))))
              (_%$%g204707204728%_ _%$%g204708204731%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204707204728%_
                                               _%$%g204708204731%_))))
                                      (_%$%g204707204728%_
                                       _%$%g204708204731%_))))
                              (_%$%g204707204728%_ _%$%g204708204731%_))))
                      (_%$%g204707204728%_ _%$%g204708204731%_)))))
          (_%$%g204706204785%_ _%stx204705%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self204604%_ _%stx204605%_)
        (let* ((_%$%g204607204632%_
                (lambda (_%$%g204608204629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204608204629%_))))
               (_%$%g204606204701%_
                (lambda (_%$%g204608204635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204608204635%_))
                      (let ((_%$%e204613204637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204608204635%_))))
                        (let ((_%$%hd204614204640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204613204637%_)))
                              (_%$%tl204615204642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204613204637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204615204642%_))
                              (let ((_%$%e204616204645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204615204642%_))))
                                (let ((_%$%hd204617204648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204616204645%_)))
                                      (_%$%tl204618204650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204616204645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204618204650%_))
                                      (let ((_%$%e204619204653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204618204650%_))))
                                        (let ((_%$%hd204620204656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204619204653%_)))
                                              (_%$%tl204621204658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204619204653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204621204658%_))
                                              (let ((_%$%e204622204661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204621204658%_))))
                                                (let ((_%$%hd204623204664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204622204661%_)))
                                                      (_%$%tl204624204666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204622204661%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204624204666%_))
                                                      (let ((_%$%e204625204669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204624204666%_))))
                (let ((_%$%hd204626204672%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204625204669%_)))
                      (_%$%tl204627204674%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204625204669%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204627204674%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self204604%_
                                     _%$%hd204623204664%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self204604%_
                                           _%$%hd204626204672%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204604%_
                                                 _%$%hd204620204656%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self204604%_
                                                       _%$%hd204617204648%_))
                                                    (cons ''#f '()))))))
                      (_%$%g204607204632%_ _%$%g204608204635%_))))
              (_%$%g204607204632%_ _%$%g204608204635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204607204632%_
                                               _%$%g204608204635%_))))
                                      (_%$%g204607204632%_
                                       _%$%g204608204635%_))))
                              (_%$%g204607204632%_ _%$%g204608204635%_))))
                      (_%$%g204607204632%_ _%$%g204608204635%_)))))
          (_%$%g204606204701%_ _%stx204605%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self204520%_ _%stx204521%_)
        (let* ((_%$%g204523204544%_
                (lambda (_%$%g204524204541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204524204541%_))))
               (_%$%g204522204601%_
                (lambda (_%$%g204524204547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204524204547%_))
                      (let ((_%$%e204528204549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204524204547%_))))
                        (let ((_%$%hd204529204552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204528204549%_)))
                              (_%$%tl204530204554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204528204549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204530204554%_))
                              (let ((_%$%e204531204557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204530204554%_))))
                                (let ((_%$%hd204532204560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204531204557%_)))
                                      (_%$%tl204533204562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204531204557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204533204562%_))
                                      (let ((_%$%e204534204565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204533204562%_))))
                                        (let ((_%$%hd204535204568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204534204565%_)))
                                              (_%$%tl204536204570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204534204565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204536204570%_))
                                              (let ((_%$%e204537204573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204536204570%_))))
                                                (let ((_%$%hd204538204576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204537204573%_)))
                                                      (_%$%tl204539204578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204537204573%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204539204578%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self204520%_
                             _%$%hd204538204576%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self204520%_
                                   _%$%hd204535204568%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self204520%_
                                         _%$%hd204532204560%_))
                                      (cons ''#f '())))))
              (_%$%g204523204544%_ _%$%g204524204547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204523204544%_
                                               _%$%g204524204547%_))))
                                      (_%$%g204523204544%_
                                       _%$%g204524204547%_))))
                              (_%$%g204523204544%_ _%$%g204524204547%_))))
                      (_%$%g204523204544%_ _%$%g204524204547%_)))))
          (_%$%g204522204601%_ _%stx204521%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self204420%_ _%stx204421%_)
        (let* ((_%$%g204423204448%_
                (lambda (_%$%g204424204445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204424204445%_))))
               (_%$%g204422204517%_
                (lambda (_%$%g204424204451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204424204451%_))
                      (let ((_%$%e204429204453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204424204451%_))))
                        (let ((_%$%hd204430204456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204429204453%_)))
                              (_%$%tl204431204458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204429204453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204431204458%_))
                              (let ((_%$%e204432204461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204431204458%_))))
                                (let ((_%$%hd204433204464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204432204461%_)))
                                      (_%$%tl204434204466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204432204461%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204434204466%_))
                                      (let ((_%$%e204435204469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204434204466%_))))
                                        (let ((_%$%hd204436204472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204435204469%_)))
                                              (_%$%tl204437204474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204435204469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204437204474%_))
                                              (let ((_%$%e204438204477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204437204474%_))))
                                                (let ((_%$%hd204439204480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204438204477%_)))
                                                      (_%$%tl204440204482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204438204477%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204440204482%_))
                                                      (let ((_%$%e204441204485%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204440204482%_))))
                (let ((_%$%hd204442204488%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204441204485%_)))
                      (_%$%tl204443204490%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204441204485%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204443204490%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self204420%_
                                     _%$%hd204439204480%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self204420%_
                                           _%$%hd204442204488%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204420%_
                                                 _%$%hd204436204472%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self204420%_
                                                       _%$%hd204433204464%_))
                                                    (cons ''#f '()))))))
                      (_%$%g204423204448%_ _%$%g204424204451%_))))
              (_%$%g204423204448%_ _%$%g204424204451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204423204448%_
                                               _%$%g204424204451%_))))
                                      (_%$%g204423204448%_
                                       _%$%g204424204451%_))))
                              (_%$%g204423204448%_ _%$%g204424204451%_))))
                      (_%$%g204423204448%_ _%$%g204424204451%_)))))
          (_%$%g204422204517%_ _%stx204421%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self204215%_ _%stx204216%_)
        (let* ((_%$%g204218204239%_
                (lambda (_%$%g204219204236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204219204236%_))))
               (_%$%g204217204417%_
                (lambda (_%$%g204219204242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204219204242%_))
                      (let ((_%$%e204223204244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204219204242%_))))
                        (let ((_%$%hd204224204247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204223204244%_)))
                              (_%$%tl204225204249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204223204244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204225204249%_))
                              (let ((_%$%e204226204252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204225204249%_))))
                                (let ((_%$%hd204227204255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204226204252%_)))
                                      (_%$%tl204228204257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204226204252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204228204257%_))
                                      (let ((_%$%e204229204260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204228204257%_))))
                                        (let ((_%$%hd204230204263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204229204260%_)))
                                              (_%$%tl204231204265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204229204260%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204231204265%_))
                                              (let ((_%$%e204232204268%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204231204265%_))))
                                                (let ((_%$%hd204233204271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204232204268%_)))
                                                      (_%$%tl204234204273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204232204268%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204234204273%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self204215%_
                                 _%$%hd204233204271%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self204215%_
                                       _%$%hd204230204263%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp204296%_ ((_%rest204299%_
                                      (cons _%$%hd204230204263%_
                                            (cons _%$%hd204233204271%_ '())))
                                     (_%bind204301%_ '())
                                     (_%args204302%_ '()))
                    (let* ((_%$%rest204303204311%_ _%rest204299%_)
                           (_%$%else204305204319%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind204301%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp212437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (foldr__0 cons __tmp212437 _%args204302%_)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K204307204405%_
                            (lambda (_%rest204322%_ _%e204323%_)
                              (let* ((_%__stx212074212075%_ _%e204323%_)
                                     (_%$%g204328204346%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx212074212075%_)))))
                                (let ((_%__kont212076212077%_
                                       (lambda ()
                                         (_%lp204296%_
                                          _%rest204322%_
                                          _%bind204301%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e204323%_))
                                                _%args204302%_))))
                                      (_%__kont212078212079%_
                                       (lambda ()
                                         (_%lp204296%_
                                          _%rest204322%_
                                          _%bind204301%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e204323%_))
                                                _%args204302%_))))
                                      (_%__kont212080212081%_
                                       (lambda ()
                                         (let ((_%tmp204353%_
                                                (let ((__tmp212438
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp212438))))
                                           (_%lp204296%_
                                            _%rest204322%_
                                            (cons (cons _%tmp204353%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e204323%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind204301%_)
                                            (cons _%tmp204353%_
                                                  _%args204302%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx212074212075%_))
                                      (let ((_%$%e204330204384%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx212074212075%_))))
                                        (let ((_%$%tl204332204389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204330204384%_)))
                                              (_%$%hd204331204387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204330204384%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd204331204387%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd204331204387%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204332204389%_))
                                                      (let ((_%$%e204333204392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204332204389%_))))
                (let ((_%$%tl204335204397%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204333204392%_)))
                      (_%$%hd204334204395%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204333204392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204335204397%_))
                      (_%__kont212076212077%_)
                      (_%__kont212080212081%_))))
              (_%__kont212080212081%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd204331204387%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl204332204389%_))
                                                          (let ((_%$%e204339204369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl204332204389%_))))
                    (let ((_%$%tl204341204374%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204339204369%_)))
                          (_%$%hd204340204372%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204339204369%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl204341204374%_))
                          (_%__kont212078212079%_)
                          (_%__kont212080212081%_))))
                  (_%__kont212080212081%_))
              (_%__kont212080212081%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212080212081%_))))
                                      (_%__kont212080212081%_)))))))
                      (if (pair? _%$%rest204303204311%_)
                          (let ((_%$%hd204308204408%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest204303204311%_)))
                                (_%$%tl204309204410%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest204303204311%_))))
                            (let* ((_%e204413%_ _%$%hd204308204408%_)
                                   (_%rest204415%_ _%$%tl204309204410%_))
                              (_%$%K204307204405%_
                               _%rest204415%_
                               _%e204413%_)))
                          (_%$%else204305204319%_)))))
              (_%$%g204218204239%_ _%$%g204219204242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204218204239%_
                                               _%$%g204219204242%_))))
                                      (_%$%g204218204239%_
                                       _%$%g204219204242%_))))
                              (_%$%g204218204239%_ _%$%g204219204242%_))))
                      (_%$%g204218204239%_ _%$%g204219204242%_)))))
          (_%$%g204217204417%_ _%stx204216%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self203994%_ _%stx203995%_)
        (let* ((_%$%g203997204022%_
                (lambda (_%$%g203998204019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203998204019%_))))
               (_%$%g203996204212%_
                (lambda (_%$%g203998204025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203998204025%_))
                      (let ((_%$%e204003204027%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203998204025%_))))
                        (let ((_%$%hd204004204030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204003204027%_)))
                              (_%$%tl204005204032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204003204027%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204005204032%_))
                              (let ((_%$%e204006204035%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204005204032%_))))
                                (let ((_%$%hd204007204038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204006204035%_)))
                                      (_%$%tl204008204040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204006204035%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204008204040%_))
                                      (let ((_%$%e204009204043%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204008204040%_))))
                                        (let ((_%$%hd204010204046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204009204043%_)))
                                              (_%$%tl204011204048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204009204043%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204011204048%_))
                                              (let ((_%$%e204012204051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204011204048%_))))
                                                (let ((_%$%hd204013204054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204012204051%_)))
                                                      (_%$%tl204014204056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204012204051%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204014204056%_))
                                                      (let ((_%$%e204015204059%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204014204056%_))))
                (let ((_%$%hd204016204062%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204015204059%_)))
                      (_%$%tl204017204064%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204015204059%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204017204064%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self203994%_
                                         _%$%hd204013204054%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self203994%_
                                               _%$%hd204016204062%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self203994%_
                                                     _%$%hd204010204046%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp204091%_ ((_%rest204094%_
                                              (cons _%$%hd204010204046%_
                                                    (cons _%$%hd204016204062%_
                                                          (cons _%$%hd204013204054%_
                                                                '()))))
                                             (_%bind204096%_ '())
                                             (_%args204097%_ '()))
                            (let* ((_%$%rest204098204106%_ _%rest204094%_)
                                   (_%$%else204100204114%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind204096%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp212439 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (foldr__0 cons __tmp212439 _%args204097%_)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K204102204200%_
                                    (lambda (_%rest204117%_ _%e204118%_)
                                      (let* ((_%__stx212120212121%_
                                              _%e204118%_)
                                             (_%$%g204123204141%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx212120212121%_)))))
                                        (let ((_%__kont212122212123%_
                                               (lambda ()
                                                 (_%lp204091%_
                                                  _%rest204117%_
                                                  _%bind204096%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e204118%_))
                                                        _%args204097%_))))
                                              (_%__kont212124212125%_
                                               (lambda ()
                                                 (_%lp204091%_
                                                  _%rest204117%_
                                                  _%bind204096%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e204118%_))
                                                        _%args204097%_))))
                                              (_%__kont212126212127%_
                                               (lambda ()
                                                 (let ((_%tmp204148%_
                                                        (let ((__tmp212440
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp212440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp204091%_
                                                    _%rest204117%_
                                                    (cons (cons _%tmp204148%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e204118%_))
                              '()))
                  _%bind204096%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp204148%_
                                                          _%args204097%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx212120212121%_))
                                              (let ((_%$%e204125204179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx212120212121%_))))
                                                (let ((_%$%tl204127204184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204125204179%_)))
                                                      (_%$%hd204126204182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204125204179%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd204126204182%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd204126204182%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl204127204184%_))
                      (let ((_%$%e204128204187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl204127204184%_))))
                        (let ((_%$%tl204130204192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204128204187%_)))
                              (_%$%hd204129204190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204128204187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl204130204192%_))
                              (_%__kont212122212123%_)
                              (_%__kont212126212127%_))))
                      (_%__kont212126212127%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd204126204182%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl204127204184%_))
                          (let ((_%$%e204134204164%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl204127204184%_))))
                            (let ((_%$%tl204136204169%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204134204164%_)))
                                  (_%$%hd204135204167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204134204164%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl204136204169%_))
                                  (_%__kont212124212125%_)
                                  (_%__kont212126212127%_))))
                          (_%__kont212126212127%_))
                      (_%__kont212126212127%_)))
              (_%__kont212126212127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212126212127%_)))))))
                              (if (pair? _%$%rest204098204106%_)
                                  (let ((_%$%hd204103204203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest204098204106%_)))
                                        (_%$%tl204104204205%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest204098204106%_))))
                                    (let* ((_%e204208%_ _%$%hd204103204203%_)
                                           (_%rest204210%_
                                            _%$%tl204104204205%_))
                                      (_%$%K204102204200%_
                                       _%rest204210%_
                                       _%e204208%_)))
                                  (_%$%else204100204114%_)))))
                      (_%$%g203997204022%_ _%$%g203998204025%_))))
              (_%$%g203997204022%_ _%$%g203998204025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203997204022%_
                                               _%$%g203998204025%_))))
                                      (_%$%g203997204022%_
                                       _%$%g203998204025%_))))
                              (_%$%g203997204022%_ _%$%g203998204025%_))))
                      (_%$%g203997204022%_ _%$%g203998204025%_)))))
          (_%$%g203996204212%_ _%stx203995%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self203833%_ _%stx203834%_)
        (letrec ((_%import-set-template203836%_
                  (lambda (_%in203939%_ _%phi203940%_)
                    (let ((_%iphi203942%_
                           (fx+ _%phi203940%_
                                (##direct-structure-ref
                                 _%in203939%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports203943%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in203939%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp203945%_ ((_%rest203947%_ _%imports203943%_)
                                         (_%r203948%_ '()))
                        (let* ((_%$%rest203949203957%_ _%rest203947%_)
                               (_%$%else203951203965%_ (lambda () _%r203948%_))
                               (_%$%K203953203982%_
                                (lambda (_%rest203968%_ _%in203969%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in203969%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi203942%_))
                                          (_%lp203945%_
                                           _%rest203968%_
                                           (cons _%in203969%_ _%r203948%_))
                                          (_%lp203945%_
                                           _%rest203968%_
                                           _%r203948%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in203969%_
                                             'gx#module-import::t))
                                          (let ((_%iphi203973%_
                                                 (fx+ _%phi203940%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in203969%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi203973%_))
                                                (_%lp203945%_
                                                 _%rest203968%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in203969%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r203948%_))
                                                (_%lp203945%_
                                                 _%rest203968%_
                                                 _%r203948%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in203969%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi203976%_
                                                     (fx+ _%iphi203942%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in203969%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi203976%_))
                                                    (_%lp203945%_
                                                     _%rest203968%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in203969%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r203948%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi203976%_))
                                                        (_%lp203945%_
                                                         _%rest203968%_
                                                         (let ((__tmp212441
                                                                (_%import-set-template203836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in203969%_
                         _%iphi203942%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r203948%_ __tmp212441)))
                (_%lp203945%_ _%rest203968%_ _%r203948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp203945%_
                                               _%rest203968%_
                                               _%r203948%_)))))))
                          (if (pair? _%$%rest203949203957%_)
                              (let ((_%$%hd203954203985%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest203949203957%_)))
                                    (_%$%tl203955203987%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest203949203957%_))))
                                (let* ((_%in203990%_ _%$%hd203954203985%_)
                                       (_%rest203992%_ _%$%tl203955203987%_))
                                  (_%$%K203953203982%_
                                   _%rest203992%_
                                   _%in203990%_)))
                              (_%$%else203951203965%_))))))))
          (let* ((_%$%g203838203848%_
                  (lambda (_%$%g203839203845%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203839203845%_))))
                 (_%$%g203837203936%_
                  (lambda (_%$%g203839203851%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203839203851%_))
                        (let ((_%$%e203841203853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203839203851%_))))
                          (let ((_%$%hd203842203856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203841203853%_)))
                                (_%$%tl203843203858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203841203853%_))))
                            (let ((_%ht203872%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp203874%_ ((_%rest203876%_
                                                  _%$%tl203843203858%_)
                                                 (_%loads203877%_ '()))
                                (letrec ((_%K203879%_
                                          (lambda (_%ctx203929%_
                                                   _%rest203930%_)
                                            (let ((_%id203932%_
                                                   (##structure-ref
                                                    _%ctx203929%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht203872%_
                                                     _%id203932%_))
                                                  (_%lp203874%_
                                                   _%rest203930%_
                                                   _%loads203877%_)
                                                  (let ((_%rt203934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id203932%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht203872%_
                                                       _%id203932%_
                                                       _%rt203934%_))
                                                    (_%lp203874%_
                                                     _%rest203930%_
                                                     (cons _%rt203934%_
                                                           _%loads203877%_))))))))
                                  (let* ((_%$%rest203880203888%_
                                          _%rest203876%_)
                                         (_%$%else203882203900%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp212443
                                                         (lambda (_%$%g203895203897%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g203895203897%_)))
                (__tmp212442 (reverse _%loads203877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp212443
                                                           __tmp212442)))))
                                         (_%$%K203884203917%_
                                          (lambda (_%rest203903%_ _%in203904%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in203904%_
                                                   'gx#module-context::t))
                                                (_%K203879%_
                                                 _%in203904%_
                                                 _%rest203903%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in203904%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in203904%_
                            '3
                            '#f
                            '#f)))
                (_%K203879%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in203904%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest203903%_)
                (_%lp203874%_ _%rest203903%_ _%loads203877%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in203904%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi203909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in203904%_ '2 '#f '#f))))
                  (if (fxzero? _%phi203909%_)
                      (_%K203879%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in203904%_ '1 '#f '#f))
                       _%rest203903%_)
                      (if (fxpositive? _%phi203909%_)
                          (let ((_%deps203913%_
                                 (_%import-set-template203836%_
                                  _%in203904%_
                                  '0)))
                            (_%lp203874%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest203903%_ _%deps203913%_))
                             _%loads203877%_))
                          (_%lp203874%_ _%rest203903%_ _%loads203877%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx203834%_
                   _%in203904%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest203880203888%_)
                                        (let ((_%$%hd203885203920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest203880203888%_)))
                                              (_%$%tl203886203922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest203880203888%_))))
                                          (let* ((_%in203925%_
                                                  _%$%hd203885203920%_)
                                                 (_%rest203927%_
                                                  _%$%tl203886203922%_))
                                            (_%$%K203884203917%_
                                             _%rest203927%_
                                             _%in203925%_)))
                                        (_%$%else203882203900%_))))))))
                        (_%$%g203838203848%_ _%$%g203839203851%_)))))
            (_%$%g203837203936%_ _%stx203834%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self203647%_ _%stx203648%_)
        (letrec ((_%add-lift!203650%_
                  (lambda (_%expr203831%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr203831%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote203651%_
                  (lambda (_%id203828%_ _%marks203829%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id203828%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks203829%_
                                                        '()))))))))
                 (_%generate-simple203652%_
                  (lambda (_%stxq203823%_)
                    (let ((_%gid203825%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid203826%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq203823%_))))
                      (_%add-lift!203650%_
                       (cons 'define
                             (cons _%gid203825%_
                                   (cons (_%generate-syntax-quote203651%_
                                          _%qid203826%_
                                          ''())
                                         '()))))
                      (let ((__tmp212444
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp212444 _%stxq203823%_ _%gid203825%_))
                      _%gid203825%_)))
                 (_%generate-serialized203653%_
                  (lambda (_%stxq203813%_ _%marks203814%_)
                    (let* ((_%mark-refs203816%_
                            (map _%generate-mark203654%_ _%marks203814%_))
                           (_%gid203818%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid203820%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq203813%_))))
                      (_%add-lift!203650%_
                       (cons 'define
                             (cons _%gid203818%_
                                   (cons (_%generate-syntax-quote203651%_
                                          _%qid203820%_
                                          (cons 'list _%mark-refs203816%_))
                                         '()))))
                      (let ((__tmp212445
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp212445 _%stxq203813%_ _%gid203818%_))
                      _%gid203818%_)))
                 (_%generate-mark203654%_
                  (lambda (_%mark203798%_)
                    (let ((_%$e203800%_
                           (let ((__tmp212446
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp212446 _%mark203798%_))))
                      (if _%$e203800%_
                          _%$e203800%_
                          (let* ((_%gid203804%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr203806%_
                                  (_%serialize-mark203655%_ _%mark203798%_))
                                 (_%ctx203808%_
                                  (let ((__tmp212447
                                         (##structure-ref
                                          _%mark203798%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp212447)))
                                 (_%ctx-ref203810%_
                                  (if (eq? _%ctx203808%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref203656%_
                                                               _%ctx203808%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp212448
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp212448
                               _%mark203798%_
                               _%gid203804%_))
                            (_%add-lift!203650%_
                             (cons 'define
                                   (cons _%gid203804%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr203806%_ '()))
                   (cons _%ctx-ref203810%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid203804%_)))))
                 (_%serialize-mark203655%_
                  (lambda (_%mark203746%_)
                    (letrec ((_%quote-e203748%_
                              (lambda (_%sym203796%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym203796%_))
                                    _%sym203796%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym203796%_))))))
                      (let* ((_%$%mark203749203758%_ _%mark203746%_)
                             (_%$%E203751203761%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark203749203758%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K203752203773%_
                              (lambda (_%trace203764%_
                                       _%phi203765%_
                                       _%ctx203766%_
                                       _%subst203767%_)
                                (let ((_%subs203769%_
                                       (if _%subst203767%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst203767%_))
                                           '())))
                                  (cons _%phi203765%_
                                        (let ((__tmp212449
                                               (lambda (_%pair203771%_)
                                                 (cons (_%quote-e203748%_
                                                        (car _%pair203771%_))
                                                       (_%quote-e203748%_
                                                        (cdr _%pair203771%_))))))
                                          (declare (not safe))
                                          (##map __tmp212449
                                                 _%subs203769%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark203749203758%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e203753203776%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark203749203758%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst203779%_ _%$%e203753203776%_)
                                   (_%$%e203754203781%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark203749203758%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx203784%_ _%$%e203754203781%_)
                                   (_%$%e203755203786%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark203749203758%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi203789%_ _%$%e203755203786%_)
                                   (_%$%e203756203791%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark203749203758%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace203794%_ _%$%e203756203791%_))
                              (_%$%K203752203773%_
                               _%trace203794%_
                               _%phi203789%_
                               _%ctx203784%_
                               _%subst203779%_))
                            (_%$%E203751203761%_))))))
                 (_%context-ref203656%_
                  (lambda (_%ctx203733%_)
                    (if (let ((__tmp212450
                               (##structure-ref
                                _%ctx203733%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp212450
                           'gx#module-context::t))
                        (let ((_%ctx-ref203735%_
                               (_%context-ref-nested203658%_ _%ctx203733%_))
                              (_%ctx-origin203736%_
                               (_%context-ref-origin203657%_ _%ctx203733%_))
                              (_%origin203737%_
                               (_%context-ref-origin203657%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin203737%_ _%ctx-origin203736%_)
                              (let ((_%ref203739%_
                                     (_%context-ref-nested203658%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp203741%_ ((_%ref203743%_
                                                    (cdr _%ref203739%_))
                                                   (_%ctx-ref203744%_
                                                    (cdr _%ctx-ref203735%_)))
                                  (if (and (pair? _%ref203743%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref203743%_))
                                                (car _%ctx-ref203744%_)))
                                      (_%lp203741%_
                                       (cdr _%ref203743%_)
                                       (cdr _%ctx-ref203744%_))
                                      (cons '#f _%ctx-ref203744%_))))
                              _%ctx-ref203735%_))
                        (let ((__tmp212451
                               (##structure-ref
                                _%ctx203733%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp212451)))))
                 (_%context-ref-origin203657%_
                  (lambda (_%ctx203725%_)
                    (let _%lp203727%_ ((_%ctx203729%_ _%ctx203725%_))
                      (let ((_%super203731%_
                             (##structure-ref
                              _%ctx203729%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super203731%_
                               'gx#module-context::t))
                            (_%lp203727%_ _%super203731%_)
                            _%ctx203729%_)))))
                 (_%context-ref-nested203658%_
                  (lambda (_%ctx203716%_)
                    (let _%lp203718%_ ((_%ctx203720%_ _%ctx203716%_)
                                       (_%r203721%_ '()))
                      (let ((_%super203723%_
                             (##structure-ref
                              _%ctx203720%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super203723%_
                               'gx#module-context::t))
                            (_%lp203718%_
                             _%super203723%_
                             (cons (car (##structure-ref
                                         _%ctx203720%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r203721%_))
                            (cons (let ((__tmp212452
                                         (##structure-ref
                                          _%ctx203720%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp212452))
                                  _%r203721%_)))))))
          (let* ((_%$%g203660203673%_
                  (lambda (_%$%g203661203670%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203661203670%_))))
                 (_%$%g203659203713%_
                  (lambda (_%$%g203661203676%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203661203676%_))
                        (let ((_%$%e203663203678%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203661203676%_))))
                          (let ((_%$%hd203664203681%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203663203678%_)))
                                (_%$%tl203665203683%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203663203678%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl203665203683%_))
                                (let ((_%$%e203666203686%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl203665203683%_))))
                                  (let ((_%$%hd203667203689%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203666203686%_)))
                                        (_%$%tl203668203691%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203666203686%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203668203691%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd203667203689%_))
                                            (let ((_%$e203707%_
                                                   (let ((__tmp212453
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp212453
                                                      _%$%hd203667203689%_))))
                                              (if _%$e203707%_
                                                  _%$e203707%_
                                                  (let ((_%marks203711%_
                                                         (##direct-structure-ref
                                                          _%$%hd203667203689%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks203711%_)
                                                        (_%generate-simple203652%_
                                                         _%$%hd203667203689%_)
                                                        (_%generate-serialized203653%_
                                                         _%$%hd203667203689%_
                                                         _%marks203711%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd203667203689%_)))
                                        (_%$%g203660203673%_
                                         _%$%g203661203676%_))))
                                (_%$%g203660203673%_ _%$%g203661203676%_))))
                        (_%$%g203660203673%_ _%$%g203661203676%_)))))
            (_%$%g203659203713%_ _%stx203648%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self203579%_ _%stx203580%_)
        (let* ((_%$%g203582203599%_
                (lambda (_%$%g203583203596%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203583203596%_))))
               (_%$%g203581203644%_
                (lambda (_%$%g203583203602%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203583203602%_))
                      (let ((_%$%e203586203604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203583203602%_))))
                        (let ((_%$%hd203587203607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203586203604%_)))
                              (_%$%tl203588203609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203586203604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203588203609%_))
                              (let ((_%$%e203589203612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203588203609%_))))
                                (let ((_%$%hd203590203615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203589203612%_)))
                                      (_%$%tl203591203617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203589203612%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203591203617%_))
                                      (let ((_%$%e203592203620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203591203617%_))))
                                        (let ((_%$%hd203593203623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203592203620%_)))
                                              (_%$%tl203594203625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203592203620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203594203625%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd203590203615%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self203579%_
                           _%$%hd203593203623%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203582203599%_
                                               _%$%g203583203602%_))))
                                      (_%$%g203582203599%_
                                       _%$%g203583203602%_))))
                              (_%$%g203582203599%_ _%$%g203583203602%_))))
                      (_%$%g203582203599%_ _%$%g203583203602%_)))))
          (_%$%g203581203644%_ _%stx203580%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self203528%_ _%stx203529%_)
        (let* ((_%$%g203531203541%_
                (lambda (_%$%g203532203538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203532203538%_))))
               (_%$%g203530203576%_
                (lambda (_%$%g203532203544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203532203544%_))
                      (let ((_%$%e203534203546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203532203544%_))))
                        (let ((_%$%hd203535203549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203534203546%_)))
                              (_%$%tl203536203551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203534203546%_))))
                          (let* ((_%c-body203568%_
                                  (map (lambda (_%$%g203563203565%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self203528%_
                                            _%$%g203563203565%_)))
                                       _%$%tl203536203551%_))
                                 (_%c-body203573%_
                                  (let ((__tmp212454
                                         (lambda (_%$obj203570%_)
                                           (not (eq? _%$obj203570%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp212454 _%c-body203568%_))))
                            (cons '%#begin _%c-body203573%_))))
                      (_%$%g203531203541%_ _%$%g203532203544%_)))))
          (_%$%g203530203576%_ _%stx203529%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self203433%_ _%stx203434%_)
        (let* ((_%$%g203436203446%_
                (lambda (_%$%g203437203443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203437203443%_))))
               (_%$%g203435203525%_
                (lambda (_%$%g203437203449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203437203449%_))
                      (let ((_%$%e203439203451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203437203449%_))))
                        (let ((_%$%hd203440203454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203439203451%_)))
                              (_%$%tl203441203456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203439203451%_))))
                          (let* ((_%phi203469%_
                                  (let ((__tmp212455
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp212455 '1)))
                                 (_%block203471%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self203433%_ 'state))
                                   _%phi203469%_))
                                 (_%compiled203474%_
                                  (let ((__tmp212456
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self203433%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl203441203456%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp212456
                                     gx#current-expander-phi
                                     _%phi203469%_)))
                                 (_%$%g203477203487%_
                                  (lambda (_%$%g203478203484%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g203478203484%_))))
                                 (_%$%g203476203522%_
                                  (lambda (_%$%g203478203490%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g203478203490%_))
                                        (let ((_%$%e203480203492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g203478203490%_))))
                                          (let ((_%$%hd203481203495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203480203492%_)))
                                                (_%$%tl203482203497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203480203492%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd203481203495%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd203481203495%_))
                                                    (let ((_%c-body203517%_
                                                           (filter (lambda (_%$obj203514%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj203514%_ '#!void)))
                           _%$%tl203482203497%_)))
              (if _%block203471%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block203471%_
                                                            '()))
                                                '())))
                              _%c-body203517%_))
                  (if (null? _%c-body203517%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body203517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g203477203487%_
                                                     _%$%g203478203490%_))
                                                (_%$%g203477203487%_
                                                 _%$%g203478203490%_))))
                                        (_%$%g203477203487%_
                                         _%$%g203478203490%_)))))
                            (_%$%g203476203522%_ _%compiled203474%_))))
                      (_%$%g203436203446%_ _%$%g203437203449%_)))))
          (_%$%g203435203525%_ _%stx203434%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self203364%_ _%stx203365%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self203364%_ 'state)))
        (let* ((_%$%g203367203381%_
                (lambda (_%$%g203368203378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203368203378%_))))
               (_%$%g203366203430%_
                (lambda (_%$%g203368203384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203368203384%_))
                      (let ((_%$%e203371203386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203368203384%_))))
                        (let ((_%$%hd203372203389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203371203386%_)))
                              (_%$%tl203373203391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203371203386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203373203391%_))
                              (let ((_%$%e203374203394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203373203391%_))))
                                (let ((_%$%hd203375203397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203374203394%_)))
                                      (_%$%tl203376203399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203374203394%_))))
                                  (let ((_%key203416%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd203375203397%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key203416%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx203365%_
                                           _%$%hd203375203397%_
                                           _%key203416%_)))
                                    (let* ((_%ctx203418%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd203375203397%_)))
                                           (_%code203421%_
                                            (let ((__tmp212457
                                                   (lambda ()
                                                     (let ((__tmp212458
                                                            (##structure-ref
                                                             _%ctx203418%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self203364%_
                                                        __tmp212458)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp212457
                                               gx#current-expander-context
                                               _%ctx203418%_)))
                                           (_%rt203423%_
                                            (let ((__tmp212459
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp212459
                                               _%ctx203418%_)))
                                           (_%loader203425%_
                                            (if _%rt203423%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt203423%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid203427%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd203375203397%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self203364%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid203427%_
                                                  (cons _%code203421%_
                                                        _%loader203425%_)))))))
                              (_%$%g203367203381%_ _%$%g203368203384%_))))
                      (_%$%g203367203381%_ _%$%g203368203384%_)))))
          (_%$%g203366203430%_ _%stx203365%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx203351%_ _%context-chain203352%_)
        (let _%lp203354%_ ((_%ctx203356%_ _%ctx203351%_) (_%path203357%_ '()))
          (let ((_%super203359%_
                 (##structure-ref _%ctx203356%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super203359%_ _%context-chain203352%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx203356%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path203357%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super203359%_
                       'gx#module-context::t))
                    (_%lp203354%_
                     _%super203359%_
                     (cons (car (##structure-ref
                                 _%ctx203356%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path203357%_))
                    (cons (let ((__tmp212460
                                 (##structure-ref
                                  _%ctx203356%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp212460))
                          _%path203357%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp203344%_ ((_%ctx203346%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r203347%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx203346%_ 'gx#module-context::t))
              (_%lp203344%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx203346%_ '3 '#f '#f))
               (cons _%ctx203346%_ _%r203347%_))
              _%r203347%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self203109%_ _%stx203110%_)
        (letrec* ((_%context-chain203112%_ (gxc#current-context-chain))
                  (_%make-import-spec203113%_
                   (lambda (_%in203281%_)
                     (let* ((_%$%in203282203294%_ _%in203281%_)
                            (_%$%E203284203297%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in203282203294%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K203285203307%_
                             (lambda (_%phi203300%_
                                      _%name203301%_
                                      _%src-name203302%_
                                      _%src-phi203303%_
                                      _%src-key203304%_
                                      _%src-ctx203305%_)
                               (cons _%phi203300%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name203301%_))
                                           (cons _%src-phi203303%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name203302%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in203282203294%_
                              'gx#module-import::t))
                           (let ((_%$%e203286203310%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in203282203294%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e203286203310%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e203289203313%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203286203310%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx203316%_ _%$%e203289203313%_)
                                        (_%$%e203290203318%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203286203310%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key203321%_ _%$%e203290203318%_)
                                        (_%$%e203291203323%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203286203310%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi203326%_ _%$%e203291203323%_)
                                        (_%$%e203292203328%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203286203310%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name203331%_
                                         _%$%e203292203328%_)
                                        (_%$%e203287203333%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in203282203294%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name203336%_ _%$%e203287203333%_)
                                        (_%$%e203288203338%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in203282203294%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi203341%_ _%$%e203288203338%_))
                                   (_%$%K203285203307%_
                                    _%phi203341%_
                                    _%name203336%_
                                    _%src-name203331%_
                                    _%src-phi203326%_
                                    _%src-key203321%_
                                    _%src-ctx203316%_))
                                 (_%$%E203284203297%_)))
                           (_%$%E203284203297%_)))))
                  (_%make-import-path203114%_
                   (lambda (_%ctx203279%_)
                     (gxc#generate-meta-import-path
                      _%ctx203279%_
                      _%context-chain203112%_)))
                  (_%make-import-spec-in203115%_
                   (lambda (_%ctx203276%_ _%in203277%_)
                     (cons 'spec:
                           (cons (_%make-import-path203114%_ _%ctx203276%_)
                                 (reverse _%in203277%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self203109%_ 'state)))
          (let* ((_%$%g203117203127%_
                  (lambda (_%$%g203118203124%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203118203124%_))))
                 (_%$%g203116203273%_
                  (lambda (_%$%g203118203130%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203118203130%_))
                        (let ((_%$%e203120203132%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203118203130%_))))
                          (let ((_%$%hd203121203135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203120203132%_)))
                                (_%$%tl203122203137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203120203132%_))))
                            (let _%lp203151%_ ((_%rest203153%_
                                                _%$%tl203122203137%_)
                                               (_%current-src203154%_ '#f)
                                               (_%current-in203155%_ '())
                                               (_%r203156%_ '()))
                              (let* ((_%$%rest203157203165%_ _%rest203153%_)
                                     (_%$%else203159203175%_
                                      (lambda ()
                                        (let ((_%r203173%_
                                               (if _%current-src203154%_
                                                   (cons (_%make-import-spec-in203115%_
                                                          _%current-src203154%_
                                                          _%current-in203155%_)
                                                         _%r203156%_)
                                                   _%r203156%_)))
                                          (cons '%#import
                                                (reverse _%r203173%_)))))
                                     (_%$%K203161203261%_
                                      (lambda (_%rest203178%_ _%in203179%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in203179%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in203181203188%_
                                                    _%in203179%_)
                                                   (_%$%E203183203191%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in203181203188%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K203184203199%_
                                                    (lambda (_%src-ctx203194%_)
                                                      (if (eq? _%current-src203154%_
                                                               _%src-ctx203194%_)
                                                          (_%lp203151%_
                                                           _%rest203178%_
                                                           _%current-src203154%_
                                                           (cons (_%make-import-spec203113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in203179%_)
                         _%current-in203155%_)
                   _%r203156%_)
                  (if _%current-src203154%_
                      (_%lp203151%_
                       _%rest203178%_
                       _%src-ctx203194%_
                       (cons (_%make-import-spec203113%_ _%in203179%_) '())
                       (cons (_%make-import-spec-in203115%_
                              _%current-src203154%_
                              _%current-in203155%_)
                             _%r203156%_))
                      (_%lp203151%_
                       _%rest203178%_
                       _%src-ctx203194%_
                       (cons (_%make-import-spec203113%_ _%in203179%_) '())
                       _%r203156%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e203185203202%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in203181203188%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e203185203202%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e203186203205%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e203185203202%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx203208%_
                                                          _%$%e203186203205%_))
                                                    (_%$%K203184203199%_
                                                     _%src-ctx203208%_))
                                                  (_%$%E203183203191%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in203179%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi203211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in203179%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src203213%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in203179%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in203253%_
                                                        (let* ((_%$%g203214203223%_
                                                                (_%make-import-path203114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src203213%_))
                       (_%$%E203217203227%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g203214203223%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K203219203243%_
                         (lambda (_%path203241%_) _%path203241%_))
                        (_%$%K203218203233%_
                         (lambda (_%path203231%_) (cons 'in: _%path203231%_))))
                    (if (pair? _%$%g203214203223%_)
                        (let ((_%$%tl203221203248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g203214203223%_)))
                              (_%$%hd203220203246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g203214203223%_))))
                          (if (null? _%$%tl203221203248%_)
                              (let ((_%path203251%_ _%$%hd203220203246%_))
                                (_%$%K203219203243%_ _%path203251%_))
                              (let ((_%path203236%_ _%$%g203214203223%_))
                                (_%$%K203218203233%_ _%path203236%_))))
                        (let ((_%path203236%_ _%$%g203214203223%_))
                          (_%$%K203218203233%_ _%path203236%_))))))
               (_%r203255%_
                (if _%current-src203154%_
                    (cons (_%make-import-spec-in203115%_
                           _%current-src203154%_
                           _%current-in203155%_)
                          _%r203156%_)
                    _%r203156%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp203151%_
                                                   _%rest203178%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi203211%_)
                                                             _%src-in203253%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi203211%_ (cons _%src-in203253%_ '()))))
                 _%r203255%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in203179%_
                                                       'gx#module-context::t))
                                                    (let ((_%r203259%_
                                                           (if _%current-src203154%_
                                                               (cons (_%make-import-spec-in203115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src203154%_
                              _%current-in203155%_)
                             _%r203156%_)
                       _%r203156%_)))
              (_%lp203151%_
               _%rest203178%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path203114%_ _%in203179%_))
                     _%r203259%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest203157203165%_)
                                    (let ((_%$%hd203162203264%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest203157203165%_)))
                                          (_%$%tl203163203266%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest203157203165%_))))
                                      (let* ((_%in203269%_
                                              _%$%hd203162203264%_)
                                             (_%rest203271%_
                                              _%$%tl203163203266%_))
                                        (_%$%K203161203261%_
                                         _%rest203271%_
                                         _%in203269%_)))
                                    (_%$%else203159203175%_))))))
                        (_%$%g203117203127%_ _%$%g203118203130%_)))))
            (_%$%g203116203273%_ _%stx203110%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self202919%_ _%stx202920%_)
        (letrec* ((_%context-chain202922%_ (gxc#current-context-chain))
                  (_%make-import-path202923%_
                   (lambda (_%ctx203107%_)
                     (gxc#generate-meta-import-path
                      _%ctx203107%_
                      _%context-chain202922%_))))
          (let* ((_%$%g202925202935%_
                  (lambda (_%$%g202926202932%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202926202932%_))))
                 (_%$%g202924203104%_
                  (lambda (_%$%g202926202938%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202926202938%_))
                        (let ((_%$%e202928202940%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202926202938%_))))
                          (let ((_%$%hd202929202943%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202928202940%_)))
                                (_%$%tl202930202945%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202928202940%_))))
                            (let _%lp202959%_ ((_%rest202961%_
                                                _%$%tl202930202945%_)
                                               (_%r202962%_ '()))
                              (let* ((_%$%rest202963202971%_ _%rest202961%_)
                                     (_%$%else202965202979%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r202962%_))))
                                     (_%$%K202967203092%_
                                      (lambda (_%rest202982%_ _%out202983%_)
                                        (let* ((_%$%out202984202997%_
                                                _%out202983%_)
                                               (_%$%E202987203001%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out202984202997%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K202991203071%_
                                                 (lambda (_%name203067%_
                                                          _%phi203068%_
                                                          _%key203069%_)
                                                   (_%lp202959%_
                                                    _%rest202982%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi203068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key203069%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name203067%_))
                                          '()))))
                  _%r202962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K202988203051%_
                                                 (lambda (_%phi203005%_
                                                          _%src203006%_)
                                                   (let* ((_%out203046%_
                                                           (if _%src203006%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g203007203016%_
                                           (_%make-import-path202923%_
                                            _%src203006%_))
                                          (_%$%E203010203020%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g203007203016%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K203012203036%_
                                            (lambda (_%path203034%_)
                                              _%path203034%_))
                                           (_%$%K203011203026%_
                                            (lambda (_%path203024%_)
                                              (cons 'in: _%path203024%_))))
                                       (if (pair? _%$%g203007203016%_)
                                           (let ((_%$%tl203014203041%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g203007203016%_)))
                                                 (_%$%hd203013203039%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g203007203016%_))))
                                             (if (null? _%$%tl203014203041%_)
                                                 (let ((_%path203044%_
                                                        _%$%hd203013203039%_))
                                                   (_%$%K203012203036%_
                                                    _%path203044%_))
                                                 (let ((_%path203029%_
                                                        _%$%g203007203016%_))
                                                   (_%$%K203011203026%_
                                                    _%path203029%_))))
                                           (let ((_%path203029%_
                                                  _%$%g203007203016%_))
                                             (_%$%K203011203026%_
                                              _%path203029%_)))))
                                   '()))
                       '#t))
                  (_%out203048%_
                   (if (fxzero? _%phi203005%_)
                       _%out203046%_
                       (cons 'phi:
                             (cons _%phi203005%_ (cons _%out203046%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp202959%_
                                                      _%rest202982%_
                                                      (cons _%out203048%_
                                                            _%r202962%_))))))
                                            (let ((_%$%try-match202986203064%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out202984202997%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e202989203054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out202984202997%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e202990203059%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out202984202997%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src203057%_ _%$%e202989203054%_)
                         (_%phi203062%_ _%$%e202990203059%_))
                     (_%$%K202988203051%_ _%phi203062%_ _%src203057%_)))
                 (_%$%E202987203001%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out202984202997%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e202992203074%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out202984202997%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e202993203077%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out202984202997%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e202994203082%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out202984202997%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e202995203087%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out202984202997%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key203080%_
                                                           _%$%e202993203077%_)
                                                          (_%phi203085%_
                                                           _%$%e202994203082%_)
                                                          (_%name203090%_
                                                           _%$%e202995203087%_))
                                                      (_%$%K202991203071%_
                                                       _%name203090%_
                                                       _%phi203085%_
                                                       _%key203080%_)))
                                                  (_%$%try-match202986203064%_))))))))
                                (if (pair? _%$%rest202963202971%_)
                                    (let ((_%$%hd202968203095%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest202963202971%_)))
                                          (_%$%tl202969203097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest202963202971%_))))
                                      (let* ((_%out203100%_
                                              _%$%hd202968203095%_)
                                             (_%rest203102%_
                                              _%$%tl202969203097%_))
                                        (_%$%K202967203092%_
                                         _%rest203102%_
                                         _%out203100%_)))
                                    (_%$%else202965202979%_))))))
                        (_%$%g202925202935%_ _%$%g202926202938%_)))))
            (_%$%g202924203104%_ _%stx202920%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self202880%_ _%stx202881%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self202880%_ 'state)))
        (let* ((_%$%g202883202893%_
                (lambda (_%$%g202884202890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202884202890%_))))
               (_%$%g202882202916%_
                (lambda (_%$%g202884202896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202884202896%_))
                      (let ((_%$%e202886202898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202884202896%_))))
                        (let ((_%$%hd202887202901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202886202898%_)))
                              (_%$%tl202888202903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202886202898%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl202888202903%_))))
                      (_%$%g202883202893%_ _%$%g202884202896%_)))))
          (_%$%g202882202916%_ _%stx202881%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self202755%_ _%stx202756%_)
        (letrec ((_%generate1202758%_
                  (lambda (_%id202875%_ _%eid202876%_)
                    (let ((_%eid202878%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid202876%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid202878%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx202756%_
                             _%eid202878%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id202875%_))
                            (cons _%eid202878%_ '()))))))
          (let* ((_%$%g202760202788%_
                  (lambda (_%$%g202761202785%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202761202785%_))))
                 (_%$%g202759202872%_
                  (lambda (_%$%g202761202791%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202761202791%_))
                        (let ((_%$%e202764202793%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202761202791%_))))
                          (let ((_%$%hd202765202796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202764202793%_)))
                                (_%$%tl202766202798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202764202793%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl202766202798%_))
                                (let ((_g212461_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl202766202798%_
                                          '0))))
                                  (begin
                                    (let ((_g212462_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g212461_)
                                                 (##values-length _g212461_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g212462_ 2)))
                                          (error "Context expects 2 values"
                                                 _g212462_)))
                                    (let ((_%$%target202767202801%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212461_ 0)))
                                          (_%$%tl202769202803%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212461_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl202769202803%_))
                                          (letrec ((_%$%loop202770202806%_
                                                    (lambda (_%$%hd202768202809%_
                                                             _%$%eid202774202811%_
                                                             _%$%id202775202812%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd202768202809%_))
                                                          (let ((_%$%e202771202814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd202768202809%_))))
                    (let ((_%$%lp-hd202772202817%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e202771202814%_)))
                          (_%$%lp-tl202773202819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e202771202814%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd202772202817%_))
                          (let ((_%$%e202778202822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd202772202817%_))))
                            (let ((_%$%hd202779202825%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202778202822%_)))
                                  (_%$%tl202780202827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202778202822%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl202780202827%_))
                                  (let ((_%$%e202781202830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl202780202827%_))))
                                    (let ((_%$%hd202782202833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e202781202830%_)))
                                          (_%$%tl202783202835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e202781202830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl202783202835%_))
                                          (_%$%loop202770202806%_
                                           _%$%lp-tl202773202819%_
                                           (cons _%$%hd202782202833%_
                                                 _%$%eid202774202811%_)
                                           (cons _%$%hd202779202825%_
                                                 _%$%id202775202812%_))
                                          (_%$%g202760202788%_
                                           _%$%g202761202791%_))))
                                  (_%$%g202760202788%_ _%$%g202761202791%_))))
                          (_%$%g202760202788%_ _%$%g202761202791%_))))
                  (let ((_%$%eid202776202838%_ (reverse _%$%eid202774202811%_))
                        (_%$%id202777202839%_ (reverse _%$%id202775202812%_)))
                    (cons '%#extern
                          (map _%generate1202758%_
                               (let ((__tmp212463
                                      (lambda (_%$%g202857202860%_
                                               _%$%g202858202862%_)
                                        (cons _%$%g202857202860%_
                                              _%$%g202858202862%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp212463
                                  '()
                                  _%$%id202777202839%_))
                               (let ((__tmp212464
                                      (lambda (_%$%g202864202867%_
                                               _%$%g202865202869%_)
                                        (cons _%$%g202864202867%_
                                              _%$%g202865202869%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp212464
                                  '()
                                  _%$%eid202776202838%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop202770202806%_
                                             _%$%target202767202801%_
                                             '()
                                             '()))
                                          (_%$%g202760202788%_
                                           _%$%g202761202791%_)))))
                                (_%$%g202760202788%_ _%$%g202761202791%_))))
                        (_%$%g202760202788%_ _%$%g202761202791%_)))))
            (_%$%g202759202872%_ _%stx202756%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self202683%_ _%stx202684%_)
        (let* ((_%$%g202686202703%_
                (lambda (_%$%g202687202700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202687202700%_))))
               (_%$%g202685202752%_
                (lambda (_%$%g202687202706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202687202706%_))
                      (let ((_%$%e202690202708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202687202706%_))))
                        (let ((_%$%hd202691202711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202690202708%_)))
                              (_%$%tl202692202713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202690202708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202692202713%_))
                              (let ((_%$%e202693202716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202692202713%_))))
                                (let ((_%$%hd202694202719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202693202716%_)))
                                      (_%$%tl202695202721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202693202716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202695202721%_))
                                      (let ((_%$%e202696202724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202695202721%_))))
                                        (let ((_%$%hd202697202727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202696202724%_)))
                                              (_%$%tl202698202729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202696202724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202698202729%_))
                                              (let ((_%ident202748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd202694202719%_)))
                                                    (_%eid202749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd202697202727%_)))
                                                    (_%props202750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd202694202719%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident202748%_
                                                            (cons _%eid202749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props202750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202686202703%_
                                               _%$%g202687202706%_))))
                                      (_%$%g202686202703%_
                                       _%$%g202687202706%_))))
                              (_%$%g202686202703%_ _%$%g202687202706%_))))
                      (_%$%g202686202703%_ _%$%g202687202706%_)))))
          (_%$%g202685202752%_ _%stx202684%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self202472%_ _%stx202473%_)
        (letrec ((_%generate1202475%_
                  (lambda (_%id202677%_)
                    (let ((_%eid202679%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id202677%_)))
                          (_%ident202680%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id202677%_)))
                          (_%props202681%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id202677%_))))
                      (cons '%#define-runtime
                            (cons _%ident202680%_
                                  (cons _%eid202679%_ _%props202681%_))))))
                 (_%generate*202476%_
                  (lambda (_%all202645%_)
                    (let* ((_%$%all202646202654%_ _%all202645%_)
                           (_%$%else202648202662%_
                            (lambda () (cons '%#begin _%all202645%_)))
                           (_%$%K202650202667%_
                            (lambda (_%one202665%_) _%one202665%_)))
                      (if (pair? _%$%all202646202654%_)
                          (let ((_%$%hd202651202670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all202646202654%_)))
                                (_%$%tl202652202672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all202646202654%_))))
                            (let ((_%one202675%_ _%$%hd202651202670%_))
                              (if (null? _%$%tl202652202672%_)
                                  (_%$%K202650202667%_ _%one202675%_)
                                  (_%$%else202648202662%_))))
                          (_%$%else202648202662%_))))))
          (let* ((_%$%g202478202495%_
                  (lambda (_%$%g202479202492%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202479202492%_))))
                 (_%$%g202477202642%_
                  (lambda (_%$%g202479202498%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202479202498%_))
                        (let ((_%$%e202482202500%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202479202498%_))))
                          (let ((_%$%hd202483202503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202482202500%_)))
                                (_%$%tl202484202505%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202482202500%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl202484202505%_))
                                (let ((_%$%e202485202508%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl202484202505%_))))
                                  (let ((_%$%hd202486202511%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202485202508%_)))
                                        (_%$%tl202487202513%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202485202508%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202487202513%_))
                                        (let ((_%$%e202488202516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202487202513%_))))
                                          (let ((_%$%hd202489202519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202488202516%_)))
                                                (_%$%tl202490202521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202488202516%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202490202521%_))
                                                (let _%lp202541%_ ((_%rest202543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd202486202511%_)
                           (_%r202544%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx212199212200%_
                                                          _%rest202543%_)
                                                         (_%$%g202549202566%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx212199212200%_)))))
                                                    (let ((_%__kont212201212202%_
                                                           (lambda (_%$%g202551202629%_)
                                                             (_%lp202541%_
                                                              _%$%g202551202629%_
                                                              _%r202544%_)))
                                                          (_%__kont212203212204%_
                                                           (lambda (_%$%g202556202602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g202557202603%_)
                     (_%lp202541%_
                      _%$%g202556202602%_
                      (cons (_%generate1202475%_ _%$%g202557202603%_)
                            _%r202544%_))))
                  (_%__kont212205212206%_
                   (lambda (_%$%g202561202578%_)
                     (_%generate*202476%_
                      (let ((__tmp212465
                             (cons (_%generate1202475%_ _%$%g202561202578%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp212465 _%r202544%_)))))
                  (_%__kont212207212208%_
                   (lambda () (_%generate*202476%_ (reverse! _%r202544%_)))))
              (let ((_%$%g202547202589%_
                     (lambda ()
                       (let ((_%$%g202561202578%_ _%__stx212199212200%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g202561202578%_))
                             (_%__kont212205212206%_ _%$%g202561202578%_)
                             (_%__kont212207212208%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx212199212200%_))
                    (let ((_%$%e202552202618%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx212199212200%_))))
                      (let ((_%$%tl202554202623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e202552202618%_)))
                            (_%$%hd202553202621%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e202552202618%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd202553202621%_))
                            (let ((_%$%e202555202626%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd202553202621%_))))
                              (if (equal? _%$%e202555202626%_ '#f)
                                  (_%__kont212201212202%_ _%$%tl202554202623%_)
                                  (_%__kont212203212204%_
                                   _%$%tl202554202623%_
                                   _%$%hd202553202621%_)))
                            (_%__kont212203212204%_
                             _%$%tl202554202623%_
                             _%$%hd202553202621%_))))
                    (_%$%g202547202589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g202478202495%_
                                                 _%$%g202479202498%_))))
                                        (_%$%g202478202495%_
                                         _%$%g202479202498%_))))
                                (_%$%g202478202495%_ _%$%g202479202498%_))))
                        (_%$%g202478202495%_ _%$%g202479202498%_)))))
            (_%$%g202477202642%_ _%stx202473%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self202369%_ _%stx202370%_)
        (let* ((_%$%g202372202389%_
                (lambda (_%$%g202373202386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202373202386%_))))
               (_%$%g202371202469%_
                (lambda (_%$%g202373202392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202373202392%_))
                      (let ((_%$%e202376202394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202373202392%_))))
                        (let ((_%$%hd202377202397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202376202394%_)))
                              (_%$%tl202378202399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202376202394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202378202399%_))
                              (let ((_%$%e202379202402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202378202399%_))))
                                (let ((_%$%hd202380202405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202379202402%_)))
                                      (_%$%tl202381202407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202379202402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202381202407%_))
                                      (let ((_%$%e202382202410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202381202407%_))))
                                        (let ((_%$%hd202383202413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202382202410%_)))
                                              (_%$%tl202384202415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202382202410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202384202415%_))
                                              (let* ((_%eid202434%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd202380202405%_)))
                                                     (_%phi202436%_
                                                      (let ((__tmp212466
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp212466 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block202438%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self202369%_
                                                          'state))
                                                       _%phi202436%_)))
                                                (let* ((_%$%g202441202448%_
                                                        (lambda (_%$%g202442202445%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g202442202445%_))))
                                                       (_%$%g202440202466%_
                                                        (lambda (_%$%g202442202451%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self202369%_
                                                              'state))
                                                           _%phi202436%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g202442202451%_
                               (cons _%$%hd202383202413%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202440202466%_
                                                   _%eid202434%_))
                                                (if _%block202438%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block202438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd202380202405%_))
                                          (cons _%eid202434%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd202380202405%_))
                        (cons _%eid202434%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202372202389%_
                                               _%$%g202373202392%_))))
                                      (_%$%g202372202389%_
                                       _%$%g202373202392%_))))
                              (_%$%g202372202389%_ _%$%g202373202392%_))))
                      (_%$%g202372202389%_ _%$%g202373202392%_)))))
          (_%$%g202371202469%_ _%stx202370%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self202301%_ _%stx202302%_)
        (let* ((_%$%g202304202321%_
                (lambda (_%$%g202305202318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202305202318%_))))
               (_%$%g202303202366%_
                (lambda (_%$%g202305202324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202305202324%_))
                      (let ((_%$%e202308202326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202305202324%_))))
                        (let ((_%$%hd202309202329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202308202326%_)))
                              (_%$%tl202310202331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202308202326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202310202331%_))
                              (let ((_%$%e202311202334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202310202331%_))))
                                (let ((_%$%hd202312202337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202311202334%_)))
                                      (_%$%tl202313202339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202311202334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202313202339%_))
                                      (let ((_%$%e202314202342%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202313202339%_))))
                                        (let ((_%$%hd202315202345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202314202342%_)))
                                              (_%$%tl202316202347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202314202342%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202316202347%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd202312202337%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd202315202345%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202304202321%_
                                               _%$%g202305202324%_))))
                                      (_%$%g202304202321%_
                                       _%$%g202305202324%_))))
                              (_%$%g202304202321%_ _%$%g202305202324%_))))
                      (_%$%g202304202321%_ _%$%g202305202324%_)))))
          (_%$%g202303202366%_ _%stx202302%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self202298%_ _%stx202299%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self202298%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx202299%_)
        (gxc#generate-meta-define-values% _%self202298%_ _%stx202299%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self202295%_ _%stx202296%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self202295%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx202296%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp212468 (list)) (__tmp212467 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp212468
         '(src n open blocks)
         __tmp212467
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args202292%_
        (apply make-instance gxc#meta-state::t _%$args202292%_)))
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
      (lambda (_%self202278%_ _%ctx202279%_)
        (let ((_%self202282%_ _%self202278%_))
          (if (let ((__tmp212469
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202282%_))))
                (declare (not safe))
                (##fx< '4 __tmp212469))
              (begin
                (let ((__tmp212470
                       (let ((__tmp212471
                              (##structure-ref
                               _%ctx202279%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp212471))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202282%_
                   __tmp212470
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self202282%_ '1 '2 '#f '#f))
                (let ((__tmp212472
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202282%_
                   __tmp212472
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self202282%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp212473
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202282%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self202282%_
                       '4
                       __tmp212473))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp212475 (list)) (__tmp212474 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp212475
         '(ctx phi n code)
         __tmp212474
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args202153%_
        (apply make-instance gxc#meta-state-block::t _%$args202153%_)))
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
      (lambda (_%state202113%_ _%phi202114%_)
        (let* ((_%$%state202115202123%_ _%state202113%_)
               (_%$%E202117202126%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state202115202123%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K202118202135%_
                (lambda (_%open202129%_ _%n202130%_ _%src202131%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open202129%_ _%phi202114%_))
                      '#f
                      (let ((_%block-ref202133%_
                             (let ((__tmp212476 (number->string _%n202130%_)))
                               (declare (not safe))
                               (##string-append
                                _%src202131%_
                                '"~"
                                __tmp212476))))
                        (##structure-set!
                         _%state202113%_
                         (let () (declare (not safe)) (##fx+ _%n202130%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp212477
                               (let ((__tmp212478
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp212478
                                  _%phi202114%_
                                  _%n202130%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open202129%_ _%phi202114%_ __tmp212477))
                        _%block-ref202133%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state202115202123%_
                 'gxc#meta-state::t))
              (let* ((_%$%e202119202138%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state202115202123%_
                         '1
                         '#f
                         '#f)))
                     (_%src202141%_ _%$%e202119202138%_)
                     (_%$%e202120202143%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state202115202123%_
                         '2
                         '#f
                         '#f)))
                     (_%n202146%_ _%$%e202120202143%_)
                     (_%$%e202121202148%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state202115202123%_
                         '3
                         '#f
                         '#f)))
                     (_%open202151%_ _%$%e202121202148%_))
                (_%$%K202118202135%_ _%open202151%_ _%n202146%_ _%src202141%_))
              (_%$%E202117202126%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state202107%_ _%phi202108%_ _%stx202109%_)
        (let ((_%block202111%_
               (let ((__tmp212479
                      (##structure-ref
                       _%state202107%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp212479 _%phi202108%_))))
          (##structure-set!
           _%block202111%_
           (cons _%stx202109%_
                 (##structure-ref
                  _%block202111%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state202101%_)
        (##structure-set!
         _%state202101%_
         (let ((__tmp212482
                (lambda (_%_202103%_ _%block202104%_ _%r202105%_)
                  (cons _%block202104%_ _%r202105%_)))
               (__tmp212481
                (##structure-ref _%state202101%_ '4 gxc#meta-state::t '#f))
               (__tmp212480
                (##structure-ref _%state202101%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp212482 __tmp212481 __tmp212480))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state202101%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state202054%_)
        (gxc#meta-state-end-phi! _%state202054%_)
        (let ((__tmp212484
               (lambda (_%block202056%_ _%r202057%_)
                 (let* ((_%$%block202058202067%_ _%block202056%_)
                        (_%$%E202060202070%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block202058202067%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K202061202078%_
                         (lambda (_%code202073%_
                                  _%n202074%_
                                  _%phi202075%_
                                  _%ctx202076%_)
                           (if (null? _%code202073%_)
                               _%r202057%_
                               (cons (cons _%ctx202076%_
                                           (cons _%phi202075%_
                                                 (cons _%n202074%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code202073%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r202057%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block202058202067%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e202062202081%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202058202067%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx202084%_ _%$%e202062202081%_)
                              (_%$%e202063202086%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202058202067%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi202089%_ _%$%e202063202086%_)
                              (_%$%e202064202091%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202058202067%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n202094%_ _%$%e202064202091%_)
                              (_%$%e202065202096%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202058202067%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code202099%_ _%$%e202065202096%_))
                         (_%$%K202061202078%_
                          _%code202099%_
                          _%n202094%_
                          _%phi202089%_
                          _%ctx202084%_))
                       (_%$%E202060202070%_)))))
              (__tmp212483
               (##structure-ref _%state202054%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp212484 '() __tmp212483))))
    (define gxc#collect-expression-refs
      (lambda (_%stx202050%_)
        (let ((_%ht202052%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht202052%_ _%stx202050%_)
          _%ht202052%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self201993%_ _%stx201994%_)
        (let* ((_%$%g201996202009%_
                (lambda (_%$%g201997202006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201997202006%_))))
               (_%$%g201995202047%_
                (lambda (_%$%g201997202012%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201997202012%_))
                      (let ((_%$%e201999202014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201997202012%_))))
                        (let ((_%$%hd202000202017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201999202014%_)))
                              (_%$%tl202001202019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201999202014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202001202019%_))
                              (let ((_%$%e202002202022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202001202019%_))))
                                (let ((_%$%hd202003202025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202002202022%_)))
                                      (_%$%tl202004202027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202002202022%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202004202027%_))
                                      (let* ((_%bind202042%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd202003202025%_)))
                                             (_%eid202044%_
                                              (if _%bind202042%_
                                                  (##structure-ref
                                                   _%bind202042%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd202003202025%_))))
                                             (__tmp212485
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self201993%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp212485
                                         _%eid202044%_
                                         _%eid202044%_))
                                      (_%$%g201996202009%_
                                       _%$%g201997202012%_))))
                              (_%$%g201996202009%_ _%$%g201997202012%_))))
                      (_%$%g201996202009%_ _%$%g201997202012%_)))))
          (_%$%g201995202047%_ _%stx201994%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self201920%_ _%stx201921%_)
        (let* ((_%$%g201923201940%_
                (lambda (_%$%g201924201937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201924201937%_))))
               (_%$%g201922201990%_
                (lambda (_%$%g201924201943%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201924201943%_))
                      (let ((_%$%e201927201945%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201924201943%_))))
                        (let ((_%$%hd201928201948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201927201945%_)))
                              (_%$%tl201929201950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201927201945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201929201950%_))
                              (let ((_%$%e201930201953%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201929201950%_))))
                                (let ((_%$%hd201931201956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201930201953%_)))
                                      (_%$%tl201932201958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201930201953%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201932201958%_))
                                      (let ((_%$%e201933201961%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201932201958%_))))
                                        (let ((_%$%hd201934201964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201933201961%_)))
                                              (_%$%tl201935201966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201933201961%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl201935201966%_))
                                              (let* ((_%bind201985%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd201931201956%_)))
                                                     (_%eid201987%_
                                                      (if _%bind201985%_
                                                          (##structure-ref
                                                           _%bind201985%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd201931201956%_)))))
                                                (let ((__tmp212486
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self201920%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp212486
                                                   _%eid201987%_
                                                   _%eid201987%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self201920%_
                                                   _%$%hd201934201964%_)))
                                              (_%$%g201923201940%_
                                               _%$%g201924201943%_))))
                                      (_%$%g201923201940%_
                                       _%$%g201924201943%_))))
                              (_%$%g201923201940%_ _%$%g201924201943%_))))
                      (_%$%g201923201940%_ _%$%g201924201943%_)))))
          (_%$%g201922201990%_ _%stx201921%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self201877%_ _%stx201878%_)
        (let* ((_%$%g201880201890%_
                (lambda (_%$%g201881201887%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201881201887%_))))
               (_%$%g201879201917%_
                (lambda (_%$%g201881201893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201881201893%_))
                      (let ((_%$%e201883201895%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201881201893%_))))
                        (let ((_%$%hd201884201898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201883201895%_)))
                              (_%$%tl201885201900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201883201895%_))))
                          (let ((__tmp212487
                                 (lambda (_%$%g201912201914%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self201877%_
                                      _%$%g201912201914%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp212487 _%$%tl201885201900%_))))
                      (_%$%g201880201890%_ _%$%g201881201893%_)))))
          (_%$%g201879201917%_ _%stx201878%_))))
    (define gxc#count-values-single%
      (lambda (_%self201874%_ _%stx201875%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self201742%_ _%stx201743%_)
        (let* ((_%__stx212229212230%_ _%stx201743%_)
               (_%$%g201746201775%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212229212230%_)))))
          (let ((_%__kont212231212232%_
                 (lambda (_%$%g201748201841%_ _%$%g201749201842%_)
                   (length (let ((__tmp212488
                                  (lambda (_%$%g201863201866%_
                                           _%$%g201864201868%_)
                                    (cons _%$%g201863201866%_
                                          _%$%g201864201868%_))))
                             (declare (not safe))
                             (foldr__0 __tmp212488 '() _%$%g201748201841%_)))))
                (_%__kont212235212236%_ (lambda () '#f)))
            (let ((_%__match212274212275%_
                   (lambda (_%$%e201750201787%_
                            _%$%hd201751201790%_
                            _%$%tl201752201792%_
                            _%$%e201753201795%_
                            _%$%hd201754201798%_
                            _%$%tl201755201800%_
                            _%$%e201756201803%_
                            _%$%hd201757201806%_
                            _%$%tl201758201808%_
                            _%$%e201759201811%_
                            _%$%hd201760201814%_
                            _%$%tl201761201816%_
                            _%__splice212233212234%_
                            _%$%target201762201819%_
                            _%$%tl201764201821%_)
                     (letrec ((_%$%loop201765201824%_
                               (lambda (_%$%hd201763201827%_
                                        _%$%rand201769201829%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd201763201827%_))
                                     (let ((_%$%e201766201831%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd201763201827%_))))
                                       (let ((_%$%lp-tl201768201836%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e201766201831%_)))
                                             (_%$%lp-hd201767201834%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e201766201831%_))))
                                         (_%$%loop201765201824%_
                                          _%$%lp-tl201768201836%_
                                          (cons _%$%lp-hd201767201834%_
                                                _%$%rand201769201829%_))))
                                     (let ((_%$%rand201770201839%_
                                            (reverse _%$%rand201769201829%_)))
                                       (let ((_%$%g201748201841%_
                                              _%$%rand201770201839%_)
                                             (_%$%g201749201842%_
                                              _%$%hd201760201814%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g201749201842%_
                                                'values))
                                             (_%__kont212231212232%_
                                              _%$%g201748201841%_
                                              _%$%g201749201842%_)
                                             (_%__kont212235212236%_))))))))
                       (_%$%loop201765201824%_
                        _%$%target201762201819%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212229212230%_))
                  (let ((_%$%e201750201787%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212229212230%_))))
                    (let ((_%$%tl201752201792%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e201750201787%_)))
                          (_%$%hd201751201790%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e201750201787%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl201752201792%_))
                          (let ((_%$%e201753201795%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl201752201792%_))))
                            (let ((_%$%tl201755201800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e201753201795%_)))
                                  (_%$%hd201754201798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e201753201795%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd201754201798%_))
                                  (let ((_%$%e201756201803%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd201754201798%_))))
                                    (let ((_%$%tl201758201808%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e201756201803%_)))
                                          (_%$%hd201757201806%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e201756201803%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd201757201806%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd201757201806%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl201758201808%_))
                                                  (let ((_%$%e201759201811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl201758201808%_))))
                                                    (let ((_%$%tl201761201816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e201759201811%_)))
                                                          (_%$%hd201760201814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e201759201811%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl201761201816%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl201755201800%_))
                      (let ((_%__splice212233212234%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl201755201800%_
                                '0))))
                        (let ((_%$%tl201764201821%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice212233212234%_ '1)))
                              (_%$%target201762201819%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice212233212234%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl201764201821%_))
                              (_%__match212274212275%_
                               _%$%e201750201787%_
                               _%$%hd201751201790%_
                               _%$%tl201752201792%_
                               _%$%e201753201795%_
                               _%$%hd201754201798%_
                               _%$%tl201755201800%_
                               _%$%e201756201803%_
                               _%$%hd201757201806%_
                               _%$%tl201758201808%_
                               _%$%e201759201811%_
                               _%$%hd201760201814%_
                               _%$%tl201761201816%_
                               _%__splice212233212234%_
                               _%$%target201762201819%_
                               _%$%tl201764201821%_)
                              (_%__kont212235212236%_))))
                      (_%__kont212235212236%_))
                  (_%__kont212235212236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212235212236%_))
                                              (_%__kont212235212236%_))
                                          (_%__kont212235212236%_))))
                                  (_%__kont212235212236%_))))
                          (_%__kont212235212236%_))))
                  (_%__kont212235212236%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self201647%_ _%stx201648%_)
        (let* ((_%$%g201650201671%_
                (lambda (_%$%g201651201668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201651201668%_))))
               (_%$%g201649201739%_
                (lambda (_%$%g201651201674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201651201674%_))
                      (let ((_%$%e201655201676%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201651201674%_))))
                        (let ((_%$%hd201656201679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201655201676%_)))
                              (_%$%tl201657201681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201655201676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201657201681%_))
                              (let ((_%$%e201658201684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201657201681%_))))
                                (let ((_%$%hd201659201687%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201658201684%_)))
                                      (_%$%tl201660201689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201658201684%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201660201689%_))
                                      (let ((_%$%e201661201692%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201660201689%_))))
                                        (let ((_%$%hd201662201695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201661201692%_)))
                                              (_%$%tl201663201697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201661201692%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl201663201697%_))
                                              (let ((_%$%e201664201700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl201663201697%_))))
                                                (let ((_%$%hd201665201703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201664201700%_)))
                                                      (_%$%tl201666201705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201664201700%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl201666201705%_))
                                                      (let ((_%$%c1201727201729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self201647%_
                        _%$%hd201662201695%_))))
                (if _%$%c1201727201729%_
                    (let* ((_%c1201731%_ _%$%c1201727201729%_)
                           (_%$%c2201732201734%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self201647%_
                               _%$%hd201665201703%_))))
                      (if _%$%c2201732201734%_
                          (let ((_%c2201736%_ _%$%c2201732201734%_))
                            (if (fx= _%c1201731%_ _%c2201736%_)
                                _%c1201731%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g201650201671%_ _%$%g201651201674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g201650201671%_
                                               _%$%g201651201674%_))))
                                      (_%$%g201650201671%_
                                       _%$%g201651201674%_))))
                              (_%$%g201650201671%_ _%$%g201651201674%_))))
                      (_%$%g201650201671%_ _%$%g201651201674%_)))))
          (_%$%g201649201739%_ _%stx201648%_))))))
