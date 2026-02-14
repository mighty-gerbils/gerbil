(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771036677)
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
      (let ((__tmp388548 (list gxc#::void::t))
            (__tmp388547 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp388548
         '()
         __tmp388547
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args387162%_
        (apply make-instance gxc#::collect-bindings::t _%$args387162%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp388549
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
        (__make-atomic-promise __tmp388549)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx387154%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self387157%_
                (let ((__obj388523
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj388523))
               (__tmp388550
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self387157%_ _%stx387154%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp388550
           gxc#current-compile-method
           _%self387157%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp388552 (list gxc#::void::t))
            (__tmp388551 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp388552
         '(modules)
         __tmp388551
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args387151%_
        (apply make-instance gxc#::lift-modules::t _%$args387151%_)))
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
      (let ((__tmp388553
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
        (__make-atomic-promise __tmp388553)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords387126%_ _%modules387123387127%_ _%stx387128%_)
        (let ((_%modules387131%_
               (if (eq? _%modules387123387127%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules387123387127%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self387133%_
                  (let ((__obj388525
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj388525
                       _%modules387131%_
                       '1
                       '#f
                       '#f))
                    __obj388525))
                 (__tmp388554
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self387133%_ _%stx387128%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp388554
             gxc#current-compile-method
             _%self387133%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords387140%_ . _%args387141%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords387140%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords387140%_
                  'modules:
                  absent-value))
               _%args387141%_)))
    (define gxc#apply-lift-modules
      (lambda _%args387124387147%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args387124387147%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp388556 (list)) (__tmp388555 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp388556
         '()
         __tmp388555
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args387119%_
        (apply make-instance gxc#::find-runtime-code::t _%$args387119%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp388557
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
        (__make-atomic-promise __tmp388557)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx387111%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self387114%_
                (let ((__obj388527
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj388527))
               (__tmp388558
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self387114%_ _%stx387111%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp388558
           gxc#current-compile-method
           _%self387114%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp388560 (list gxc#::false::t))
            (__tmp388559 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp388560
         '()
         __tmp388559
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args387108%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args387108%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp388561
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
        (__make-atomic-promise __tmp388561)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx387100%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self387103%_
                (let ((__obj388529
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj388529))
               (__tmp388562
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self387103%_ _%stx387100%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp388562
           gxc#current-compile-method
           _%self387103%_))))
    (define gxc#::count-values::t
      (let ((__tmp388564 (list gxc#::false-expression::t))
            (__tmp388563 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp388564
         '()
         __tmp388563
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args387097%_
        (apply make-instance gxc#::count-values::t _%$args387097%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp388565
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
        (__make-atomic-promise __tmp388565)))
    (define gxc#apply-count-values
      (lambda (_%stx387089%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self387092%_
                (let ((__obj388531
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj388531))
               (__tmp388566
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self387092%_ _%stx387089%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp388566
           gxc#current-compile-method
           _%self387092%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp388567 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp388567
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args387086%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args387086%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp388568
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
        (__make-atomic-promise __tmp388568)))
    (define gxc#::generate-loader::t
      (let ((__tmp388570 (list gxc#::generate-runtime-empty::t))
            (__tmp388569 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp388570
         '()
         __tmp388569
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args387082%_
        (apply make-instance gxc#::generate-loader::t _%$args387082%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp388571
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
        (__make-atomic-promise __tmp388571)))
    (define gxc#apply-generate-loader
      (lambda (_%stx387074%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self387077%_
                (let ((__obj388534
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj388534))
               (__tmp388572
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self387077%_ _%stx387074%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp388572
           gxc#current-compile-method
           _%self387077%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp388573 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp388573
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args387071%_
        (apply make-instance gxc#::generate-runtime::t _%$args387071%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp388574
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
        (__make-atomic-promise __tmp388574)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx387063%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self387066%_
                (let ((__obj388536
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj388536))
               (__tmp388575
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self387066%_ _%stx387063%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp388575
           gxc#current-compile-method
           _%self387066%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp388577 (list gxc#::generate-runtime::t))
            (__tmp388576 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp388577
         '()
         __tmp388576
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args387060%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args387060%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp388578
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
        (__make-atomic-promise __tmp388578)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx387052%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self387055%_
                (let ((__obj388538
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj388538))
               (__tmp388579
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self387055%_ _%stx387052%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp388579
           gxc#current-compile-method
           _%self387055%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp388580 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp388580
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args387049%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args387049%_)))
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
      (let ((__tmp388581
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
        (__make-atomic-promise __tmp388581)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords387024%_ _%table387021387025%_ _%stx387026%_)
        (let ((_%table387029%_
               (if (eq? _%table387021387025%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table387021387025%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self387031%_
                  (let ((__obj388540
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj388540
                       _%table387029%_
                       '1
                       '#f
                       '#f))
                    __obj388540))
                 (__tmp388582
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self387031%_ _%stx387026%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp388582
             gxc#current-compile-method
             _%self387031%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords387038%_ . _%args387039%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords387038%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords387038%_
                  'table:
                  absent-value))
               _%args387039%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args387022387045%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args387022387045%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp388584 (list gxc#::void-expression::t))
            (__tmp388583 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp388584
         '(state)
         __tmp388583
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args387017%_
        (apply make-instance gxc#::generate-meta::t _%$args387017%_)))
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
      (let ((__tmp388585
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
        (__make-atomic-promise __tmp388585)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords386992%_ _%state386989386993%_ _%stx386994%_)
        (let ((_%state386997%_
               (if (eq? _%state386989386993%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state386989386993%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self386999%_
                  (let ((__obj388542
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj388542
                       _%state386997%_
                       '1
                       '#f
                       '#f))
                    __obj388542))
                 (__tmp388586
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self386999%_ _%stx386994%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp388586
             gxc#current-compile-method
             _%self386999%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords387006%_ . _%args387007%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords387006%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords387006%_
                  'state:
                  absent-value))
               _%args387007%_)))
    (define gxc#apply-generate-meta
      (lambda _%args386990387013%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args386990387013%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp388588 (list)) (__tmp388587 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp388588
         '(state)
         __tmp388587
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args386985%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args386985%_)))
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
      (let ((__tmp388589
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
        (__make-atomic-promise __tmp388589)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords386960%_ _%state386957386961%_ _%stx386962%_)
        (let ((_%state386965%_
               (if (eq? _%state386957386961%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state386957386961%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self386967%_
                  (let ((__obj388544
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj388544
                       _%state386965%_
                       '1
                       '#f
                       '#f))
                    __obj388544))
                 (__tmp388590
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self386967%_ _%stx386962%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp388590
             gxc#current-compile-method
             _%self386967%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords386974%_ . _%args386975%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords386974%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords386974%_
                  'state:
                  absent-value))
               _%args386975%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args386958386981%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args386958386981%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self386886%_ _%stx386887%_)
        (let* ((_%g386889386906%_
                (lambda (_%g386890386903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g386890386903%_))))
               (_%g386888386953%_
                (lambda (_%g386890386909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g386890386909%_))
                      (let ((_%e386893386911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g386890386909%_))))
                        (let ((_%hd386894386914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e386893386911%_)))
                              (_%tl386895386916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e386893386911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl386895386916%_))
                              (let ((_%e386896386919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl386895386916%_))))
                                (let ((_%hd386897386922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e386896386919%_)))
                                      (_%tl386898386924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e386896386919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl386898386924%_))
                                      (let ((_%e386899386927%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl386898386924%_))))
                                        (let ((_%hd386900386930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e386899386927%_)))
                                              (_%tl386901386932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e386899386927%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl386901386932%_))
                                              ((lambda (_%g386891386935%_
                                                        _%g386892386936%_)
                                                 (let ((__tmp388591
                                                        (lambda (_%bind386951%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind386951%_))
                      (gxc#add-module-binding! _%bind386951%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp388591
                                                    _%g386892386936%_)))
                                               _%hd386900386930%_
                                               _%hd386897386922%_)
                                              (_%g386889386906%_
                                               _%g386890386909%_))))
                                      (_%g386889386906%_ _%g386890386909%_))))
                              (_%g386889386906%_ _%g386890386909%_))))
                      (_%g386889386906%_ _%g386890386909%_)))))
          (_%g386888386953%_ _%stx386887%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self386818%_ _%stx386819%_)
        (let* ((_%g386821386838%_
                (lambda (_%g386822386835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g386822386835%_))))
               (_%g386820386883%_
                (lambda (_%g386822386841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g386822386841%_))
                      (let ((_%e386825386843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g386822386841%_))))
                        (let ((_%hd386826386846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e386825386843%_)))
                              (_%tl386827386848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e386825386843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl386827386848%_))
                              (let ((_%e386828386851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl386827386848%_))))
                                (let ((_%hd386829386854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e386828386851%_)))
                                      (_%tl386830386856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e386828386851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl386830386856%_))
                                      (let ((_%e386831386859%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl386830386856%_))))
                                        (let ((_%hd386832386862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e386831386859%_)))
                                              (_%tl386833386864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e386831386859%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl386833386864%_))
                                              ((lambda (_%g386823386867%_
                                                        _%g386824386868%_)
                                                 (gxc#add-module-binding!
                                                  _%g386824386868%_
                                                  '#t))
                                               _%hd386832386862%_
                                               _%hd386829386854%_)
                                              (_%g386821386838%_
                                               _%g386822386841%_))))
                                      (_%g386821386838%_ _%g386822386841%_))))
                              (_%g386821386838%_ _%g386822386841%_))))
                      (_%g386821386838%_ _%g386822386841%_)))))
          (_%g386820386883%_ _%stx386819%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self386760%_ _%stx386761%_)
        (let* ((_%g386763386777%_
                (lambda (_%g386764386774%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g386764386774%_))))
               (_%g386762386815%_
                (lambda (_%g386764386780%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g386764386780%_))
                      (let ((_%e386767386782%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g386764386780%_))))
                        (let ((_%hd386768386785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e386767386782%_)))
                              (_%tl386769386787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e386767386782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl386769386787%_))
                              (let ((_%e386770386790%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl386769386787%_))))
                                (let ((_%hd386771386793%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e386770386790%_)))
                                      (_%tl386772386795%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e386770386790%_))))
                                  ((lambda (_%g386765386798%_
                                            _%g386766386799%_)
                                     (let ((_%ctx386812%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g386766386799%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self386760%_
                                           'modules))
                                        (cons _%ctx386812%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self386760%_
                                                        'modules)))))
                                       (let ((__tmp388592
                                              (lambda ()
                                                (let ((__tmp388593
                                                       (##structure-ref
                                                        _%ctx386812%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self386760%_
                                                   __tmp388593)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp388592
                                          gx#current-expander-context
                                          _%ctx386812%_))))
                                   _%tl386772386795%_
                                   _%hd386771386793%_)))
                              (_%g386763386777%_ _%g386764386780%_))))
                      (_%g386763386777%_ _%g386764386780%_)))))
          (_%g386762386815%_ _%stx386761%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls386714386716%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls386714386716%_
              (let ((_%decls386718%_ _%decls386714386716%_))
                (let _%lp386720%_ ((_%rest386722%_ _%decls386718%_))
                  (let* ((_%rest386723386731%_ _%rest386722%_)
                         (_%else386725386739%_ (lambda () '#f))
                         (_%K386727386748%_
                          (lambda (_%decls386742%_ _%decl386743%_)
                            (if (equal? _%decl386743%_ '(not safe))
                                '#t
                                (if (equal? _%decl386743%_ '(safe))
                                    '#f
                                    (_%lp386720%_ _%decls386742%_))))))
                    (if (pair? _%rest386723386731%_)
                        (let ((_%hd386728386751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest386723386731%_)))
                              (_%tl386729386753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest386723386731%_))))
                          (let* ((_%decl386756%_ _%hd386728386751%_)
                                 (_%decls386758%_ _%tl386729386753%_))
                            (_%K386727386748%_
                             _%decls386758%_
                             _%decl386756%_)))
                        (_%else386725386739%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id386708%_ _%syntax?386709%_)
        (let ((_%eid386711%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id386708%_))
                '1
                gx#binding::t
                '#f))
              (_%ht386712%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid386711%_))
              '#!void
              (let ((__tmp388594
                     (let ((__tmp388595
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid386711%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp388595 _%syntax?386709%_))))
                (declare (not safe))
                (hash-put! _%ht386712%_ _%eid386711%_ __tmp388594))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self386705%_ _%stx386706%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self386552%_ _%stx386553%_)
        (letrec ((_%simplify386555%_
                  (lambda (_%body386603%_)
                    (let _%lp386605%_ ((_%rest386607%_ _%body386603%_)
                                       (_%r386608%_ '()))
                      (let* ((_%rest386609386617%_ _%rest386607%_)
                             (_%else386611386625%_
                              (lambda () (reverse _%r386608%_)))
                             (_%K386613386693%_
                              (lambda (_%rest386628%_ _%hd386629%_)
                                (let* ((_%hd386630386646%_ _%hd386629%_)
                                       (_%else386634386654%_
                                        (lambda ()
                                          (_%lp386605%_
                                           _%rest386628%_
                                           (cons _%hd386629%_ _%r386608%_)))))
                                  (let ((_%K386642386683%_
                                         (lambda (_%exprs386681%_)
                                           (_%lp386605%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest386628%_
                                               _%exprs386681%_))
                                            _%r386608%_)))
                                        (_%K386637386667%_
                                         (lambda ()
                                           (if (null? _%rest386628%_)
                                               (_%lp386605%_
                                                _%rest386628%_
                                                (cons _%hd386629%_
                                                      _%r386608%_))
                                               (_%lp386605%_
                                                _%rest386628%_
                                                _%r386608%_))))
                                        (_%K386636386659%_
                                         (lambda ()
                                           (if (null? _%rest386628%_)
                                               (_%lp386605%_
                                                _%rest386628%_
                                                (cons _%hd386629%_
                                                      _%r386608%_))
                                               (_%lp386605%_
                                                _%rest386628%_
                                                _%r386608%_)))))
                                    (let ((_%try-match386633386662%_
                                           (lambda ()
                                             (if (symbol? _%hd386630386646%_)
                                                 (_%K386636386659%_)
                                                 (_%else386634386654%_)))))
                                      (if (pair? _%hd386630386646%_)
                                          (let ((_%tl386644386688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd386630386646%_)))
                                                (_%hd386643386686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd386630386646%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd386643386686%_
                                                         'begin))
                                                (let ((_%exprs386691%_
                                                       _%tl386644386688%_))
                                                  (_%K386642386683%_
                                                   _%exprs386691%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd386643386686%_
                                                             'quote))
                                                    (if (pair? _%tl386644386688%_)
                                                        (let ((_%tl386641386675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl386644386688%_))))
                  (if (null? _%tl386641386675%_)
                      (_%K386637386667%_)
                      (_%try-match386633386662%_)))
                (_%try-match386633386662%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match386633386662%_))))
                                          (_%try-match386633386662%_))))))))
                        (if (pair? _%rest386609386617%_)
                            (let ((_%hd386614386696%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest386609386617%_)))
                                  (_%tl386615386698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest386609386617%_))))
                              (let* ((_%hd386701%_ _%hd386614386696%_)
                                     (_%rest386703%_ _%tl386615386698%_))
                                (_%K386613386693%_
                                 _%rest386703%_
                                 _%hd386701%_)))
                            (_%else386611386625%_)))))))
          (let* ((_%g386557386567%_
                  (lambda (_%g386558386564%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g386558386564%_))))
                 (_%g386556386600%_
                  (lambda (_%g386558386570%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g386558386570%_))
                        (let ((_%e386560386572%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g386558386570%_))))
                          (let ((_%hd386561386575%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e386560386572%_)))
                                (_%tl386562386577%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e386560386572%_))))
                            ((lambda (_%g386559386580%_)
                               (let* ((_%body386595%_
                                       (map (lambda (_%g386590386592%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self386552%_
                                                 _%g386590386592%_)))
                                            _%g386559386580%_))
                                      (_%body386597%_
                                       (_%simplify386555%_ _%body386595%_)))
                                 (if (let ((__tmp388596
                                            (length _%body386597%_)))
                                       (declare (not safe))
                                       (##fx= __tmp388596 '1))
                                     (car _%body386597%_)
                                     (cons 'begin _%body386597%_))))
                             _%tl386562386577%_)))
                        (_%g386557386567%_ _%g386558386570%_)))))
            (_%g386556386600%_ _%stx386553%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self386513%_ _%stx386514%_)
        (let* ((_%g386516386526%_
                (lambda (_%g386517386523%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g386517386523%_))))
               (_%g386515386549%_
                (lambda (_%g386517386529%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g386517386529%_))
                      (let ((_%e386519386531%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g386517386529%_))))
                        (let ((_%hd386520386534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e386519386531%_)))
                              (_%tl386521386536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e386519386531%_))))
                          ((lambda (_%g386518386539%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g386518386539%_))))
                           _%tl386521386536%_)))
                      (_%g386516386526%_ _%g386517386529%_)))))
          (_%g386515386549%_ _%stx386514%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self386279%_ _%stx386280%_)
        (let* ((_%__stx387186387187%_ _%stx386280%_)
               (_%g386284386336%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx387186387187%_)))))
          (let ((_%__kont387188387189%_
                 (lambda (_%g386286386495%_ _%g386287386496%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self386279%_ _%g386286386495%_))))
                (_%__kont387190387191%_
                 (lambda (_%g386297386443%_
                          _%g386298386444%_
                          _%g386299386445%_)
                   (if (let ((__tmp388597
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g386299386445%_))))
                         (declare (not safe))
                         (##memq __tmp388597 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self386279%_
                          _%g386297386443%_)))))
                (_%__kont387194387195%_
                 (lambda (_%g386321386365%_ _%g386322386366%_)
                   (let ((_%decls386381%_
                          (map gx#syntax->datum _%g386322386366%_)))
                     (let ((__tmp388600
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls386381%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self386279%_
                                                   _%g386321386365%_))
                                                '())))))
                           (__tmp388598
                            (let ((__tmp388599
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp388599 _%decls386381%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp388600
                        gxc#current-compile-decls
                        __tmp388598))))))
            (let* ((_%__match387241387242%_
                    (lambda (_%e386300386389%_
                             _%hd386301386392%_
                             _%tl386302386394%_
                             _%e386303386397%_
                             _%hd386304386400%_
                             _%tl386305386402%_
                             _%e386306386405%_
                             _%hd386307386408%_
                             _%tl386308386410%_
                             _%__splice387192387193%_
                             _%target386309386413%_
                             _%tl386311386415%_)
                      (letrec ((_%loop386312386418%_
                                (lambda (_%hd386310386421%_
                                         _%param386316386423%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd386310386421%_))
                                      (let ((_%e386313386425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd386310386421%_))))
                                        (let ((_%lp-tl386315386430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e386313386425%_)))
                                              (_%lp-hd386314386428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e386313386425%_))))
                                          (_%loop386312386418%_
                                           _%lp-tl386315386430%_
                                           (cons _%lp-hd386314386428%_
                                                 _%param386316386423%_))))
                                      (let ((_%param386317386433%_
                                             (reverse _%param386316386423%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl386305386402%_))
                                            (let ((_%e386318386435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl386305386402%_))))
                                              (let ((_%tl386320386440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e386318386435%_)))
                                                    (_%hd386319386438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e386318386435%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl386320386440%_))
                                                    (let ((_%g386297386443%_
                                                           _%hd386319386438%_)
                                                          (_%g386298386444%_
                                                           _%param386317386433%_)
                                                          (_%g386299386445%_
                                                           _%hd386307386408%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g386299386445%_))
                       (not (let ((__tmp388601
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g386299386445%_))))
                              (declare (not safe))
                              (##memq __tmp388601 gxc#gambit-annotations))))
                  (_%__kont387190387191%_
                   _%g386297386443%_
                   _%g386298386444%_
                   _%g386299386445%_)
                  (_%__kont387194387195%_
                   _%hd386319386438%_
                   _%hd386304386400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g386284386336%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g386284386336%_))))))))
                        (_%loop386312386418%_ _%target386309386413%_ '()))))
                   (_%__match387215387216%_
                    (lambda (_%e386288386471%_
                             _%hd386289386474%_
                             _%tl386290386476%_
                             _%e386291386479%_
                             _%hd386292386482%_
                             _%tl386293386484%_
                             _%e386294386487%_
                             _%hd386295386490%_
                             _%tl386296386492%_)
                      (let ((_%g386286386495%_ _%hd386295386490%_)
                            (_%g386287386496%_ _%hd386292386482%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g386287386496%_))
                            (_%__kont387188387189%_
                             _%g386286386495%_
                             _%g386287386496%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd386292386482%_))
                                (let ((_%e386306386405%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd386292386482%_))))
                                  (let ((_%tl386308386410%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e386306386405%_)))
                                        (_%hd386307386408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e386306386405%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl386308386410%_))
                                        (let ((_%__splice387192387193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl386308386410%_
                                                  '0))))
                                          (let ((_%tl386311386415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice387192387193%_
                                                    '1)))
                                                (_%target386309386413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice387192387193%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl386311386415%_))
                                                (_%__match387241387242%_
                                                 _%e386288386471%_
                                                 _%hd386289386474%_
                                                 _%tl386290386476%_
                                                 _%e386291386479%_
                                                 _%hd386292386482%_
                                                 _%tl386293386484%_
                                                 _%e386306386405%_
                                                 _%hd386307386408%_
                                                 _%tl386308386410%_
                                                 _%__splice387192387193%_
                                                 _%target386309386413%_
                                                 _%tl386311386415%_)
                                                (_%__kont387194387195%_
                                                 _%hd386295386490%_
                                                 _%hd386292386482%_))))
                                        (_%__kont387194387195%_
                                         _%hd386295386490%_
                                         _%hd386292386482%_))))
                                (_%__kont387194387195%_
                                 _%hd386295386490%_
                                 _%hd386292386482%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx387186387187%_))
                  (let ((_%e386288386471%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx387186387187%_))))
                    (let ((_%tl386290386476%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e386288386471%_)))
                          (_%hd386289386474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e386288386471%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl386290386476%_))
                          (let ((_%e386291386479%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl386290386476%_))))
                            (let ((_%tl386293386484%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e386291386479%_)))
                                  (_%hd386292386482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e386291386479%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl386293386484%_))
                                  (let ((_%e386294386487%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl386293386484%_))))
                                    (let ((_%tl386296386492%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e386294386487%_)))
                                          (_%hd386295386490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e386294386487%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl386296386492%_))
                                          (_%__match387215387216%_
                                           _%e386288386471%_
                                           _%hd386289386474%_
                                           _%tl386290386476%_
                                           _%e386291386479%_
                                           _%hd386292386482%_
                                           _%tl386293386484%_
                                           _%e386294386487%_
                                           _%hd386295386490%_
                                           _%tl386296386492%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd386292386482%_))
                                              (let ((_%e386306386405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd386292386482%_))))
                                                (let ((_%tl386308386410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e386306386405%_)))
                                                      (_%hd386307386408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e386306386405%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl386308386410%_))
                                                      (let ((_%__splice387192387193%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl386308386410%_
                        '0))))
                (let ((_%tl386311386415%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice387192387193%_ '1)))
                      (_%target386309386413%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice387192387193%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl386311386415%_))
                      (_%__match387241387242%_
                       _%e386288386471%_
                       _%hd386289386474%_
                       _%tl386290386476%_
                       _%e386291386479%_
                       _%hd386292386482%_
                       _%tl386293386484%_
                       _%e386306386405%_
                       _%hd386307386408%_
                       _%tl386308386410%_
                       _%__splice387192387193%_
                       _%target386309386413%_
                       _%tl386311386415%_)
                      (let () (declare (not safe)) (_%g386284386336%_)))))
              (let () (declare (not safe)) (_%g386284386336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g386284386336%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd386292386482%_))
                                      (let ((_%e386306386405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd386292386482%_))))
                                        (let ((_%tl386308386410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e386306386405%_)))
                                              (_%hd386307386408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e386306386405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl386308386410%_))
                                              (let ((_%__splice387192387193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl386308386410%_
                                                        '0))))
                                                (let ((_%tl386311386415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice387192387193%_
                                                          '1)))
                                                      (_%target386309386413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice387192387193%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl386311386415%_))
                                                      (_%__match387241387242%_
                                                       _%e386288386471%_
                                                       _%hd386289386474%_
                                                       _%tl386290386476%_
                                                       _%e386291386479%_
                                                       _%hd386292386482%_
                                                       _%tl386293386484%_
                                                       _%e386306386405%_
                                                       _%hd386307386408%_
                                                       _%tl386308386410%_
                                                       _%__splice387192387193%_
                                                       _%target386309386413%_
                                                       _%tl386311386415%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g386284386336%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g386284386336%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g386284386336%_))))))
                          (let () (declare (not safe)) (_%g386284386336%_)))))
                  (let () (declare (not safe)) (_%g386284386336%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self386238%_ _%stx386239%_)
        (let* ((_%g386241386251%_
                (lambda (_%g386242386248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g386242386248%_))))
               (_%g386240386276%_
                (lambda (_%g386242386254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g386242386254%_))
                      (let ((_%e386244386256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g386242386254%_))))
                        (let ((_%hd386245386259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e386244386256%_)))
                              (_%tl386246386261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e386244386256%_))))
                          ((lambda (_%g386243386264%_)
                             (let ((_%decls386274%_
                                    (map gx#syntax->datum _%g386243386264%_)))
                               (let ((__tmp388602
                                      (let ((__tmp388603
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp388603
                                         _%decls386274%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp388602))
                               (cons 'declare _%decls386274%_)))
                           _%tl386246386261%_)))
                      (_%g386241386251%_ _%g386242386254%_)))))
          (_%g386240386276%_ _%stx386239%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self385985%_ _%stx385986%_)
        (let* ((_%g385988386005%_
                (lambda (_%g385989386002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g385989386002%_))))
               (_%g385987386235%_
                (lambda (_%g385989386008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g385989386008%_))
                      (let ((_%e385992386010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g385989386008%_))))
                        (let ((_%hd385993386013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e385992386010%_)))
                              (_%tl385994386015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e385992386010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl385994386015%_))
                              (let ((_%e385995386018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl385994386015%_))))
                                (let ((_%hd385996386021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e385995386018%_)))
                                      (_%tl385997386023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e385995386018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl385997386023%_))
                                      (let ((_%e385998386026%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl385997386023%_))))
                                        (let ((_%hd385999386029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e385998386026%_)))
                                              (_%tl386000386031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e385998386026%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl386000386031%_))
                                              ((lambda (_%g385990386034%_
                                                        _%g385991386035%_)
                                                 (let* ((_%__stx387294387295%_
                                                         _%g385991386035%_)
                                                        (_%g386052386066%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx387294387295%_)))))
                                                   (let ((_%__kont387296387297%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self385985%_
                                                               _%g385990386034%_))))
                                                         (_%__kont387298387299%_
                                                          (lambda (_%g386058386198%_)
                                                            (let ((_%eid386207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g386058386198%_))))
                      (let ((_%lambda-expr386208386210%_
                             (gxc#apply-find-lambda-expression
                              _%g385990386034%_)))
                        (if _%lambda-expr386208386210%_
                            (let* ((_%lambda-expr386212%_
                                    _%lambda-expr386208386210%_)
                                   (__tmp388604
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp388604
                               _%lambda-expr386212%_
                               _%eid386207%_))
                            '#f))
                      (cons 'define
                            (cons _%eid386207%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self385985%_
                                           _%g385990386034%_))
                                        '()))))))
                 (_%__kont387300387301%_
                  (lambda ()
                    (let* ((_%tmp386073%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body386182%_
                            (let _%lp386075%_ ((_%rest386077%_
                                                _%g385991386035%_)
                                               (_%k386078%_ '0)
                                               (_%r386079%_ '()))
                              (let* ((_%__stx387264387265%_ _%rest386077%_)
                                     (_%g386084386101%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx387264387265%_)))))
                                (let ((_%__kont387266387267%_
                                       (lambda (_%g386086386169%_)
                                         (_%lp386075%_
                                          _%g386086386169%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k386078%_ '1))
                                          _%r386079%_)))
                                      (_%__kont387268387269%_
                                       (lambda (_%g386091386142%_
                                                _%g386092386143%_)
                                         (_%lp386075%_
                                          _%g386091386142%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k386078%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g386092386143%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp386073%_
                           _%k386078%_
                           _%g386091386142%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r386079%_))))
                                      (_%__kont387270387271%_
                                       (lambda (_%g386096386113%_)
                                         (let ((__tmp388605
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g386096386113%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp386073%_
                                 _%k386078%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp388605
                                            _%r386079%_))))
                                      (_%__kont387272387273%_
                                       (lambda () (reverse _%r386079%_))))
                                  (let ((_%g386082386129%_
                                         (lambda ()
                                           (let ((_%g386096386113%_
                                                  _%__stx387264387265%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g386096386113%_))
                                                 (_%__kont387270387271%_
                                                  _%g386096386113%_)
                                                 (_%__kont387272387273%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx387264387265%_))
                                        (let ((_%e386087386158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx387264387265%_))))
                                          (let ((_%tl386089386163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e386087386158%_)))
                                                (_%hd386088386161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e386087386158%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd386088386161%_))
                                                (let ((_%e386090386166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd386088386161%_))))
                                                  (if (equal? _%e386090386166%_
                                                              '#f)
                                                      (_%__kont387266387267%_
                                                       _%tl386089386163%_)
                                                      (_%__kont387268387269%_
                                                       _%tl386089386163%_
                                                       _%hd386088386161%_)))
                                                (_%__kont387268387269%_
                                                 _%tl386089386163%_
                                                 _%hd386088386161%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g386082386129%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp386073%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self385985%_
                                                       _%g385990386034%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp386073%_
                                         _%g385991386035%_
                                         _%g385990386034%_)
                                        _%body386182%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx387294387295%_))
                                                         (let ((_%e386054386219%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx387294387295%_))))
                   (let ((_%tl386056386224%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e386054386219%_)))
                         (_%hd386055386222%_
                          (let ()
                            (declare (not safe))
                            (##car _%e386054386219%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd386055386222%_))
                         (let ((_%e386057386227%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd386055386222%_))))
                           (if (equal? _%e386057386227%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl386056386224%_))
                                   (_%__kont387296387297%_)
                                   (_%__kont387300387301%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl386056386224%_))
                                   (_%__kont387298387299%_ _%hd386055386222%_)
                                   (_%__kont387300387301%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl386056386224%_))
                             (_%__kont387298387299%_ _%hd386055386222%_)
                             (_%__kont387300387301%_)))))
                 (_%__kont387300387301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd385999386029%_
                                               _%hd385996386021%_)
                                              (_%g385988386005%_
                                               _%g385989386008%_))))
                                      (_%g385988386005%_ _%g385989386008%_))))
                              (_%g385988386005%_ _%g385989386008%_))))
                      (_%g385988386005%_ _%g385989386008%_)))))
          (_%g385987386235%_ _%stx385986%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals385960%_ _%hd385961%_ _%expr385962%_)
        (let ((_%$e385964%_ (gxc#apply-count-values _%expr385962%_)))
          (if _%$e385964%_
              ((lambda (_%count385967%_)
                 (let ((_%len385969%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd385961%_)))
                       (_%cmp385970%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd385961%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len385969%_ '0))
                           (_%cmp385970%_ _%count385967%_ _%len385969%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr385962%_
                          _%hd385961%_)))))
               _%$e385964%_)
              (let* ((_%len385976%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd385961%_)))
                     (_%cmp385978%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd385961%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg385980%_
                      (let ((__tmp388607
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd385961%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp388606 (number->string _%len385976%_)))
                        (declare (not safe))
                        (##string-append __tmp388607 __tmp388606 '" values")))
                     (_%count385982%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd385961%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len385976%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count385982%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals385960%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp385978%_
                                (cons _%count385982%_
                                      (cons _%len385976%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp385978%_
                                                        (cons _%count385982%_
                                                              (cons _%len385976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg385980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count385982%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var385955%_)
        (letrec ((_%generate-inline385957%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var385955%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var385955%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline385957%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline385957%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var385948%_ _%i385949%_ _%rest385950%_)
        (letrec ((_%generate-inline385952%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i385949%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest385950%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var385948%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var385948%_
                                                      (cons '0 '())))
                                          (cons _%var385948%_ '()))))
                        (cons '##values-ref
                              (cons _%var385948%_ (cons _%i385949%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline385952%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline385952%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var385942%_ _%i385943%_)
        (if (let () (declare (not safe)) (##fx= _%i385943%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var385942%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var385942%_ '()))
                                  (cons (cons 'list (cons _%var385942%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var385942%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var385942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var385942%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i385943%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var385942%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var385942%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var385942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var385942%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var385942%_ '()))
                                (cons _%i385943%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var385942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i385943%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self385874%_ _%stx385875%_)
        (let* ((_%g385877385894%_
                (lambda (_%g385878385891%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g385878385891%_))))
               (_%g385876385939%_
                (lambda (_%g385878385897%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g385878385897%_))
                      (let ((_%e385881385899%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g385878385897%_))))
                        (let ((_%hd385882385902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e385881385899%_)))
                              (_%tl385883385904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e385881385899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl385883385904%_))
                              (let ((_%e385884385907%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl385883385904%_))))
                                (let ((_%hd385885385910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e385884385907%_)))
                                      (_%tl385886385912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e385884385907%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl385886385912%_))
                                      (let ((_%e385887385915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl385886385912%_))))
                                        (let ((_%hd385888385918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e385887385915%_)))
                                              (_%tl385889385920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e385887385915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl385889385920%_))
                                              ((lambda (_%g385879385923%_
                                                        _%g385880385924%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self385874%_
                                                  _%g385880385924%_
                                                  _%g385879385923%_))
                                               _%hd385888385918%_
                                               _%hd385885385910%_)
                                              (_%g385877385894%_
                                               _%g385878385897%_))))
                                      (_%g385877385894%_ _%g385878385897%_))))
                              (_%g385877385894%_ _%g385878385897%_))))
                      (_%g385877385894%_ _%g385878385897%_)))))
          (_%g385876385939%_ _%stx385875%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self385833%_ _%hd385834%_ _%body385835%_)
        (let* ((_%hd385837%_ (gxc#generate-runtime-lambda-head _%hd385834%_))
               (_%body385839%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self385833%_ _%body385835%_)))
               (_%body385871%_
                (let* ((_%body385840385848%_ _%body385839%_)
                       (_%else385842385856%_
                        (lambda () (cons _%body385839%_ '())))
                       (_%K385844385861%_
                        (lambda (_%exprs385859%_) _%exprs385859%_)))
                  (if (pair? _%body385840385848%_)
                      (let ((_%hd385845385864%_
                             (let ()
                               (declare (not safe))
                               (##car _%body385840385848%_)))
                            (_%tl385846385866%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body385840385848%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd385845385864%_ 'begin))
                            (let ((_%exprs385869%_ _%tl385846385866%_))
                              (_%K385844385861%_ _%exprs385869%_))
                            (_%else385842385856%_)))
                      (_%else385842385856%_)))))
          (cons 'lambda (cons _%hd385837%_ _%body385871%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd385831%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd385831%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self384388%_ _%stx384389%_)
        (letrec ((_%dispatch-case?384391%_
                  (lambda (_%hd385069%_ _%body385070%_)
                    (let* ((_%form385072%_
                            (cons _%hd385069%_ (cons _%body385070%_ '())))
                           (_%__stx387326387327%_ _%form385072%_)
                           (_%g385077385234%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx387326387327%_)))))
                      (let ((_%__kont387328387329%_
                             (lambda (_%g385079385751%_
                                      _%g385080385752%_
                                      _%g385081385753%_)
                               '#t))
                            (_%__kont387334387335%_
                             (lambda (_%g385124385543%_
                                      _%g385125385544%_
                                      _%g385126385545%_
                                      _%g385127385546%_
                                      _%g385128385547%_
                                      _%g385129385548%_)
                               '#t))
                            (_%__kont387340387341%_
                             (lambda (_%g385190385342%_
                                      _%g385191385343%_
                                      _%g385192385344%_
                                      _%g385193385345%_)
                               '#t))
                            (_%__kont387342387343%_ (lambda () '#f)))
                        (let* ((_%__match387467387468%_
                                (lambda (_%e385194385246%_
                                         _%hd385195385249%_
                                         _%tl385196385251%_
                                         _%e385197385254%_
                                         _%hd385198385257%_
                                         _%tl385199385259%_
                                         _%e385200385262%_
                                         _%hd385201385265%_
                                         _%tl385202385267%_
                                         _%e385203385270%_
                                         _%hd385204385273%_
                                         _%tl385205385275%_
                                         _%e385206385278%_
                                         _%hd385207385281%_
                                         _%tl385208385283%_
                                         _%e385209385286%_
                                         _%hd385210385289%_
                                         _%tl385211385291%_
                                         _%e385212385294%_
                                         _%hd385213385297%_
                                         _%tl385214385299%_
                                         _%e385215385302%_
                                         _%hd385216385305%_
                                         _%tl385217385307%_
                                         _%e385218385310%_
                                         _%hd385219385313%_
                                         _%tl385220385315%_
                                         _%e385221385318%_
                                         _%hd385222385321%_
                                         _%tl385223385323%_
                                         _%e385224385326%_
                                         _%hd385225385329%_
                                         _%tl385226385331%_
                                         _%e385227385334%_
                                         _%hd385228385337%_
                                         _%tl385229385339%_)
                                  (let ((_%g385190385342%_ _%hd385228385337%_)
                                        (_%g385191385343%_ _%hd385219385313%_)
                                        (_%g385192385344%_ _%hd385210385289%_)
                                        (_%g385193385345%_ _%hd385195385249%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g385193385345%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g385192385344%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g385193385345%_
                                                _%g385190385342%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g385191385343%_
                                                     _%g385193385345%_))))
                                        (_%__kont387340387341%_
                                         _%g385190385342%_
                                         _%g385191385343%_
                                         _%g385192385344%_
                                         _%g385193385345%_)
                                        (_%__kont387342387343%_)))))
                               (_%__match387439387440%_
                                (lambda (_%e385194385246%_
                                         _%hd385195385249%_
                                         _%tl385196385251%_
                                         _%e385197385254%_
                                         _%hd385198385257%_
                                         _%tl385199385259%_
                                         _%e385200385262%_
                                         _%hd385201385265%_
                                         _%tl385202385267%_
                                         _%e385203385270%_
                                         _%hd385204385273%_
                                         _%tl385205385275%_
                                         _%e385206385278%_
                                         _%hd385207385281%_
                                         _%tl385208385283%_
                                         _%e385209385286%_
                                         _%hd385210385289%_
                                         _%tl385211385291%_
                                         _%e385212385294%_
                                         _%hd385213385297%_
                                         _%tl385214385299%_
                                         _%e385215385302%_
                                         _%hd385216385305%_
                                         _%tl385217385307%_
                                         _%e385218385310%_
                                         _%hd385219385313%_
                                         _%tl385220385315%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl385214385299%_))
                                      (let ((_%e385221385318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl385214385299%_))))
                                        (let ((_%tl385223385323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e385221385318%_)))
                                              (_%hd385222385321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e385221385318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd385222385321%_))
                                              (let ((_%e385224385326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd385222385321%_))))
                                                (let ((_%tl385226385331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e385224385326%_)))
                                                      (_%hd385225385329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e385224385326%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd385225385329%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd385225385329%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl385226385331%_))
                      (let ((_%e385227385334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl385226385331%_))))
                        (let ((_%tl385229385339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e385227385334%_)))
                              (_%hd385228385337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e385227385334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl385229385339%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl385223385323%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl385199385259%_))
                                      (_%__match387467387468%_
                                       _%e385194385246%_
                                       _%hd385195385249%_
                                       _%tl385196385251%_
                                       _%e385197385254%_
                                       _%hd385198385257%_
                                       _%tl385199385259%_
                                       _%e385200385262%_
                                       _%hd385201385265%_
                                       _%tl385202385267%_
                                       _%e385203385270%_
                                       _%hd385204385273%_
                                       _%tl385205385275%_
                                       _%e385206385278%_
                                       _%hd385207385281%_
                                       _%tl385208385283%_
                                       _%e385209385286%_
                                       _%hd385210385289%_
                                       _%tl385211385291%_
                                       _%e385212385294%_
                                       _%hd385213385297%_
                                       _%tl385214385299%_
                                       _%e385215385302%_
                                       _%hd385216385305%_
                                       _%tl385217385307%_
                                       _%e385218385310%_
                                       _%hd385219385313%_
                                       _%tl385220385315%_
                                       _%e385221385318%_
                                       _%hd385222385321%_
                                       _%tl385223385323%_
                                       _%e385224385326%_
                                       _%hd385225385329%_
                                       _%tl385226385331%_
                                       _%e385227385334%_
                                       _%hd385228385337%_
                                       _%tl385229385339%_)
                                      (_%__kont387342387343%_))
                                  (_%__kont387342387343%_))
                              (_%__kont387342387343%_))))
                      (_%__kont387342387343%_))
                  (_%__kont387342387343%_))
              (_%__kont387342387343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont387342387343%_))))
                                      (_%__kont387342387343%_))))
                               (_%__match387369387370%_
                                (lambda (_%e385130385387%_
                                         _%hd385131385390%_
                                         _%tl385132385392%_
                                         _%__splice387336387337%_
                                         _%target385133385395%_
                                         _%tl385135385397%_)
                                  (letrec ((_%loop385136385400%_
                                            (lambda (_%hd385134385403%_
                                                     _%arg385140385405%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd385134385403%_))
                                                  (let ((_%e385137385407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd385134385403%_))))
                                                    (let ((_%lp-tl385139385412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e385137385407%_)))
                                                          (_%lp-hd385138385410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e385137385407%_))))
                                                      (_%loop385136385400%_
                                                       _%lp-tl385139385412%_
                                                       (cons _%lp-hd385138385410%_
                                                             _%arg385140385405%_))))
                                                  (let ((_%arg385141385415%_
                                                         (reverse _%arg385140385405%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl385132385392%_))
                                                        (let ((_%e385142385417%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl385132385392%_))))
                  (let ((_%tl385144385422%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e385142385417%_)))
                        (_%hd385143385420%_
                         (let ()
                           (declare (not safe))
                           (##car _%e385142385417%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd385143385420%_))
                        (let ((_%e385145385425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd385143385420%_))))
                          (let ((_%tl385147385430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e385145385425%_)))
                                (_%hd385146385428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e385145385425%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd385146385428%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd385146385428%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl385147385430%_))
                                        (let ((_%e385148385433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl385147385430%_))))
                                          (let ((_%tl385150385438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e385148385433%_)))
                                                (_%hd385149385436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e385148385433%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd385149385436%_))
                                                (let ((_%e385151385441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd385149385436%_))))
                                                  (let ((_%tl385153385446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e385151385441%_)))
                                                        (_%hd385152385444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e385151385441%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd385152385444%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd385152385444%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl385153385446%_))
                        (let ((_%e385154385449%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl385153385446%_))))
                          (let ((_%tl385156385454%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e385154385449%_)))
                                (_%hd385155385452%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e385154385449%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl385156385454%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl385150385438%_))
                                    (let ((_%e385157385457%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl385150385438%_))))
                                      (let ((_%tl385159385462%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e385157385457%_)))
                                            (_%hd385158385460%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e385157385457%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd385158385460%_))
                                            (let ((_%e385160385465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd385158385460%_))))
                                              (let ((_%tl385162385470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e385160385465%_)))
                                                    (_%hd385161385468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e385160385465%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd385161385468%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd385161385468%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl385162385470%_))
                                                            (let ((_%e385163385473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl385162385470%_))))
                      (let ((_%tl385165385478%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e385163385473%_)))
                            (_%hd385164385476%_
                             (let ()
                               (declare (not safe))
                               (##car _%e385163385473%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl385165385478%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl385159385462%_))
                                (if (let ((__tmp388608
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl385159385462%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp388608 '1))
                                    (let ((_%__splice387338387339%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl385159385462%_
                                              '1))))
                                      (let ((_%tl385168385483%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice387338387339%_
                                                '1)))
                                            (_%target385166385481%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice387338387339%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl385168385483%_))
                                            (let ((_%e385175385486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl385168385483%_))))
                                              (let ((_%tl385177385491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e385175385486%_)))
                                                    (_%hd385176385489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e385175385486%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd385176385489%_))
                                                    (let ((_%e385178385494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd385176385489%_))))
                                                      (let ((_%tl385180385499%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e385178385494%_)))
                    (_%hd385179385497%_
                     (let () (declare (not safe)) (##car _%e385178385494%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd385179385497%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd385179385497%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl385180385499%_))
                            (let ((_%e385181385502%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl385180385499%_))))
                              (let ((_%tl385183385507%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e385181385502%_)))
                                    (_%hd385182385505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e385181385502%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl385183385507%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl385177385491%_))
                                        (letrec ((_%loop385169385510%_
                                                  (lambda (_%hd385167385513%_
                                                           _%xarg385173385515%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd385167385513%_))
                                                        (let ((_%e385170385517%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd385167385513%_))))
                  (let ((_%lp-tl385172385522%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e385170385517%_)))
                        (_%lp-hd385171385520%_
                         (let ()
                           (declare (not safe))
                           (##car _%e385170385517%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd385171385520%_))
                        (let ((_%e385184385525%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd385171385520%_))))
                          (let ((_%tl385186385530%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e385184385525%_)))
                                (_%hd385185385528%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e385184385525%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd385185385528%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd385185385528%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl385186385530%_))
                                        (let ((_%e385187385533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl385186385530%_))))
                                          (let ((_%tl385189385538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e385187385533%_)))
                                                (_%hd385188385536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e385187385533%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl385189385538%_))
                                                (_%loop385169385510%_
                                                 _%lp-tl385172385522%_
                                                 (cons _%hd385188385536%_
                                                       _%xarg385173385515%_))
                                                (_%__match387439387440%_
                                                 _%e385130385387%_
                                                 _%hd385131385390%_
                                                 _%tl385132385392%_
                                                 _%e385142385417%_
                                                 _%hd385143385420%_
                                                 _%tl385144385422%_
                                                 _%e385145385425%_
                                                 _%hd385146385428%_
                                                 _%tl385147385430%_
                                                 _%e385148385433%_
                                                 _%hd385149385436%_
                                                 _%tl385150385438%_
                                                 _%e385151385441%_
                                                 _%hd385152385444%_
                                                 _%tl385153385446%_
                                                 _%e385154385449%_
                                                 _%hd385155385452%_
                                                 _%tl385156385454%_
                                                 _%e385157385457%_
                                                 _%hd385158385460%_
                                                 _%tl385159385462%_
                                                 _%e385160385465%_
                                                 _%hd385161385468%_
                                                 _%tl385162385470%_
                                                 _%e385163385473%_
                                                 _%hd385164385476%_
                                                 _%tl385165385478%_))))
                                        (_%__match387439387440%_
                                         _%e385130385387%_
                                         _%hd385131385390%_
                                         _%tl385132385392%_
                                         _%e385142385417%_
                                         _%hd385143385420%_
                                         _%tl385144385422%_
                                         _%e385145385425%_
                                         _%hd385146385428%_
                                         _%tl385147385430%_
                                         _%e385148385433%_
                                         _%hd385149385436%_
                                         _%tl385150385438%_
                                         _%e385151385441%_
                                         _%hd385152385444%_
                                         _%tl385153385446%_
                                         _%e385154385449%_
                                         _%hd385155385452%_
                                         _%tl385156385454%_
                                         _%e385157385457%_
                                         _%hd385158385460%_
                                         _%tl385159385462%_
                                         _%e385160385465%_
                                         _%hd385161385468%_
                                         _%tl385162385470%_
                                         _%e385163385473%_
                                         _%hd385164385476%_
                                         _%tl385165385478%_))
                                    (_%__match387439387440%_
                                     _%e385130385387%_
                                     _%hd385131385390%_
                                     _%tl385132385392%_
                                     _%e385142385417%_
                                     _%hd385143385420%_
                                     _%tl385144385422%_
                                     _%e385145385425%_
                                     _%hd385146385428%_
                                     _%tl385147385430%_
                                     _%e385148385433%_
                                     _%hd385149385436%_
                                     _%tl385150385438%_
                                     _%e385151385441%_
                                     _%hd385152385444%_
                                     _%tl385153385446%_
                                     _%e385154385449%_
                                     _%hd385155385452%_
                                     _%tl385156385454%_
                                     _%e385157385457%_
                                     _%hd385158385460%_
                                     _%tl385159385462%_
                                     _%e385160385465%_
                                     _%hd385161385468%_
                                     _%tl385162385470%_
                                     _%e385163385473%_
                                     _%hd385164385476%_
                                     _%tl385165385478%_))
                                (_%__match387439387440%_
                                 _%e385130385387%_
                                 _%hd385131385390%_
                                 _%tl385132385392%_
                                 _%e385142385417%_
                                 _%hd385143385420%_
                                 _%tl385144385422%_
                                 _%e385145385425%_
                                 _%hd385146385428%_
                                 _%tl385147385430%_
                                 _%e385148385433%_
                                 _%hd385149385436%_
                                 _%tl385150385438%_
                                 _%e385151385441%_
                                 _%hd385152385444%_
                                 _%tl385153385446%_
                                 _%e385154385449%_
                                 _%hd385155385452%_
                                 _%tl385156385454%_
                                 _%e385157385457%_
                                 _%hd385158385460%_
                                 _%tl385159385462%_
                                 _%e385160385465%_
                                 _%hd385161385468%_
                                 _%tl385162385470%_
                                 _%e385163385473%_
                                 _%hd385164385476%_
                                 _%tl385165385478%_))))
                        (_%__match387439387440%_
                         _%e385130385387%_
                         _%hd385131385390%_
                         _%tl385132385392%_
                         _%e385142385417%_
                         _%hd385143385420%_
                         _%tl385144385422%_
                         _%e385145385425%_
                         _%hd385146385428%_
                         _%tl385147385430%_
                         _%e385148385433%_
                         _%hd385149385436%_
                         _%tl385150385438%_
                         _%e385151385441%_
                         _%hd385152385444%_
                         _%tl385153385446%_
                         _%e385154385449%_
                         _%hd385155385452%_
                         _%tl385156385454%_
                         _%e385157385457%_
                         _%hd385158385460%_
                         _%tl385159385462%_
                         _%e385160385465%_
                         _%hd385161385468%_
                         _%tl385162385470%_
                         _%e385163385473%_
                         _%hd385164385476%_
                         _%tl385165385478%_))))
                (let ((_%xarg385174385541%_ (reverse _%xarg385173385515%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl385144385422%_))
                      (let ((_%g385124385543%_ _%hd385182385505%_)
                            (_%g385125385544%_ _%xarg385174385541%_)
                            (_%g385126385545%_ _%hd385164385476%_)
                            (_%g385127385546%_ _%hd385155385452%_)
                            (_%g385128385547%_ _%tl385135385397%_)
                            (_%g385129385548%_ _%arg385141385415%_))
                        (if (and (let ((__tmp388609
                                        (let ((__tmp388610
                                               (lambda (_%g385591385594%_
                                                        _%g385592385596%_)
                                                 (cons _%g385591385594%_
                                                       _%g385592385596%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp388610
                                           '()
                                           _%g385129385548%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp388609))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g385128385547%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g385127385546%_
                                    'apply))
                                 (let ((__tmp388613
                                        (length (let ((__tmp388614
                                                       (lambda (_%g385598385601%_
                                                                _%g385599385603%_)
                                                         (cons _%g385598385601%_
                                                               _%g385599385603%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp388614
                                                   '()
                                                   _%g385129385548%_))))
                                       (__tmp388611
                                        (length (let ((__tmp388612
                                                       (lambda (_%g385605385608%_
                                                                _%g385606385610%_)
                                                         (cons _%g385605385608%_
                                                               _%g385606385610%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp388612
                                                   '()
                                                   _%g385125385544%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp388613 __tmp388611))
                                 (let ((__tmp388617
                                        (let ((__tmp388618
                                               (lambda (_%g385612385615%_
                                                        _%g385613385617%_)
                                                 (cons _%g385612385615%_
                                                       _%g385613385617%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp388618
                                           '()
                                           _%g385129385548%_)))
                                       (__tmp388615
                                        (let ((__tmp388616
                                               (lambda (_%g385619385622%_
                                                        _%g385620385624%_)
                                                 (cons _%g385619385622%_
                                                       _%g385620385624%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp388616
                                           '()
                                           _%g385125385544%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp388617
                                    __tmp388615))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g385128385547%_
                                    _%g385124385543%_))
                                 (not (let ((__tmp388622
                                             (lambda (_%g385626385628%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g385626385628%_
                                                  _%g385126385545%_))))
                                            (__tmp388619
                                             (let ((__tmp388621
                                                    (lambda (_%g385630385633%_
                                                             _%g385631385635%_)
                                                      (cons _%g385630385633%_
                                                            _%g385631385635%_)))
                                                   (__tmp388620
                                                    (cons _%g385128385547%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp388621
                                                __tmp388620
                                                _%g385129385548%_))))
                                        (declare (not safe))
                                        (__find __tmp388622 __tmp388619))))
                            (_%__kont387334387335%_
                             _%g385124385543%_
                             _%g385125385544%_
                             _%g385126385545%_
                             _%g385127385546%_
                             _%g385128385547%_
                             _%g385129385548%_)
                            (_%__match387439387440%_
                             _%e385130385387%_
                             _%hd385131385390%_
                             _%tl385132385392%_
                             _%e385142385417%_
                             _%hd385143385420%_
                             _%tl385144385422%_
                             _%e385145385425%_
                             _%hd385146385428%_
                             _%tl385147385430%_
                             _%e385148385433%_
                             _%hd385149385436%_
                             _%tl385150385438%_
                             _%e385151385441%_
                             _%hd385152385444%_
                             _%tl385153385446%_
                             _%e385154385449%_
                             _%hd385155385452%_
                             _%tl385156385454%_
                             _%e385157385457%_
                             _%hd385158385460%_
                             _%tl385159385462%_
                             _%e385160385465%_
                             _%hd385161385468%_
                             _%tl385162385470%_
                             _%e385163385473%_
                             _%hd385164385476%_
                             _%tl385165385478%_)))
                      (_%__match387439387440%_
                       _%e385130385387%_
                       _%hd385131385390%_
                       _%tl385132385392%_
                       _%e385142385417%_
                       _%hd385143385420%_
                       _%tl385144385422%_
                       _%e385145385425%_
                       _%hd385146385428%_
                       _%tl385147385430%_
                       _%e385148385433%_
                       _%hd385149385436%_
                       _%tl385150385438%_
                       _%e385151385441%_
                       _%hd385152385444%_
                       _%tl385153385446%_
                       _%e385154385449%_
                       _%hd385155385452%_
                       _%tl385156385454%_
                       _%e385157385457%_
                       _%hd385158385460%_
                       _%tl385159385462%_
                       _%e385160385465%_
                       _%hd385161385468%_
                       _%tl385162385470%_
                       _%e385163385473%_
                       _%hd385164385476%_
                       _%tl385165385478%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop385169385510%_
                                           _%target385166385481%_
                                           '()))
                                        (_%__match387439387440%_
                                         _%e385130385387%_
                                         _%hd385131385390%_
                                         _%tl385132385392%_
                                         _%e385142385417%_
                                         _%hd385143385420%_
                                         _%tl385144385422%_
                                         _%e385145385425%_
                                         _%hd385146385428%_
                                         _%tl385147385430%_
                                         _%e385148385433%_
                                         _%hd385149385436%_
                                         _%tl385150385438%_
                                         _%e385151385441%_
                                         _%hd385152385444%_
                                         _%tl385153385446%_
                                         _%e385154385449%_
                                         _%hd385155385452%_
                                         _%tl385156385454%_
                                         _%e385157385457%_
                                         _%hd385158385460%_
                                         _%tl385159385462%_
                                         _%e385160385465%_
                                         _%hd385161385468%_
                                         _%tl385162385470%_
                                         _%e385163385473%_
                                         _%hd385164385476%_
                                         _%tl385165385478%_))
                                    (_%__match387439387440%_
                                     _%e385130385387%_
                                     _%hd385131385390%_
                                     _%tl385132385392%_
                                     _%e385142385417%_
                                     _%hd385143385420%_
                                     _%tl385144385422%_
                                     _%e385145385425%_
                                     _%hd385146385428%_
                                     _%tl385147385430%_
                                     _%e385148385433%_
                                     _%hd385149385436%_
                                     _%tl385150385438%_
                                     _%e385151385441%_
                                     _%hd385152385444%_
                                     _%tl385153385446%_
                                     _%e385154385449%_
                                     _%hd385155385452%_
                                     _%tl385156385454%_
                                     _%e385157385457%_
                                     _%hd385158385460%_
                                     _%tl385159385462%_
                                     _%e385160385465%_
                                     _%hd385161385468%_
                                     _%tl385162385470%_
                                     _%e385163385473%_
                                     _%hd385164385476%_
                                     _%tl385165385478%_))))
                            (_%__match387439387440%_
                             _%e385130385387%_
                             _%hd385131385390%_
                             _%tl385132385392%_
                             _%e385142385417%_
                             _%hd385143385420%_
                             _%tl385144385422%_
                             _%e385145385425%_
                             _%hd385146385428%_
                             _%tl385147385430%_
                             _%e385148385433%_
                             _%hd385149385436%_
                             _%tl385150385438%_
                             _%e385151385441%_
                             _%hd385152385444%_
                             _%tl385153385446%_
                             _%e385154385449%_
                             _%hd385155385452%_
                             _%tl385156385454%_
                             _%e385157385457%_
                             _%hd385158385460%_
                             _%tl385159385462%_
                             _%e385160385465%_
                             _%hd385161385468%_
                             _%tl385162385470%_
                             _%e385163385473%_
                             _%hd385164385476%_
                             _%tl385165385478%_))
                        (_%__match387439387440%_
                         _%e385130385387%_
                         _%hd385131385390%_
                         _%tl385132385392%_
                         _%e385142385417%_
                         _%hd385143385420%_
                         _%tl385144385422%_
                         _%e385145385425%_
                         _%hd385146385428%_
                         _%tl385147385430%_
                         _%e385148385433%_
                         _%hd385149385436%_
                         _%tl385150385438%_
                         _%e385151385441%_
                         _%hd385152385444%_
                         _%tl385153385446%_
                         _%e385154385449%_
                         _%hd385155385452%_
                         _%tl385156385454%_
                         _%e385157385457%_
                         _%hd385158385460%_
                         _%tl385159385462%_
                         _%e385160385465%_
                         _%hd385161385468%_
                         _%tl385162385470%_
                         _%e385163385473%_
                         _%hd385164385476%_
                         _%tl385165385478%_))
                    (_%__match387439387440%_
                     _%e385130385387%_
                     _%hd385131385390%_
                     _%tl385132385392%_
                     _%e385142385417%_
                     _%hd385143385420%_
                     _%tl385144385422%_
                     _%e385145385425%_
                     _%hd385146385428%_
                     _%tl385147385430%_
                     _%e385148385433%_
                     _%hd385149385436%_
                     _%tl385150385438%_
                     _%e385151385441%_
                     _%hd385152385444%_
                     _%tl385153385446%_
                     _%e385154385449%_
                     _%hd385155385452%_
                     _%tl385156385454%_
                     _%e385157385457%_
                     _%hd385158385460%_
                     _%tl385159385462%_
                     _%e385160385465%_
                     _%hd385161385468%_
                     _%tl385162385470%_
                     _%e385163385473%_
                     _%hd385164385476%_
                     _%tl385165385478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match387439387440%_
                                                     _%e385130385387%_
                                                     _%hd385131385390%_
                                                     _%tl385132385392%_
                                                     _%e385142385417%_
                                                     _%hd385143385420%_
                                                     _%tl385144385422%_
                                                     _%e385145385425%_
                                                     _%hd385146385428%_
                                                     _%tl385147385430%_
                                                     _%e385148385433%_
                                                     _%hd385149385436%_
                                                     _%tl385150385438%_
                                                     _%e385151385441%_
                                                     _%hd385152385444%_
                                                     _%tl385153385446%_
                                                     _%e385154385449%_
                                                     _%hd385155385452%_
                                                     _%tl385156385454%_
                                                     _%e385157385457%_
                                                     _%hd385158385460%_
                                                     _%tl385159385462%_
                                                     _%e385160385465%_
                                                     _%hd385161385468%_
                                                     _%tl385162385470%_
                                                     _%e385163385473%_
                                                     _%hd385164385476%_
                                                     _%tl385165385478%_))))
                                            (_%__match387439387440%_
                                             _%e385130385387%_
                                             _%hd385131385390%_
                                             _%tl385132385392%_
                                             _%e385142385417%_
                                             _%hd385143385420%_
                                             _%tl385144385422%_
                                             _%e385145385425%_
                                             _%hd385146385428%_
                                             _%tl385147385430%_
                                             _%e385148385433%_
                                             _%hd385149385436%_
                                             _%tl385150385438%_
                                             _%e385151385441%_
                                             _%hd385152385444%_
                                             _%tl385153385446%_
                                             _%e385154385449%_
                                             _%hd385155385452%_
                                             _%tl385156385454%_
                                             _%e385157385457%_
                                             _%hd385158385460%_
                                             _%tl385159385462%_
                                             _%e385160385465%_
                                             _%hd385161385468%_
                                             _%tl385162385470%_
                                             _%e385163385473%_
                                             _%hd385164385476%_
                                             _%tl385165385478%_))))
                                    (_%__match387439387440%_
                                     _%e385130385387%_
                                     _%hd385131385390%_
                                     _%tl385132385392%_
                                     _%e385142385417%_
                                     _%hd385143385420%_
                                     _%tl385144385422%_
                                     _%e385145385425%_
                                     _%hd385146385428%_
                                     _%tl385147385430%_
                                     _%e385148385433%_
                                     _%hd385149385436%_
                                     _%tl385150385438%_
                                     _%e385151385441%_
                                     _%hd385152385444%_
                                     _%tl385153385446%_
                                     _%e385154385449%_
                                     _%hd385155385452%_
                                     _%tl385156385454%_
                                     _%e385157385457%_
                                     _%hd385158385460%_
                                     _%tl385159385462%_
                                     _%e385160385465%_
                                     _%hd385161385468%_
                                     _%tl385162385470%_
                                     _%e385163385473%_
                                     _%hd385164385476%_
                                     _%tl385165385478%_))
                                (_%__match387439387440%_
                                 _%e385130385387%_
                                 _%hd385131385390%_
                                 _%tl385132385392%_
                                 _%e385142385417%_
                                 _%hd385143385420%_
                                 _%tl385144385422%_
                                 _%e385145385425%_
                                 _%hd385146385428%_
                                 _%tl385147385430%_
                                 _%e385148385433%_
                                 _%hd385149385436%_
                                 _%tl385150385438%_
                                 _%e385151385441%_
                                 _%hd385152385444%_
                                 _%tl385153385446%_
                                 _%e385154385449%_
                                 _%hd385155385452%_
                                 _%tl385156385454%_
                                 _%e385157385457%_
                                 _%hd385158385460%_
                                 _%tl385159385462%_
                                 _%e385160385465%_
                                 _%hd385161385468%_
                                 _%tl385162385470%_
                                 _%e385163385473%_
                                 _%hd385164385476%_
                                 _%tl385165385478%_))
                            (_%__kont387342387343%_))))
                    (_%__kont387342387343%_))
                (_%__kont387342387343%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont387342387343%_))))
                                            (_%__kont387342387343%_))))
                                    (_%__kont387342387343%_))
                                (_%__kont387342387343%_))))
                        (_%__kont387342387343%_))
                    (_%__kont387342387343%_))
                (_%__kont387342387343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont387342387343%_))))
                                        (_%__kont387342387343%_))
                                    (_%__kont387342387343%_))
                                (_%__kont387342387343%_))))
                        (_%__kont387342387343%_))))
                (_%__kont387342387343%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop385136385400%_
                                     _%target385133385395%_
                                     '()))))
                               (_%__match387357387358%_
                                (lambda (_%e385082385643%_
                                         _%hd385083385646%_
                                         _%tl385084385648%_
                                         _%__splice387330387331%_
                                         _%target385085385651%_
                                         _%tl385087385653%_)
                                  (letrec ((_%loop385088385656%_
                                            (lambda (_%hd385086385659%_
                                                     _%arg385092385661%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd385086385659%_))
                                                  (let ((_%e385089385663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd385086385659%_))))
                                                    (let ((_%lp-tl385091385668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e385089385663%_)))
                                                          (_%lp-hd385090385666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e385089385663%_))))
                                                      (_%loop385088385656%_
                                                       _%lp-tl385091385668%_
                                                       (cons _%lp-hd385090385666%_
                                                             _%arg385092385661%_))))
                                                  (let ((_%arg385093385671%_
                                                         (reverse _%arg385092385661%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl385084385648%_))
                                                        (let ((_%e385094385673%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl385084385648%_))))
                  (let ((_%tl385096385678%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e385094385673%_)))
                        (_%hd385095385676%_
                         (let ()
                           (declare (not safe))
                           (##car _%e385094385673%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd385095385676%_))
                        (let ((_%e385097385681%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd385095385676%_))))
                          (let ((_%tl385099385686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e385097385681%_)))
                                (_%hd385098385684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e385097385681%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd385098385684%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd385098385684%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl385099385686%_))
                                        (let ((_%e385100385689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl385099385686%_))))
                                          (let ((_%tl385102385694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e385100385689%_)))
                                                (_%hd385101385692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e385100385689%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd385101385692%_))
                                                (let ((_%e385103385697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd385101385692%_))))
                                                  (let ((_%tl385105385702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e385103385697%_)))
                                                        (_%hd385104385700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e385103385697%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd385104385700%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd385104385700%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl385105385702%_))
                        (let ((_%e385106385705%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl385105385702%_))))
                          (let ((_%tl385108385710%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e385106385705%_)))
                                (_%hd385107385708%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e385106385705%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl385108385710%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl385102385694%_))
                                    (let ((_%__splice387332387333%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl385102385694%_
                                              '0))))
                                      (let ((_%tl385111385715%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice387332387333%_
                                                '1)))
                                            (_%target385109385713%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice387332387333%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl385111385715%_))
                                            (letrec ((_%loop385112385718%_
                                                      (lambda (_%hd385110385721%_
                                                               _%xarg385116385723%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd385110385721%_))
                                                            (let ((_%e385113385725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd385110385721%_))))
                      (let ((_%lp-tl385115385730%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e385113385725%_)))
                            (_%lp-hd385114385728%_
                             (let ()
                               (declare (not safe))
                               (##car _%e385113385725%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd385114385728%_))
                            (let ((_%e385118385733%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd385114385728%_))))
                              (let ((_%tl385120385738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e385118385733%_)))
                                    (_%hd385119385736%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e385118385733%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd385119385736%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd385119385736%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl385120385738%_))
                                            (let ((_%e385121385741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl385120385738%_))))
                                              (let ((_%tl385123385746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e385121385741%_)))
                                                    (_%hd385122385744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e385121385741%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl385123385746%_))
                                                    (_%loop385112385718%_
                                                     _%lp-tl385115385730%_
                                                     (cons _%hd385122385744%_
                                                           _%xarg385116385723%_))
                                                    (_%__match387369387370%_
                                                     _%e385082385643%_
                                                     _%hd385083385646%_
                                                     _%tl385084385648%_
                                                     _%__splice387330387331%_
                                                     _%target385085385651%_
                                                     _%tl385087385653%_))))
                                            (_%__match387369387370%_
                                             _%e385082385643%_
                                             _%hd385083385646%_
                                             _%tl385084385648%_
                                             _%__splice387330387331%_
                                             _%target385085385651%_
                                             _%tl385087385653%_))
                                        (_%__match387369387370%_
                                         _%e385082385643%_
                                         _%hd385083385646%_
                                         _%tl385084385648%_
                                         _%__splice387330387331%_
                                         _%target385085385651%_
                                         _%tl385087385653%_))
                                    (_%__match387369387370%_
                                     _%e385082385643%_
                                     _%hd385083385646%_
                                     _%tl385084385648%_
                                     _%__splice387330387331%_
                                     _%target385085385651%_
                                     _%tl385087385653%_))))
                            (_%__match387369387370%_
                             _%e385082385643%_
                             _%hd385083385646%_
                             _%tl385084385648%_
                             _%__splice387330387331%_
                             _%target385085385651%_
                             _%tl385087385653%_))))
                    (let ((_%xarg385117385749%_
                           (reverse _%xarg385116385723%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl385096385678%_))
                          (let ((_%g385079385751%_ _%xarg385117385749%_)
                                (_%g385080385752%_ _%hd385107385708%_)
                                (_%g385081385753%_ _%arg385093385671%_))
                            (if (and (let ((__tmp388623
                                            (let ((__tmp388624
                                                   (lambda (_%g385781385784%_
                                                            _%g385782385786%_)
                                                     (cons _%g385781385784%_
                                                           _%g385782385786%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp388624
                                               '()
                                               _%g385081385753%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp388623))
                                     (let ((__tmp388627
                                            (length (let ((__tmp388628
                                                           (lambda (_%g385788385791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g385789385793%_)
                     (cons _%g385788385791%_ _%g385789385793%_))))
              (declare (not safe))
              (foldr__0 __tmp388628 '() _%g385081385753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp388625
                                            (length (let ((__tmp388626
                                                           (lambda (_%g385795385798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g385796385800%_)
                     (cons _%g385795385798%_ _%g385796385800%_))))
              (declare (not safe))
              (foldr__0 __tmp388626 '() _%g385079385751%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp388627 __tmp388625))
                                     (let ((__tmp388631
                                            (let ((__tmp388632
                                                   (lambda (_%g385802385805%_
                                                            _%g385803385807%_)
                                                     (cons _%g385802385805%_
                                                           _%g385803385807%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp388632
                                               '()
                                               _%g385081385753%_)))
                                           (__tmp388629
                                            (let ((__tmp388630
                                                   (lambda (_%g385809385812%_
                                                            _%g385810385814%_)
                                                     (cons _%g385809385812%_
                                                           _%g385810385814%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp388630
                                               '()
                                               _%g385079385751%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp388631
                                        __tmp388629))
                                     (not (let ((__tmp388635
                                                 (lambda (_%g385816385818%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g385816385818%_
                                                      _%g385080385752%_))))
                                                (__tmp388633
                                                 (let ((__tmp388634
                                                        (lambda (_%g385820385823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g385821385825%_)
                  (cons _%g385820385823%_ _%g385821385825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp388634
                                                    '()
                                                    _%g385081385753%_))))
                                            (declare (not safe))
                                            (__find __tmp388635 __tmp388633))))
                                (_%__kont387328387329%_
                                 _%g385079385751%_
                                 _%g385080385752%_
                                 _%g385081385753%_)
                                (_%__match387369387370%_
                                 _%e385082385643%_
                                 _%hd385083385646%_
                                 _%tl385084385648%_
                                 _%__splice387330387331%_
                                 _%target385085385651%_
                                 _%tl385087385653%_)))
                          (_%__match387369387370%_
                           _%e385082385643%_
                           _%hd385083385646%_
                           _%tl385084385648%_
                           _%__splice387330387331%_
                           _%target385085385651%_
                           _%tl385087385653%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop385112385718%_
                                               _%target385109385713%_
                                               '()))
                                            (_%__match387369387370%_
                                             _%e385082385643%_
                                             _%hd385083385646%_
                                             _%tl385084385648%_
                                             _%__splice387330387331%_
                                             _%target385085385651%_
                                             _%tl385087385653%_))))
                                    (_%__match387369387370%_
                                     _%e385082385643%_
                                     _%hd385083385646%_
                                     _%tl385084385648%_
                                     _%__splice387330387331%_
                                     _%target385085385651%_
                                     _%tl385087385653%_))
                                (_%__match387369387370%_
                                 _%e385082385643%_
                                 _%hd385083385646%_
                                 _%tl385084385648%_
                                 _%__splice387330387331%_
                                 _%target385085385651%_
                                 _%tl385087385653%_))))
                        (_%__match387369387370%_
                         _%e385082385643%_
                         _%hd385083385646%_
                         _%tl385084385648%_
                         _%__splice387330387331%_
                         _%target385085385651%_
                         _%tl385087385653%_))
                    (_%__match387369387370%_
                     _%e385082385643%_
                     _%hd385083385646%_
                     _%tl385084385648%_
                     _%__splice387330387331%_
                     _%target385085385651%_
                     _%tl385087385653%_))
                (_%__match387369387370%_
                 _%e385082385643%_
                 _%hd385083385646%_
                 _%tl385084385648%_
                 _%__splice387330387331%_
                 _%target385085385651%_
                 _%tl385087385653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match387369387370%_
                                                 _%e385082385643%_
                                                 _%hd385083385646%_
                                                 _%tl385084385648%_
                                                 _%__splice387330387331%_
                                                 _%target385085385651%_
                                                 _%tl385087385653%_))))
                                        (_%__match387369387370%_
                                         _%e385082385643%_
                                         _%hd385083385646%_
                                         _%tl385084385648%_
                                         _%__splice387330387331%_
                                         _%target385085385651%_
                                         _%tl385087385653%_))
                                    (_%__match387369387370%_
                                     _%e385082385643%_
                                     _%hd385083385646%_
                                     _%tl385084385648%_
                                     _%__splice387330387331%_
                                     _%target385085385651%_
                                     _%tl385087385653%_))
                                (_%__match387369387370%_
                                 _%e385082385643%_
                                 _%hd385083385646%_
                                 _%tl385084385648%_
                                 _%__splice387330387331%_
                                 _%target385085385651%_
                                 _%tl385087385653%_))))
                        (_%__match387369387370%_
                         _%e385082385643%_
                         _%hd385083385646%_
                         _%tl385084385648%_
                         _%__splice387330387331%_
                         _%target385085385651%_
                         _%tl385087385653%_))))
                (_%__match387369387370%_
                 _%e385082385643%_
                 _%hd385083385646%_
                 _%tl385084385648%_
                 _%__splice387330387331%_
                 _%target385085385651%_
                 _%tl385087385653%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop385088385656%_
                                     _%target385085385651%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx387326387327%_))
                              (let ((_%e385082385643%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx387326387327%_))))
                                (let ((_%tl385084385648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e385082385643%_)))
                                      (_%hd385083385646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e385082385643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd385083385646%_))
                                      (let ((_%__splice387330387331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd385083385646%_
                                                '0))))
                                        (let ((_%tl385087385653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice387330387331%_
                                                  '1)))
                                              (_%target385085385651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice387330387331%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl385087385653%_))
                                              (_%__match387357387358%_
                                               _%e385082385643%_
                                               _%hd385083385646%_
                                               _%tl385084385648%_
                                               _%__splice387330387331%_
                                               _%target385085385651%_
                                               _%tl385087385653%_)
                                              (_%__match387369387370%_
                                               _%e385082385643%_
                                               _%hd385083385646%_
                                               _%tl385084385648%_
                                               _%__splice387330387331%_
                                               _%target385085385651%_
                                               _%tl385087385653%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl385084385648%_))
                                          (let ((_%e385197385254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl385084385648%_))))
                                            (let ((_%tl385199385259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e385197385254%_)))
                                                  (_%hd385198385257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e385197385254%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd385198385257%_))
                                                  (let ((_%e385200385262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd385198385257%_))))
                                                    (let ((_%tl385202385267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e385200385262%_)))
                                                          (_%hd385201385265%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e385200385262%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd385201385265%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd385201385265%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl385202385267%_))
                          (let ((_%e385203385270%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl385202385267%_))))
                            (let ((_%tl385205385275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e385203385270%_)))
                                  (_%hd385204385273%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e385203385270%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd385204385273%_))
                                  (let ((_%e385206385278%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd385204385273%_))))
                                    (let ((_%tl385208385283%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e385206385278%_)))
                                          (_%hd385207385281%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e385206385278%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd385207385281%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd385207385281%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl385208385283%_))
                                                  (let ((_%e385209385286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl385208385283%_))))
                                                    (let ((_%tl385211385291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e385209385286%_)))
                                                          (_%hd385210385289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e385209385286%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl385211385291%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl385205385275%_))
                      (let ((_%e385212385294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl385205385275%_))))
                        (let ((_%tl385214385299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e385212385294%_)))
                              (_%hd385213385297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e385212385294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd385213385297%_))
                              (let ((_%e385215385302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd385213385297%_))))
                                (let ((_%tl385217385307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e385215385302%_)))
                                      (_%hd385216385305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e385215385302%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd385216385305%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd385216385305%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl385217385307%_))
                                              (let ((_%e385218385310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl385217385307%_))))
                                                (let ((_%tl385220385315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e385218385310%_)))
                                                      (_%hd385219385313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e385218385310%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl385220385315%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl385214385299%_))
                                                          (let ((_%e385221385318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl385214385299%_))))
                    (let ((_%tl385223385323%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e385221385318%_)))
                          (_%hd385222385321%_
                           (let ()
                             (declare (not safe))
                             (##car _%e385221385318%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd385222385321%_))
                          (let ((_%e385224385326%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd385222385321%_))))
                            (let ((_%tl385226385331%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e385224385326%_)))
                                  (_%hd385225385329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e385224385326%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd385225385329%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd385225385329%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl385226385331%_))
                                          (let ((_%e385227385334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl385226385331%_))))
                                            (let ((_%tl385229385339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e385227385334%_)))
                                                  (_%hd385228385337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e385227385334%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl385229385339%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl385223385323%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl385199385259%_))
                                                          (_%__match387467387468%_
                                                           _%e385082385643%_
                                                           _%hd385083385646%_
                                                           _%tl385084385648%_
                                                           _%e385197385254%_
                                                           _%hd385198385257%_
                                                           _%tl385199385259%_
                                                           _%e385200385262%_
                                                           _%hd385201385265%_
                                                           _%tl385202385267%_
                                                           _%e385203385270%_
                                                           _%hd385204385273%_
                                                           _%tl385205385275%_
                                                           _%e385206385278%_
                                                           _%hd385207385281%_
                                                           _%tl385208385283%_
                                                           _%e385209385286%_
                                                           _%hd385210385289%_
                                                           _%tl385211385291%_
                                                           _%e385212385294%_
                                                           _%hd385213385297%_
                                                           _%tl385214385299%_
                                                           _%e385215385302%_
                                                           _%hd385216385305%_
                                                           _%tl385217385307%_
                                                           _%e385218385310%_
                                                           _%hd385219385313%_
                                                           _%tl385220385315%_
                                                           _%e385221385318%_
                                                           _%hd385222385321%_
                                                           _%tl385223385323%_
                                                           _%e385224385326%_
                                                           _%hd385225385329%_
                                                           _%tl385226385331%_
                                                           _%e385227385334%_
                                                           _%hd385228385337%_
                                                           _%tl385229385339%_)
                                                          (_%__kont387342387343%_))
                                                      (_%__kont387342387343%_))
                                                  (_%__kont387342387343%_))))
                                          (_%__kont387342387343%_))
                                      (_%__kont387342387343%_))
                                  (_%__kont387342387343%_))))
                          (_%__kont387342387343%_))))
                  (_%__kont387342387343%_))
              (_%__kont387342387343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont387342387343%_))
                                          (_%__kont387342387343%_))
                                      (_%__kont387342387343%_))))
                              (_%__kont387342387343%_))))
                      (_%__kont387342387343%_))
                  (_%__kont387342387343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont387342387343%_))
                                              (_%__kont387342387343%_))
                                          (_%__kont387342387343%_))))
                                  (_%__kont387342387343%_))))
                          (_%__kont387342387343%_))
                      (_%__kont387342387343%_))
                  (_%__kont387342387343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont387342387343%_))))
                                          (_%__kont387342387343%_)))))
                              (_%__kont387342387343%_)))))))
                 (_%dispatch-case-e384392%_
                  (lambda (_%hd384539%_ _%body384540%_)
                    (let* ((_%form384542%_
                            (cons _%hd384539%_ (cons _%body384540%_ '())))
                           (_%__stx387470387471%_ _%form384542%_)
                           (_%g384546384670%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx387470387471%_)))))
                      (let ((_%__kont387472387473%_
                             (lambda (_%g384548385035%_
                                      _%g384549385036%_
                                      _%g384550385037%_)
                               (let ((__tmp388636
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g384549385036%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self384388%_
                                  __tmp388636))))
                            (_%__kont387478387479%_
                             (lambda (_%g384593384887%_
                                      _%g384594384888%_
                                      _%g384595384889%_
                                      _%g384596384890%_)
                               (let ((__tmp388637
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g384593384887%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self384388%_
                                  __tmp388637))))
                            (_%__kont387482387483%_
                             (lambda (_%g384633384755%_
                                      _%g384634384756%_
                                      _%g384635384757%_)
                               (let ((__tmp388638
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g384633384755%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self384388%_
                                  __tmp388638)))))
                        (let* ((_%__match387579387580%_
                                (lambda (_%e384636384675%_
                                         _%hd384637384678%_
                                         _%tl384638384680%_
                                         _%e384639384683%_
                                         _%hd384640384686%_
                                         _%tl384641384688%_
                                         _%e384642384691%_
                                         _%hd384643384694%_
                                         _%tl384644384696%_
                                         _%e384645384699%_
                                         _%hd384646384702%_
                                         _%tl384647384704%_
                                         _%e384648384707%_
                                         _%hd384649384710%_
                                         _%tl384650384712%_
                                         _%e384651384715%_
                                         _%hd384652384718%_
                                         _%tl384653384720%_
                                         _%e384654384723%_
                                         _%hd384655384726%_
                                         _%tl384656384728%_
                                         _%e384657384731%_
                                         _%hd384658384734%_
                                         _%tl384659384736%_
                                         _%e384660384739%_
                                         _%hd384661384742%_
                                         _%tl384662384744%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl384656384728%_))
                                      (let ((_%e384663384747%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl384656384728%_))))
                                        (let ((_%tl384665384752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e384663384747%_)))
                                              (_%hd384664384750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e384663384747%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl384665384752%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl384641384688%_))
                                                  (_%__kont387482387483%_
                                                   _%hd384661384742%_
                                                   _%hd384652384718%_
                                                   _%hd384637384678%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g384546384670%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g384546384670%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g384546384670%_)))))
                               (_%__match387509387510%_
                                (lambda (_%e384597384793%_
                                         _%hd384598384796%_
                                         _%tl384599384798%_
                                         _%__splice387480387481%_
                                         _%target384600384801%_
                                         _%tl384602384803%_)
                                  (letrec ((_%loop384603384806%_
                                            (lambda (_%hd384601384809%_
                                                     _%arg384607384811%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd384601384809%_))
                                                  (let ((_%e384604384813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd384601384809%_))))
                                                    (let ((_%lp-tl384606384818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e384604384813%_)))
                                                          (_%lp-hd384605384816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e384604384813%_))))
                                                      (_%loop384603384806%_
                                                       _%lp-tl384606384818%_
                                                       (cons _%lp-hd384605384816%_
                                                             _%arg384607384811%_))))
                                                  (let ((_%arg384608384821%_
                                                         (reverse _%arg384607384811%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl384599384798%_))
                                                        (let ((_%e384609384823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl384599384798%_))))
                  (let ((_%tl384611384828%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e384609384823%_)))
                        (_%hd384610384826%_
                         (let ()
                           (declare (not safe))
                           (##car _%e384609384823%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd384610384826%_))
                        (let ((_%e384612384831%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd384610384826%_))))
                          (let ((_%tl384614384836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e384612384831%_)))
                                (_%hd384613384834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e384612384831%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd384613384834%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd384613384834%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl384614384836%_))
                                        (let ((_%e384615384839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl384614384836%_))))
                                          (let ((_%tl384617384844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e384615384839%_)))
                                                (_%hd384616384842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e384615384839%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd384616384842%_))
                                                (let ((_%e384618384847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd384616384842%_))))
                                                  (let ((_%tl384620384852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e384618384847%_)))
                                                        (_%hd384619384850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e384618384847%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd384619384850%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd384619384850%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl384620384852%_))
                        (let ((_%e384621384855%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl384620384852%_))))
                          (let ((_%tl384623384860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e384621384855%_)))
                                (_%hd384622384858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e384621384855%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl384623384860%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl384617384844%_))
                                    (let ((_%e384624384863%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl384617384844%_))))
                                      (let ((_%tl384626384868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e384624384863%_)))
                                            (_%hd384625384866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e384624384863%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd384625384866%_))
                                            (let ((_%e384627384871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd384625384866%_))))
                                              (let ((_%tl384629384876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e384627384871%_)))
                                                    (_%hd384628384874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e384627384871%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd384628384874%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd384628384874%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl384629384876%_))
                                                            (let ((_%e384630384879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl384629384876%_))))
                      (let ((_%tl384632384884%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e384630384879%_)))
                            (_%hd384631384882%_
                             (let ()
                               (declare (not safe))
                               (##car _%e384630384879%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl384632384884%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl384611384828%_))
                                (_%__kont387478387479%_
                                 _%hd384631384882%_
                                 _%hd384622384858%_
                                 _%tl384602384803%_
                                 _%arg384608384821%_)
                                (_%__match387579387580%_
                                 _%e384597384793%_
                                 _%hd384598384796%_
                                 _%tl384599384798%_
                                 _%e384609384823%_
                                 _%hd384610384826%_
                                 _%tl384611384828%_
                                 _%e384612384831%_
                                 _%hd384613384834%_
                                 _%tl384614384836%_
                                 _%e384615384839%_
                                 _%hd384616384842%_
                                 _%tl384617384844%_
                                 _%e384618384847%_
                                 _%hd384619384850%_
                                 _%tl384620384852%_
                                 _%e384621384855%_
                                 _%hd384622384858%_
                                 _%tl384623384860%_
                                 _%e384624384863%_
                                 _%hd384625384866%_
                                 _%tl384626384868%_
                                 _%e384627384871%_
                                 _%hd384628384874%_
                                 _%tl384629384876%_
                                 _%e384630384879%_
                                 _%hd384631384882%_
                                 _%tl384632384884%_))
                            (let ()
                              (declare (not safe))
                              (_%g384546384670%_)))))
                    (let () (declare (not safe)) (_%g384546384670%_)))
                (let () (declare (not safe)) (_%g384546384670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g384546384670%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g384546384670%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g384546384670%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g384546384670%_)))))
                        (let () (declare (not safe)) (_%g384546384670%_)))
                    (let () (declare (not safe)) (_%g384546384670%_)))
                (let () (declare (not safe)) (_%g384546384670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g384546384670%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g384546384670%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g384546384670%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g384546384670%_)))))
                        (let () (declare (not safe)) (_%g384546384670%_)))))
                (let () (declare (not safe)) (_%g384546384670%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop384603384806%_
                                     _%target384600384801%_
                                     '()))))
                               (_%__match387497387498%_
                                (lambda (_%e384551384927%_
                                         _%hd384552384930%_
                                         _%tl384553384932%_
                                         _%__splice387474387475%_
                                         _%target384554384935%_
                                         _%tl384556384937%_)
                                  (letrec ((_%loop384557384940%_
                                            (lambda (_%hd384555384943%_
                                                     _%arg384561384945%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd384555384943%_))
                                                  (let ((_%e384558384947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd384555384943%_))))
                                                    (let ((_%lp-tl384560384952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e384558384947%_)))
                                                          (_%lp-hd384559384950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e384558384947%_))))
                                                      (_%loop384557384940%_
                                                       _%lp-tl384560384952%_
                                                       (cons _%lp-hd384559384950%_
                                                             _%arg384561384945%_))))
                                                  (let ((_%arg384562384955%_
                                                         (reverse _%arg384561384945%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl384553384932%_))
                                                        (let ((_%e384563384957%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl384553384932%_))))
                  (let ((_%tl384565384962%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e384563384957%_)))
                        (_%hd384564384960%_
                         (let ()
                           (declare (not safe))
                           (##car _%e384563384957%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd384564384960%_))
                        (let ((_%e384566384965%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd384564384960%_))))
                          (let ((_%tl384568384970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e384566384965%_)))
                                (_%hd384567384968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e384566384965%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd384567384968%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd384567384968%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl384568384970%_))
                                        (let ((_%e384569384973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl384568384970%_))))
                                          (let ((_%tl384571384978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e384569384973%_)))
                                                (_%hd384570384976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e384569384973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd384570384976%_))
                                                (let ((_%e384572384981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd384570384976%_))))
                                                  (let ((_%tl384574384986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e384572384981%_)))
                                                        (_%hd384573384984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e384572384981%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd384573384984%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd384573384984%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl384574384986%_))
                        (let ((_%e384575384989%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl384574384986%_))))
                          (let ((_%tl384577384994%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e384575384989%_)))
                                (_%hd384576384992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e384575384989%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl384577384994%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl384571384978%_))
                                    (let ((_%__splice387476387477%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl384571384978%_
                                              '0))))
                                      (let ((_%tl384580384999%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice387476387477%_
                                                '1)))
                                            (_%target384578384997%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice387476387477%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl384580384999%_))
                                            (letrec ((_%loop384581385002%_
                                                      (lambda (_%hd384579385005%_
                                                               _%xarg384585385007%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd384579385005%_))
                                                            (let ((_%e384582385009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd384579385005%_))))
                      (let ((_%lp-tl384584385014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e384582385009%_)))
                            (_%lp-hd384583385012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e384582385009%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd384583385012%_))
                            (let ((_%e384587385017%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd384583385012%_))))
                              (let ((_%tl384589385022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e384587385017%_)))
                                    (_%hd384588385020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e384587385017%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd384588385020%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd384588385020%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl384589385022%_))
                                            (let ((_%e384590385025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl384589385022%_))))
                                              (let ((_%tl384592385030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e384590385025%_)))
                                                    (_%hd384591385028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e384590385025%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl384592385030%_))
                                                    (_%loop384581385002%_
                                                     _%lp-tl384584385014%_
                                                     (cons _%hd384591385028%_
                                                           _%xarg384585385007%_))
                                                    (_%__match387509387510%_
                                                     _%e384551384927%_
                                                     _%hd384552384930%_
                                                     _%tl384553384932%_
                                                     _%__splice387474387475%_
                                                     _%target384554384935%_
                                                     _%tl384556384937%_))))
                                            (_%__match387509387510%_
                                             _%e384551384927%_
                                             _%hd384552384930%_
                                             _%tl384553384932%_
                                             _%__splice387474387475%_
                                             _%target384554384935%_
                                             _%tl384556384937%_))
                                        (_%__match387509387510%_
                                         _%e384551384927%_
                                         _%hd384552384930%_
                                         _%tl384553384932%_
                                         _%__splice387474387475%_
                                         _%target384554384935%_
                                         _%tl384556384937%_))
                                    (_%__match387509387510%_
                                     _%e384551384927%_
                                     _%hd384552384930%_
                                     _%tl384553384932%_
                                     _%__splice387474387475%_
                                     _%target384554384935%_
                                     _%tl384556384937%_))))
                            (_%__match387509387510%_
                             _%e384551384927%_
                             _%hd384552384930%_
                             _%tl384553384932%_
                             _%__splice387474387475%_
                             _%target384554384935%_
                             _%tl384556384937%_))))
                    (let ((_%xarg384586385033%_
                           (reverse _%xarg384585385007%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl384565384962%_))
                          (_%__kont387472387473%_
                           _%xarg384586385033%_
                           _%hd384576384992%_
                           _%arg384562384955%_)
                          (_%__match387509387510%_
                           _%e384551384927%_
                           _%hd384552384930%_
                           _%tl384553384932%_
                           _%__splice387474387475%_
                           _%target384554384935%_
                           _%tl384556384937%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop384581385002%_
                                               _%target384578384997%_
                                               '()))
                                            (_%__match387509387510%_
                                             _%e384551384927%_
                                             _%hd384552384930%_
                                             _%tl384553384932%_
                                             _%__splice387474387475%_
                                             _%target384554384935%_
                                             _%tl384556384937%_))))
                                    (_%__match387509387510%_
                                     _%e384551384927%_
                                     _%hd384552384930%_
                                     _%tl384553384932%_
                                     _%__splice387474387475%_
                                     _%target384554384935%_
                                     _%tl384556384937%_))
                                (_%__match387509387510%_
                                 _%e384551384927%_
                                 _%hd384552384930%_
                                 _%tl384553384932%_
                                 _%__splice387474387475%_
                                 _%target384554384935%_
                                 _%tl384556384937%_))))
                        (_%__match387509387510%_
                         _%e384551384927%_
                         _%hd384552384930%_
                         _%tl384553384932%_
                         _%__splice387474387475%_
                         _%target384554384935%_
                         _%tl384556384937%_))
                    (_%__match387509387510%_
                     _%e384551384927%_
                     _%hd384552384930%_
                     _%tl384553384932%_
                     _%__splice387474387475%_
                     _%target384554384935%_
                     _%tl384556384937%_))
                (_%__match387509387510%_
                 _%e384551384927%_
                 _%hd384552384930%_
                 _%tl384553384932%_
                 _%__splice387474387475%_
                 _%target384554384935%_
                 _%tl384556384937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match387509387510%_
                                                 _%e384551384927%_
                                                 _%hd384552384930%_
                                                 _%tl384553384932%_
                                                 _%__splice387474387475%_
                                                 _%target384554384935%_
                                                 _%tl384556384937%_))))
                                        (_%__match387509387510%_
                                         _%e384551384927%_
                                         _%hd384552384930%_
                                         _%tl384553384932%_
                                         _%__splice387474387475%_
                                         _%target384554384935%_
                                         _%tl384556384937%_))
                                    (_%__match387509387510%_
                                     _%e384551384927%_
                                     _%hd384552384930%_
                                     _%tl384553384932%_
                                     _%__splice387474387475%_
                                     _%target384554384935%_
                                     _%tl384556384937%_))
                                (_%__match387509387510%_
                                 _%e384551384927%_
                                 _%hd384552384930%_
                                 _%tl384553384932%_
                                 _%__splice387474387475%_
                                 _%target384554384935%_
                                 _%tl384556384937%_))))
                        (_%__match387509387510%_
                         _%e384551384927%_
                         _%hd384552384930%_
                         _%tl384553384932%_
                         _%__splice387474387475%_
                         _%target384554384935%_
                         _%tl384556384937%_))))
                (_%__match387509387510%_
                 _%e384551384927%_
                 _%hd384552384930%_
                 _%tl384553384932%_
                 _%__splice387474387475%_
                 _%target384554384935%_
                 _%tl384556384937%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop384557384940%_
                                     _%target384554384935%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx387470387471%_))
                              (let ((_%e384551384927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx387470387471%_))))
                                (let ((_%tl384553384932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e384551384927%_)))
                                      (_%hd384552384930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e384551384927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd384552384930%_))
                                      (let ((_%__splice387474387475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd384552384930%_
                                                '0))))
                                        (let ((_%tl384556384937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice387474387475%_
                                                  '1)))
                                              (_%target384554384935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice387474387475%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl384556384937%_))
                                              (_%__match387497387498%_
                                               _%e384551384927%_
                                               _%hd384552384930%_
                                               _%tl384553384932%_
                                               _%__splice387474387475%_
                                               _%target384554384935%_
                                               _%tl384556384937%_)
                                              (_%__match387509387510%_
                                               _%e384551384927%_
                                               _%hd384552384930%_
                                               _%tl384553384932%_
                                               _%__splice387474387475%_
                                               _%target384554384935%_
                                               _%tl384556384937%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl384553384932%_))
                                          (let ((_%e384639384683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl384553384932%_))))
                                            (let ((_%tl384641384688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e384639384683%_)))
                                                  (_%hd384640384686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e384639384683%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd384640384686%_))
                                                  (let ((_%e384642384691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd384640384686%_))))
                                                    (let ((_%tl384644384696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e384642384691%_)))
                                                          (_%hd384643384694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e384642384691%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd384643384694%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd384643384694%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl384644384696%_))
                          (let ((_%e384645384699%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl384644384696%_))))
                            (let ((_%tl384647384704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e384645384699%_)))
                                  (_%hd384646384702%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e384645384699%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd384646384702%_))
                                  (let ((_%e384648384707%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd384646384702%_))))
                                    (let ((_%tl384650384712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e384648384707%_)))
                                          (_%hd384649384710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e384648384707%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd384649384710%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd384649384710%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl384650384712%_))
                                                  (let ((_%e384651384715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl384650384712%_))))
                                                    (let ((_%tl384653384720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e384651384715%_)))
                                                          (_%hd384652384718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e384651384715%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl384653384720%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl384647384704%_))
                      (let ((_%e384654384723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl384647384704%_))))
                        (let ((_%tl384656384728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e384654384723%_)))
                              (_%hd384655384726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e384654384723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd384655384726%_))
                              (let ((_%e384657384731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd384655384726%_))))
                                (let ((_%tl384659384736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e384657384731%_)))
                                      (_%hd384658384734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e384657384731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd384658384734%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd384658384734%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl384659384736%_))
                                              (let ((_%e384660384739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl384659384736%_))))
                                                (let ((_%tl384662384744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e384660384739%_)))
                                                      (_%hd384661384742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e384660384739%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl384662384744%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl384656384728%_))
                                                          (let ((_%e384663384747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl384656384728%_))))
                    (let ((_%tl384665384752%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e384663384747%_)))
                          (_%hd384664384750%_
                           (let ()
                             (declare (not safe))
                             (##car _%e384663384747%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl384665384752%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl384641384688%_))
                              (_%__kont387482387483%_
                               _%hd384661384742%_
                               _%hd384652384718%_
                               _%hd384552384930%_)
                              (let ()
                                (declare (not safe))
                                (_%g384546384670%_)))
                          (let () (declare (not safe)) (_%g384546384670%_)))))
                  (let () (declare (not safe)) (_%g384546384670%_)))
              (let () (declare (not safe)) (_%g384546384670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g384546384670%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g384546384670%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g384546384670%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g384546384670%_)))))
                      (let () (declare (not safe)) (_%g384546384670%_)))
                  (let () (declare (not safe)) (_%g384546384670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g384546384670%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g384546384670%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g384546384670%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g384546384670%_)))))
                          (let () (declare (not safe)) (_%g384546384670%_)))
                      (let () (declare (not safe)) (_%g384546384670%_)))
                  (let () (declare (not safe)) (_%g384546384670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g384546384670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g384546384670%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g384546384670%_))))))))
                 (_%generate1384393%_
                  (lambda (_%args384524%_
                           _%arglen384525%_
                           _%hd384526%_
                           _%body384527%_)
                    (let* ((_%len384529%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd384526%_)))
                           (_%condition384534%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd384526%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen384525%_
                                                (cons _%len384529%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen384525%_ (cons _%len384529%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len384529%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen384525%_
                                                    (cons _%len384529%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen384525%_ (cons _%len384529%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch384536%_
                            (if (_%dispatch-case?384391%_
                                 _%hd384526%_
                                 _%body384527%_)
                                (_%dispatch-case-e384392%_
                                 _%hd384526%_
                                 _%body384527%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self384388%_
                                 _%hd384526%_
                                 _%body384527%_))))
                      (cons _%condition384534%_
                            (cons (cons 'apply
                                        (cons _%dispatch384536%_
                                              (cons _%args384524%_ '())))
                                  '()))))))
          (let* ((_%g384395384423%_
                  (lambda (_%g384396384420%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g384396384420%_))))
                 (_%g384394384521%_
                  (lambda (_%g384396384426%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g384396384426%_))
                        (let ((_%e384399384428%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g384396384426%_))))
                          (let ((_%hd384400384431%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e384399384428%_)))
                                (_%tl384401384433%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e384399384428%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl384401384433%_))
                                (let ((_g388639_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl384401384433%_
                                          '0))))
                                  (begin
                                    (let ((_g388640_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g388639_)
                                                 (##values-length _g388639_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g388640_ 2)))
                                          (error "Context expects 2 values"
                                                 _g388640_)))
                                    (let ((_%target384402384436%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g388639_ 0)))
                                          (_%tl384404384438%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g388639_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl384404384438%_))
                                          (letrec ((_%loop384405384441%_
                                                    (lambda (_%hd384403384444%_
                                                             _%body384409384446%_
                                                             _%hd384410384447%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd384403384444%_))
                                                          (let ((_%e384406384449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd384403384444%_))))
                    (let ((_%lp-hd384407384452%_
                           (let ()
                             (declare (not safe))
                             (##car _%e384406384449%_)))
                          (_%lp-tl384408384454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e384406384449%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd384407384452%_))
                          (let ((_%e384413384457%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd384407384452%_))))
                            (let ((_%hd384414384460%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e384413384457%_)))
                                  (_%tl384415384462%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e384413384457%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl384415384462%_))
                                  (let ((_%e384416384465%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl384415384462%_))))
                                    (let ((_%hd384417384468%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e384416384465%_)))
                                          (_%tl384418384470%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e384416384465%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl384418384470%_))
                                          (_%loop384405384441%_
                                           _%lp-tl384408384454%_
                                           (cons _%hd384417384468%_
                                                 _%body384409384446%_)
                                           (cons _%hd384414384460%_
                                                 _%hd384410384447%_))
                                          (_%g384395384423%_
                                           _%g384396384426%_))))
                                  (_%g384395384423%_ _%g384396384426%_))))
                          (_%g384395384423%_ _%g384396384426%_))))
                  (let ((_%body384411384473%_ (reverse _%body384409384446%_))
                        (_%hd384412384474%_ (reverse _%hd384410384447%_)))
                    ((lambda (_%g384397384476%_ _%g384398384477%_)
                       (let ((_%args384496%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen384497%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name384498%_
                              (let ((_%$e384493%_
                                     (let ((__tmp388641
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp388641 _%stx384389%_))))
                                (if _%$e384493%_
                                    _%$e384493%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args384496%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen384497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args384496%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args384496%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp388645
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name384498%_
                                                                (cons _%args384496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp388642
                                  (map (lambda (_%g384499384502%_
                                                _%g384500384504%_)
                                         (_%generate1384393%_
                                          _%args384496%_
                                          _%arglen384497%_
                                          _%g384499384502%_
                                          _%g384500384504%_))
                                       (let ((__tmp388643
                                              (lambda (_%g384506384509%_
                                                       _%g384507384511%_)
                                                (cons _%g384506384509%_
                                                      _%g384507384511%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp388643
                                          '()
                                          _%g384398384477%_))
                                       (let ((__tmp388644
                                              (lambda (_%g384513384516%_
                                                       _%g384514384518%_)
                                                (cons _%g384513384516%_
                                                      _%g384514384518%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp388644
                                          '()
                                          _%g384397384476%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp388645 __tmp388642)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body384411384473%_
                     _%hd384412384474%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop384405384441%_
                                             _%target384402384436%_
                                             '()
                                             '()))
                                          (_%g384395384423%_
                                           _%g384396384426%_)))))
                                (_%g384395384423%_ _%g384396384426%_))))
                        (_%g384395384423%_ _%g384396384426%_)))))
            (_%g384394384521%_ _%stx384389%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self383625%_ _%stx383626%_ _%compiled-body?383627%_)
        (letrec ((_%generate-simple383629%_
                  (lambda (_%hd384373%_ _%body384374%_)
                    (_%coalesce-boolean383630%_
                     (_%simplify-let383631%_
                      (gxc#generate-runtime-simple-let
                       _%self383625%_
                       'let
                       _%hd384373%_
                       _%body384374%_
                       _%compiled-body?383627%_)))))
                 (_%coalesce-boolean383630%_
                  (lambda (_%code384234%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code384235384261%_ _%code384234%_)
                               (_%else384237384269%_
                                (lambda () _%code384234%_))
                               (_%K384239384306%_
                                (lambda (_%expr2384272%_
                                         _%expr1384273%_
                                         _%id384274%_)
                                  (let* ((_%expr2384275384283%_
                                          _%expr2384272%_)
                                         (_%else384277384291%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1384273%_
                                                        (cons _%expr2384272%_
                                                              '())))))
                                         (_%K384279384296%_
                                          (lambda (_%exprs384294%_)
                                            (cons 'or
                                                  (cons _%expr1384273%_
                                                        _%exprs384294%_)))))
                                    (if (pair? _%expr2384275384283%_)
                                        (let ((_%hd384280384299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2384275384283%_)))
                                              (_%tl384281384301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2384275384283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd384280384299%_ 'or))
                                              (let ((_%exprs384304%_
                                                     _%tl384281384301%_))
                                                (_%K384279384296%_
                                                 _%exprs384304%_))
                                              (_%else384277384291%_)))
                                        (_%else384277384291%_))))))
                          (if (pair? _%code384235384261%_)
                              (let ((_%hd384240384309%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code384235384261%_)))
                                    (_%tl384241384311%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code384235384261%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd384240384309%_ 'let))
                                    (if (pair? _%tl384241384311%_)
                                        (let ((_%hd384242384314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl384241384311%_)))
                                              (_%tl384243384316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl384241384311%_))))
                                          (if (pair? _%hd384242384314%_)
                                              (let ((_%hd384254384319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd384242384314%_)))
                                                    (_%tl384255384321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd384242384314%_))))
                                                (if (pair? _%hd384254384319%_)
                                                    (let ((_%hd384256384324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd384254384319%_)))
                                                          (_%tl384257384326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd384254384319%_))))
                                                      (let ((_%id384329%_
                                                             _%hd384256384324%_))
                                                        (if (pair? _%tl384257384326%_)
                                                            (let ((_%hd384258384331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl384257384326%_)))
                          (_%tl384259384333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl384257384326%_))))
                      (let ((_%expr1384336%_ _%hd384258384331%_))
                        (if (null? _%tl384259384333%_)
                            (if (null? _%tl384255384321%_)
                                (if (pair? _%tl384243384316%_)
                                    (let ((_%hd384244384338%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl384243384316%_)))
                                          (_%tl384245384340%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl384243384316%_))))
                                      (if (pair? _%hd384244384338%_)
                                          (let ((_%hd384246384343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd384244384338%_)))
                                                (_%tl384247384345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd384244384338%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd384246384343%_
                                                         'if))
                                                (if (pair? _%tl384247384345%_)
                                                    (let ((_%hd384248384348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl384247384345%_)))
                                                          (_%tl384249384350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl384247384345%_))))
                                                      (if ((lambda (_%g384352384354%_)
                                                             (eq? _%g384352384354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id384329%_))
                   _%hd384248384348%_)
                  (if (pair? _%tl384249384350%_)
                      (let ((_%hd384250384357%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl384249384350%_)))
                            (_%tl384251384359%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl384249384350%_))))
                        (if ((lambda (_%g384361384363%_)
                               (eq? _%g384361384363%_ _%id384329%_))
                             _%hd384250384357%_)
                            (if (pair? _%tl384251384359%_)
                                (let ((_%hd384252384366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl384251384359%_)))
                                      (_%tl384253384368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl384251384359%_))))
                                  (let ((_%expr2384371%_ _%hd384252384366%_))
                                    (if (null? _%tl384253384368%_)
                                        (if (null? _%tl384245384340%_)
                                            (_%K384239384306%_
                                             _%expr2384371%_
                                             _%expr1384336%_
                                             _%id384329%_)
                                            (_%else384237384269%_))
                                        (_%else384237384269%_))))
                                (_%else384237384269%_))
                            (_%else384237384269%_)))
                      (_%else384237384269%_))
                  (_%else384237384269%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else384237384269%_))
                                                (_%else384237384269%_)))
                                          (_%else384237384269%_)))
                                    (_%else384237384269%_))
                                (_%else384237384269%_))
                            (_%else384237384269%_))))
                    (_%else384237384269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else384237384269%_)))
                                              (_%else384237384269%_)))
                                        (_%else384237384269%_))
                                    (_%else384237384269%_)))
                              (_%else384237384269%_)))
                        _%code384234%_)))
                 (_%simplify-let383631%_
                  (lambda (_%code383933%_)
                    (let* ((_%code383934384006%_ _%code383933%_)
                           (_%else383939384014%_ (lambda () _%code383933%_)))
                      (let ((_%K383998384214%_
                             (lambda (_%expr384212%_) _%expr384212%_))
                            (_%K383981384160%_
                             (lambda (_%body384156%_
                                      _%expr384157%_
                                      _%id384158%_)
                               (cons 'let
                                     (cons (cons (cons _%id384158%_
                                                       (cons _%expr384157%_
                                                             '()))
                                                 '())
                                           _%body384156%_))))
                            (_%K383958384084%_
                             (lambda (_%body384078%_
                                      _%expr2384079%_
                                      _%id2384080%_
                                      _%expr1384081%_
                                      _%id1384082%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1384082%_
                                                       (cons _%expr1384081%_
                                                             '()))
                                                 (cons (cons _%id2384080%_
                                                             (cons _%expr2384079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body384078%_))))
                            (_%K383941384023%_
                             (lambda (_%body384018%_
                                      _%bind384019%_
                                      _%expr1384020%_
                                      _%id1384021%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1384021%_
                                                       (cons _%expr1384020%_
                                                             '()))
                                                 _%bind384019%_)
                                           _%body384018%_)))))
                        (if (pair? _%code383934384006%_)
                            (let ((_%tl384000384219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code383934384006%_)))
                                  (_%hd383999384217%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code383934384006%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd383999384217%_ 'let))
                                  (if (pair? _%tl384000384219%_)
                                      (let ((_%tl384002384224%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl384000384219%_)))
                                            (_%hd384001384222%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl384000384219%_))))
                                        (if (null? _%hd384001384222%_)
                                            (if (pair? _%tl384002384224%_)
                                                (let ((_%tl384004384229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl384002384224%_)))
                                                      (_%hd384003384227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl384002384224%_))))
                                                  (if (null? _%tl384004384229%_)
                                                      (let ((_%expr384232%_
                                                             _%hd384003384227%_))
                                                        (_%K383998384214%_
                                                         _%expr384232%_))
                                                      (_%else383939384014%_)))
                                                (_%else383939384014%_))
                                            (if (pair? _%hd384001384222%_)
                                                (let ((_%tl383993384175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd384001384222%_)))
                                                      (_%hd383992384173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd384001384222%_))))
                                                  (if (pair? _%hd383992384173%_)
                                                      (let ((_%tl383995384180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd383992384173%_)))
                    (_%hd383994384178%_
                     (let () (declare (not safe)) (##car _%hd383992384173%_))))
                (if (pair? _%tl383995384180%_)
                    (let ((_%tl383997384187%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl383995384180%_)))
                          (_%hd383996384185%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl383995384180%_))))
                      (if (null? _%tl383997384187%_)
                          (if (null? _%tl383993384175%_)
                              (if (pair? _%tl384002384224%_)
                                  (let ((_%tl383987384194%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl384002384224%_)))
                                        (_%hd383986384192%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl384002384224%_))))
                                    (if (pair? _%hd383986384192%_)
                                        (let ((_%tl383989384199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd383986384192%_)))
                                              (_%hd383988384197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd383986384192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd383988384197%_
                                                       'let))
                                              (if (pair? _%tl383989384199%_)
                                                  (let ((_%tl383991384204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl383989384199%_)))
                                                        (_%hd383990384202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl383989384199%_))))
                                                    (if (null? _%hd383990384202%_)
                                                        (if (null? _%tl383987384194%_)
                                                            (let ((_%id384183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd383994384178%_)
                          (_%expr384190%_ _%hd383996384185%_)
                          (_%body384207%_ _%tl383991384204%_))
                      (_%K383981384160%_
                       _%body384207%_
                       _%expr384190%_
                       _%id384183%_))
                    (_%else383939384014%_))
                (if (pair? _%hd383990384202%_)
                    (let ((_%tl383970384133%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd383990384202%_)))
                          (_%hd383969384131%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd383990384202%_))))
                      (if (pair? _%hd383969384131%_)
                          (let ((_%tl383972384138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd383969384131%_)))
                                (_%hd383971384136%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd383969384131%_))))
                            (if (pair? _%tl383972384138%_)
                                (let ((_%tl383974384145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl383972384138%_)))
                                      (_%hd383973384143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl383972384138%_))))
                                  (if (null? _%tl383974384145%_)
                                      (if (null? _%tl383970384133%_)
                                          (if (null? _%tl383987384194%_)
                                              (let ((_%id1384107%_
                                                     _%hd383994384178%_)
                                                    (_%expr1384114%_
                                                     _%hd383996384185%_)
                                                    (_%id2384141%_
                                                     _%hd383971384136%_)
                                                    (_%expr2384148%_
                                                     _%hd383973384143%_)
                                                    (_%body384150%_
                                                     _%tl383991384204%_))
                                                (_%K383958384084%_
                                                 _%body384150%_
                                                 _%expr2384148%_
                                                 _%id2384141%_
                                                 _%expr1384114%_
                                                 _%id1384107%_))
                                              (_%else383939384014%_))
                                          (_%else383939384014%_))
                                      (_%else383939384014%_)))
                                (_%else383939384014%_)))
                          (_%else383939384014%_)))
                    (_%else383939384014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else383939384014%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd383988384197%_
                                                           'let*))
                                                  (if (pair? _%tl383989384199%_)
                                                      (let ((_%tl383951384067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl383989384199%_)))
                    (_%hd383950384065%_
                     (let () (declare (not safe)) (##car _%tl383989384199%_))))
                (if (null? _%tl383987384194%_)
                    (let ((_%id1384046%_ _%hd383994384178%_)
                          (_%expr1384053%_ _%hd383996384185%_)
                          (_%bind384070%_ _%hd383950384065%_)
                          (_%body384072%_ _%tl383951384067%_))
                      (_%K383941384023%_
                       _%body384072%_
                       _%bind384070%_
                       _%expr1384053%_
                       _%id1384046%_))
                    (_%else383939384014%_)))
              (_%else383939384014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else383939384014%_))))
                                        (_%else383939384014%_)))
                                  (_%else383939384014%_))
                              (_%else383939384014%_))
                          (_%else383939384014%_)))
                    (_%else383939384014%_)))
              (_%else383939384014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else383939384014%_))))
                                      (_%else383939384014%_))
                                  (_%else383939384014%_)))
                            (_%else383939384014%_))))))
                 (_%generate-values383632%_
                  (lambda (_%hd383746%_ _%body383747%_)
                    (let _%lp383749%_ ((_%rest383751%_ _%hd383746%_)
                                       (_%bind383752%_ '())
                                       (_%check383753%_ '())
                                       (_%post383754%_ '()))
                      (let* ((_%__stx387799387800%_ _%rest383751%_)
                             (_%g383757383768%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx387799387800%_)))))
                        (let ((_%__kont387801387802%_
                               (lambda (_%g383759383795%_ _%g383760383796%_)
                                 (let* ((_%__stx387755387756%_
                                         _%g383760383796%_)
                                        (_%g383811383836%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx387755387756%_)))))
                                   (let ((_%__kont387757387758%_
                                          (lambda (_%g383813383909%_
                                                   _%g383814383910%_)
                                            (let ((_%eid383924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g383814383910%_)))
                                                  (_%expr383925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self383625%_
                                                      _%g383813383909%_))))
                                              (_%lp383749%_
                                               _%g383759383795%_
                                               (cons (cons _%eid383924%_
                                                           (cons _%expr383925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind383752%_)
                                               _%check383753%_
                                               _%post383754%_))))
                                         (_%__kont387759387760%_
                                          (lambda (_%g383824383857%_
                                                   _%g383825383858%_)
                                            (let* ((_%vals383871%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values383873%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals383871%_
                                                     _%g383825383858%_
                                                     _%g383824383857%_))
                                                   (_%refs383875%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals383871%_
                                                     _%g383825383858%_))
                                                   (_%expr383877%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self383625%_
                                                       _%g383824383857%_))))
                                              (_%lp383749%_
                                               _%g383759383795%_
                                               (cons (cons _%vals383871%_
                                                           (cons _%expr383877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind383752%_)
                                               (cons _%check-values383873%_
                                                     _%check383753%_)
                                               (cons _%refs383875%_
                                                     _%post383754%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx387755387756%_))
                                         (let ((_%e383815383885%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx387755387756%_))))
                                           (let ((_%tl383817383890%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e383815383885%_)))
                                                 (_%hd383816383888%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e383815383885%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd383816383888%_))
                                                 (let ((_%e383818383893%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd383816383888%_))))
                                                   (let ((_%tl383820383898%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e383818383893%_)))
                                                         (_%hd383819383896%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e383818383893%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl383820383898%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl383817383890%_))
                     (let ((_%e383821383901%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl383817383890%_))))
                       (let ((_%tl383823383906%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e383821383901%_)))
                             (_%hd383822383904%_
                              (let ()
                                (declare (not safe))
                                (##car _%e383821383901%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl383823383906%_))
                             (_%__kont387757387758%_
                              _%hd383822383904%_
                              _%hd383819383896%_)
                             (let ()
                               (declare (not safe))
                               (_%g383811383836%_)))))
                     (let () (declare (not safe)) (_%g383811383836%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl383817383890%_))
                     (let ((_%e383829383849%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl383817383890%_))))
                       (let ((_%tl383831383854%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e383829383849%_)))
                             (_%hd383830383852%_
                              (let ()
                                (declare (not safe))
                                (##car _%e383829383849%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl383831383854%_))
                             (_%__kont387759387760%_
                              _%hd383830383852%_
                              _%hd383816383888%_)
                             (let ()
                               (declare (not safe))
                               (_%g383811383836%_)))))
                     (let () (declare (not safe)) (_%g383811383836%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl383817383890%_))
                                                     (let ((_%e383829383849%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl383817383890%_))))
                                                       (let ((_%tl383831383854%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e383829383849%_)))
                     (_%hd383830383852%_
                      (let () (declare (not safe)) (##car _%e383829383849%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl383831383854%_))
                     (_%__kont387759387760%_
                      _%hd383830383852%_
                      _%hd383816383888%_)
                     (let () (declare (not safe)) (_%g383811383836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g383811383836%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g383811383836%_)))))))
                              (_%__kont387803387804%_
                               (lambda ()
                                 (let* ((_%body383775%_
                                         (if _%compiled-body?383627%_
                                             _%body383747%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self383625%_
                                                _%body383747%_))))
                                        (_%body383777%_
                                         (_%generate-values-post383633%_
                                          _%post383754%_
                                          _%body383775%_))
                                        (_%body383779%_
                                         (_%generate-values-check383634%_
                                          _%check383753%_
                                          _%body383777%_)))
                                   (cons 'let
                                         (cons (reverse _%bind383752%_)
                                               (cons _%body383779%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx387799387800%_))
                              (let ((_%e383761383787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx387799387800%_))))
                                (let ((_%tl383763383792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e383761383787%_)))
                                      (_%hd383762383790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e383761383787%_))))
                                  (_%__kont387801387802%_
                                   _%tl383763383792%_
                                   _%hd383762383790%_)))
                              (_%__kont387803387804%_)))))))
                 (_%generate-values-post383633%_
                  (lambda (_%post383705%_ _%body383706%_)
                    (let _%lp383708%_ ((_%rest383710%_ _%post383705%_)
                                       (_%body383711%_ _%body383706%_))
                      (let* ((_%rest383712383720%_ _%rest383710%_)
                             (_%else383714383728%_ (lambda () _%body383711%_))
                             (_%K383716383734%_
                              (lambda (_%rest383731%_ _%bind383732%_)
                                (_%lp383708%_
                                 _%rest383731%_
                                 (cons 'let
                                       (cons _%bind383732%_
                                             (cons _%body383711%_ '())))))))
                        (if (pair? _%rest383712383720%_)
                            (let ((_%hd383717383737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest383712383720%_)))
                                  (_%tl383718383739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest383712383720%_))))
                              (let* ((_%bind383742%_ _%hd383717383737%_)
                                     (_%rest383744%_ _%tl383718383739%_))
                                (_%K383716383734%_
                                 _%rest383744%_
                                 _%bind383742%_)))
                            (_%else383714383728%_))))))
                 (_%generate-values-check383634%_
                  (lambda (_%check383702%_ _%body383703%_)
                    (cons 'begin
                          (let ((__tmp388647 (cons _%body383703%_ '()))
                                (__tmp388646 (reverse _%check383702%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp388647 __tmp388646))))))
          (let* ((_%g383636383653%_
                  (lambda (_%g383637383650%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g383637383650%_))))
                 (_%g383635383699%_
                  (lambda (_%g383637383656%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g383637383656%_))
                        (let ((_%e383640383658%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g383637383656%_))))
                          (let ((_%hd383641383661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e383640383658%_)))
                                (_%tl383642383663%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e383640383658%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl383642383663%_))
                                (let ((_%e383643383666%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl383642383663%_))))
                                  (let ((_%hd383644383669%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e383643383666%_)))
                                        (_%tl383645383671%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e383643383666%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl383645383671%_))
                                        (let ((_%e383646383674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl383645383671%_))))
                                          (let ((_%hd383647383677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e383646383674%_)))
                                                (_%tl383648383679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e383646383674%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl383648383679%_))
                                                ((lambda (_%g383638383682%_
                                                          _%g383639383683%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g383639383683%_)
                                                       (_%generate-simple383629%_
                                                        _%g383639383683%_
                                                        _%g383638383682%_)
                                                       (_%generate-values383632%_
                                                        _%g383639383683%_
                                                        _%g383638383682%_)))
                                                 _%hd383647383677%_
                                                 _%hd383644383669%_)
                                                (_%g383636383653%_
                                                 _%g383637383656%_))))
                                        (_%g383636383653%_
                                         _%g383637383656%_))))
                                (_%g383636383653%_ _%g383637383656%_))))
                        (_%g383636383653%_ _%g383637383656%_)))))
            (_%g383635383699%_ _%stx383626%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self384379%_ _%stx384380%_)
        (let ((_%compiled-body?384382%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self384379%_
           _%stx384380%_
           _%compiled-body?384382%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g388648_
        (let ((_g388649_ (let () (declare (not safe)) (##length _g388648_))))
          (cond ((let () (declare (not safe)) (##fx= _g388649_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g388648_))
                ((let () (declare (not safe)) (##fx= _g388649_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g388648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g388648_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals383519%_ _%hd383520%_)
        (let _%lp383522%_ ((_%rest383524%_ _%hd383520%_)
                           (_%k383525%_ '0)
                           (_%r383526%_ '()))
          (let* ((_%__stx387813387814%_ _%rest383524%_)
                 (_%g383531383548%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx387813387814%_)))))
            (let ((_%__kont387815387816%_
                   (lambda (_%g383533383611%_)
                     (_%lp383522%_
                      _%g383533383611%_
                      (let () (declare (not safe)) (##fx+ _%k383525%_ '1))
                      _%r383526%_)))
                  (_%__kont387817387818%_
                   (lambda (_%g383538383584%_ _%g383539383585%_)
                     (_%lp383522%_
                      _%g383538383584%_
                      (let () (declare (not safe)) (##fx+ _%k383525%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g383539383585%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals383519%_
                                         _%k383525%_
                                         _%g383538383584%_)
                                        '()))
                            _%r383526%_))))
                  (_%__kont387819387820%_
                   (lambda (_%g383543383560%_)
                     (let ((__tmp388650
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g383543383560%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals383519%_
                                               _%k383525%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp388650 _%r383526%_))))
                  (_%__kont387821387822%_ (lambda () (reverse _%r383526%_))))
              (let ((_%g383529383571%_
                     (lambda ()
                       (let ((_%g383543383560%_ _%__stx387813387814%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g383543383560%_))
                             (_%__kont387819387820%_ _%g383543383560%_)
                             (_%__kont387821387822%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx387813387814%_))
                    (let ((_%e383534383600%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx387813387814%_))))
                      (let ((_%tl383536383605%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e383534383600%_)))
                            (_%hd383535383603%_
                             (let ()
                               (declare (not safe))
                               (##car _%e383534383600%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd383535383603%_))
                            (let ((_%e383537383608%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd383535383603%_))))
                              (if (equal? _%e383537383608%_ '#f)
                                  (_%__kont387815387816%_ _%tl383536383605%_)
                                  (_%__kont387817387818%_
                                   _%tl383536383605%_
                                   _%hd383535383603%_)))
                            (_%__kont387817387818%_
                             _%tl383536383605%_
                             _%hd383535383603%_))))
                    (let () (declare (not safe)) (_%g383529383571%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self383198%_ _%stx383199%_ _%compiled-body?383200%_)
        (letrec ((_%generate-simple383202%_
                  (lambda (_%hd383504%_ _%body383505%_)
                    (gxc#generate-runtime-simple-let
                     _%self383198%_
                     'letrec
                     _%hd383504%_
                     _%body383505%_
                     _%compiled-body?383200%_)))
                 (_%generate-values383203%_
                  (lambda (_%hd383283%_ _%body383284%_)
                    (let _%lp383286%_ ((_%rest383288%_ _%hd383283%_)
                                       (_%bind383289%_ '())
                                       (_%check383290%_ '())
                                       (_%post383291%_ '()))
                      (let* ((_%__stx387887387888%_ _%rest383288%_)
                             (_%g383294383305%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx387887387888%_)))))
                        (let ((_%__kont387889387890%_
                               (lambda (_%g383296383332%_ _%g383297383333%_)
                                 (let* ((_%__stx387843387844%_
                                         _%g383297383333%_)
                                        (_%g383348383373%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx387843387844%_)))))
                                   (let ((_%__kont387845387846%_
                                          (lambda (_%g383350383480%_
                                                   _%g383351383481%_)
                                            (let ((_%eid383495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g383351383481%_)))
                                                  (_%expr383496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self383198%_
                                                      _%g383350383480%_))))
                                              (_%lp383286%_
                                               _%g383296383332%_
                                               (cons (cons _%eid383495%_
                                                           (cons _%expr383496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind383289%_)
                                               _%check383290%_
                                               _%post383291%_))))
                                         (_%__kont387847387848%_
                                          (lambda (_%g383361383394%_
                                                   _%g383362383395%_)
                                            (let* ((_%vals383408%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values383410%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals383408%_
                                                     _%g383362383395%_
                                                     _%g383361383394%_))
                                                   (_%refs383412%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals383408%_
                                                     _%g383362383395%_))
                                                   (_%expr383414%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self383198%_
                                                       _%g383361383394%_))))
                                              (_%lp383286%_
                                               _%g383296383332%_
                                               (let ((__tmp388652
                                                      (cons (cons _%vals383408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr383414%_ '()))
                    _%bind383289%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp388651
                                                      (map (lambda (_%e383416383418%_)
                                                             (let* ((_%e383416383420383429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e383416383418%_)
                            (_%E383422383433%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e383416383420383429%_
                                        '([eid _])))
                               '#!void))
                            (_%K383423383438%_
                             (lambda (_%eid383436%_)
                               (cons _%eid383436%_ (cons '#!void '())))))
                       (if (pair? _%e383416383420383429%_)
                           (let ((_%hd383424383441%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e383416383420383429%_)))
                                 (_%tl383425383443%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e383416383420383429%_))))
                             (let ((_%eid383446%_ _%hd383424383441%_))
                               (if (pair? _%tl383425383443%_)
                                   (let ((_%tl383427383448%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl383425383443%_))))
                                     (if (null? _%tl383427383448%_)
                                         (_%K383423383438%_ _%eid383446%_)
                                         (_%E383422383433%_)))
                                   (_%E383422383433%_))))
                           (_%E383422383433%_))))
                   _%refs383412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp388652
                                                  __tmp388651))
                                               (cons _%check-values383410%_
                                                     _%check383290%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs383412%_
                                                  _%post383291%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx387843387844%_))
                                         (let ((_%e383352383456%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx387843387844%_))))
                                           (let ((_%tl383354383461%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e383352383456%_)))
                                                 (_%hd383353383459%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e383352383456%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd383353383459%_))
                                                 (let ((_%e383355383464%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd383353383459%_))))
                                                   (let ((_%tl383357383469%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e383355383464%_)))
                                                         (_%hd383356383467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e383355383464%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl383357383469%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl383354383461%_))
                     (let ((_%e383358383472%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl383354383461%_))))
                       (let ((_%tl383360383477%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e383358383472%_)))
                             (_%hd383359383475%_
                              (let ()
                                (declare (not safe))
                                (##car _%e383358383472%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl383360383477%_))
                             (_%__kont387845387846%_
                              _%hd383359383475%_
                              _%hd383356383467%_)
                             (let ()
                               (declare (not safe))
                               (_%g383348383373%_)))))
                     (let () (declare (not safe)) (_%g383348383373%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl383354383461%_))
                     (let ((_%e383366383386%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl383354383461%_))))
                       (let ((_%tl383368383391%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e383366383386%_)))
                             (_%hd383367383389%_
                              (let ()
                                (declare (not safe))
                                (##car _%e383366383386%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl383368383391%_))
                             (_%__kont387847387848%_
                              _%hd383367383389%_
                              _%hd383353383459%_)
                             (let ()
                               (declare (not safe))
                               (_%g383348383373%_)))))
                     (let () (declare (not safe)) (_%g383348383373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl383354383461%_))
                                                     (let ((_%e383366383386%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl383354383461%_))))
                                                       (let ((_%tl383368383391%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e383366383386%_)))
                     (_%hd383367383389%_
                      (let () (declare (not safe)) (##car _%e383366383386%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl383368383391%_))
                     (_%__kont387847387848%_
                      _%hd383367383389%_
                      _%hd383353383459%_)
                     (let () (declare (not safe)) (_%g383348383373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g383348383373%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g383348383373%_)))))))
                              (_%__kont387891387892%_
                               (lambda ()
                                 (let* ((_%body383312%_
                                         (if _%compiled-body?383200%_
                                             _%body383284%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self383198%_
                                                _%body383284%_))))
                                        (_%body383314%_
                                         (_%generate-values-post383205%_
                                          _%post383291%_
                                          _%body383312%_))
                                        (_%body383316%_
                                         (_%generate-values-check383204%_
                                          _%check383290%_
                                          _%body383314%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind383289%_)
                                               (cons _%body383316%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx387887387888%_))
                              (let ((_%e383298383324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx387887387888%_))))
                                (let ((_%tl383300383329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e383298383324%_)))
                                      (_%hd383299383327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e383298383324%_))))
                                  (_%__kont387889387890%_
                                   _%tl383300383329%_
                                   _%hd383299383327%_)))
                              (_%__kont387891387892%_)))))))
                 (_%generate-values-check383204%_
                  (lambda (_%check383280%_ _%body383281%_)
                    (cons 'begin
                          (let ((__tmp388654 (cons _%body383281%_ '()))
                                (__tmp388653 (reverse _%check383280%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp388654 __tmp388653)))))
                 (_%generate-values-post383205%_
                  (lambda (_%post383273%_ _%body383274%_)
                    (cons 'begin
                          (let ((__tmp388658 (cons _%body383274%_ '()))
                                (__tmp388655
                                 (let ((__tmp388657
                                        (lambda (_%g383275383277%_)
                                          (cons 'set! _%g383275383277%_)))
                                       (__tmp388656 (reverse _%post383273%_)))
                                   (declare (not safe))
                                   (##map __tmp388657 __tmp388656))))
                            (declare (not safe))
                            (foldr__0 cons __tmp388658 __tmp388655))))))
          (let* ((_%g383207383224%_
                  (lambda (_%g383208383221%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g383208383221%_))))
                 (_%g383206383270%_
                  (lambda (_%g383208383227%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g383208383227%_))
                        (let ((_%e383211383229%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g383208383227%_))))
                          (let ((_%hd383212383232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e383211383229%_)))
                                (_%tl383213383234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e383211383229%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl383213383234%_))
                                (let ((_%e383214383237%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl383213383234%_))))
                                  (let ((_%hd383215383240%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e383214383237%_)))
                                        (_%tl383216383242%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e383214383237%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl383216383242%_))
                                        (let ((_%e383217383245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl383216383242%_))))
                                          (let ((_%hd383218383248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e383217383245%_)))
                                                (_%tl383219383250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e383217383245%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl383219383250%_))
                                                ((lambda (_%g383209383253%_
                                                          _%g383210383254%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g383210383254%_)
                                                       (_%generate-simple383202%_
                                                        _%g383210383254%_
                                                        _%g383209383253%_)
                                                       (_%generate-values383203%_
                                                        _%g383210383254%_
                                                        _%g383209383253%_)))
                                                 _%hd383218383248%_
                                                 _%hd383215383240%_)
                                                (_%g383207383224%_
                                                 _%g383208383227%_))))
                                        (_%g383207383224%_
                                         _%g383208383227%_))))
                                (_%g383207383224%_ _%g383208383227%_))))
                        (_%g383207383224%_ _%g383208383227%_)))))
            (_%g383206383270%_ _%stx383199%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self383510%_ _%stx383511%_)
        (let ((_%compiled-body?383513%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self383510%_
           _%stx383511%_
           _%compiled-body?383513%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g388659_
        (let ((_g388660_ (let () (declare (not safe)) (##length _g388659_))))
          (cond ((let () (declare (not safe)) (##fx= _g388660_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g388659_))
                ((let () (declare (not safe)) (##fx= _g388660_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g388659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g388659_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self382779%_ _%stx382780%_)
        (letrec ((_%generate-values382782%_
                  (lambda (_%hd383025%_ _%body383026%_)
                    (let _%lp383028%_ ((_%rest383030%_ _%hd383025%_)
                                       (_%bind383031%_ '()))
                      (let* ((_%rest383032383040%_ _%rest383030%_)
                             (_%else383034383051%_
                              (lambda ()
                                (let ((_%bind383048%_ (reverse _%bind383031%_))
                                      (_%body383049%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self382779%_
                                          _%body383026%_))))
                                  (cons 'letrec*
                                        (cons _%bind383048%_
                                              (cons _%body383049%_ '()))))))
                             (_%K383036383185%_
                              (lambda (_%rest383054%_ _%hd-bind383055%_)
                                (let* ((_%__stx387901387902%_
                                        _%hd-bind383055%_)
                                       (_%g383058383083%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx387901387902%_)))))
                                  (let ((_%__kont387903387904%_
                                         (lambda (_%g383060383164%_
                                                  _%g383061383165%_)
                                           (let ((_%eid383179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g383061383165%_)))
                                                 (_%expr383180%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self382779%_
                                                     _%g383060383164%_))))
                                             (_%lp383028%_
                                              _%rest383054%_
                                              (cons (cons _%eid383179%_
                                                          (cons _%expr383180%_
                                                                '()))
                                                    _%bind383031%_)))))
                                        (_%__kont387905387906%_
                                         (lambda (_%g383071383104%_
                                                  _%g383072383105%_)
                                           (let* ((_%vals383124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp383126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values383128%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp383126%_
                                                    _%g383072383105%_
                                                    _%g383071383104%_))
                                                  (_%refs383130%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals383124%_
                                                    _%g383072383105%_))
                                                  (_%expr383132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self382779%_
                                                      _%g383071383104%_))))
                                             (_%lp383028%_
                                              _%rest383054%_
                                              (let ((__tmp388661
                                                     (cons (cons _%vals383124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp383126%_
                                                       (cons _%expr383132%_
                                                             '()))
                                                 '())
                                           (cons _%check-values383128%_
                                                 (cons _%tmp383126%_ '()))))
                               '()))
                   _%bind383031%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp388661
                                                 _%refs383130%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx387901387902%_))
                                        (let ((_%e383062383140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx387901387902%_))))
                                          (let ((_%tl383064383145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e383062383140%_)))
                                                (_%hd383063383143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e383062383140%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd383063383143%_))
                                                (let ((_%e383065383148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd383063383143%_))))
                                                  (let ((_%tl383067383153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e383065383148%_)))
                                                        (_%hd383066383151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e383065383148%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl383067383153%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl383064383145%_))
                                                            (let ((_%e383068383156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl383064383145%_))))
                      (let ((_%tl383070383161%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e383068383156%_)))
                            (_%hd383069383159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e383068383156%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl383070383161%_))
                            (_%__kont387903387904%_
                             _%hd383069383159%_
                             _%hd383066383151%_)
                            (let ()
                              (declare (not safe))
                              (_%g383058383083%_)))))
                    (let () (declare (not safe)) (_%g383058383083%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl383064383145%_))
                    (let ((_%e383076383096%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl383064383145%_))))
                      (let ((_%tl383078383101%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e383076383096%_)))
                            (_%hd383077383099%_
                             (let ()
                               (declare (not safe))
                               (##car _%e383076383096%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl383078383101%_))
                            (_%__kont387905387906%_
                             _%hd383077383099%_
                             _%hd383063383143%_)
                            (let ()
                              (declare (not safe))
                              (_%g383058383083%_)))))
                    (let () (declare (not safe)) (_%g383058383083%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl383064383145%_))
                                                    (let ((_%e383076383096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl383064383145%_))))
                                                      (let ((_%tl383078383101%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e383076383096%_)))
                    (_%hd383077383099%_
                     (let () (declare (not safe)) (##car _%e383076383096%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl383078383101%_))
                    (_%__kont387905387906%_
                     _%hd383077383099%_
                     _%hd383063383143%_)
                    (let () (declare (not safe)) (_%g383058383083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g383058383083%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g383058383083%_))))))))
                        (if (pair? _%rest383032383040%_)
                            (let ((_%hd383037383188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest383032383040%_)))
                                  (_%tl383038383190%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest383032383040%_))))
                              (let* ((_%hd-bind383193%_ _%hd383037383188%_)
                                     (_%rest383195%_ _%tl383038383190%_))
                                (_%K383036383185%_
                                 _%rest383195%_
                                 _%hd-bind383193%_)))
                            (_%else383034383051%_))))))
                 (_%generate-letrec?382783%_
                  (lambda (_%hd382915%_)
                    (let _%lp382917%_ ((_%rest382919%_ _%hd382915%_))
                      (let* ((_%rest382920382928%_ _%rest382919%_)
                             (_%else382922382936%_ (lambda () '#t))
                             (_%K382924383013%_
                              (lambda (_%rest382939%_ _%hd-bind382940%_)
                                (let* ((_%g382942382959%_
                                        (lambda (_%g382943382956%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g382943382956%_))))
                                       (_%g382941383010%_
                                        (lambda (_%g382943382962%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g382943382962%_))
                                              (let ((_%e382946382964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g382943382962%_))))
                                                (let ((_%hd382947382967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e382946382964%_)))
                                                      (_%tl382948382969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e382946382964%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd382947382967%_))
                                                      (let ((_%e382949382972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd382947382967%_))))
                (let ((_%hd382950382975%_
                       (let () (declare (not safe)) (##car _%e382949382972%_)))
                      (_%tl382951382977%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e382949382972%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl382951382977%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl382948382969%_))
                          (let ((_%e382952382980%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl382948382969%_))))
                            (let ((_%hd382953382983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e382952382980%_)))
                                  (_%tl382954382985%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e382952382980%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl382954382985%_))
                                  ((lambda (_%g382944382988%_
                                            _%g382945382989%_)
                                     (if (_%is-lambda-expr?382784%_
                                          _%g382944382988%_)
                                         (_%lp382917%_ _%rest382939%_)
                                         '#f))
                                   _%hd382953382983%_
                                   _%hd382950382975%_)
                                  (_%g382942382959%_ _%g382943382962%_))))
                          (_%g382942382959%_ _%g382943382962%_))
                      (_%g382942382959%_ _%g382943382962%_))))
              (_%g382942382959%_ _%g382943382962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g382942382959%_
                                               _%g382943382962%_)))))
                                  (_%g382941383010%_ _%hd-bind382940%_)))))
                        (if (pair? _%rest382920382928%_)
                            (let ((_%hd382925383016%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest382920382928%_)))
                                  (_%tl382926383018%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest382920382928%_))))
                              (let* ((_%hd-bind383021%_ _%hd382925383016%_)
                                     (_%rest383023%_ _%tl382926383018%_))
                                (_%K382924383013%_
                                 _%rest383023%_
                                 _%hd-bind383021%_)))
                            (_%else382922382936%_))))))
                 (_%is-lambda-expr?382784%_
                  (lambda (_%expr382852%_)
                    (let* ((_%__stx387945387946%_ _%expr382852%_)
                           (_%g382855382869%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx387945387946%_)))))
                      (let ((_%__kont387947387948%_
                             (lambda (_%g382857382897%_ _%g382858382898%_)
                               '#t))
                            (_%__kont387949387950%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx387945387946%_))
                            (let ((_%e382859382881%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx387945387946%_))))
                              (let ((_%tl382861382886%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e382859382881%_)))
                                    (_%hd382860382884%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e382859382881%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd382860382884%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd382860382884%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl382861382886%_))
                                            (let ((_%e382862382889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl382861382886%_))))
                                              (let ((_%tl382864382894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e382862382889%_)))
                                                    (_%hd382863382892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e382862382889%_))))
                                                (_%__kont387947387948%_
                                                 _%tl382864382894%_
                                                 _%hd382863382892%_)))
                                            (_%__kont387949387950%_))
                                        (_%__kont387949387950%_))
                                    (_%__kont387949387950%_))))
                            (_%__kont387949387950%_)))))))
          (let* ((_%g382786382803%_
                  (lambda (_%g382787382800%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g382787382800%_))))
                 (_%g382785382849%_
                  (lambda (_%g382787382806%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g382787382806%_))
                        (let ((_%e382790382808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g382787382806%_))))
                          (let ((_%hd382791382811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e382790382808%_)))
                                (_%tl382792382813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e382790382808%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl382792382813%_))
                                (let ((_%e382793382816%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl382792382813%_))))
                                  (let ((_%hd382794382819%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e382793382816%_)))
                                        (_%tl382795382821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e382793382816%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl382795382821%_))
                                        (let ((_%e382796382824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl382795382821%_))))
                                          (let ((_%hd382797382827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e382796382824%_)))
                                                (_%tl382798382829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e382796382824%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl382798382829%_))
                                                ((lambda (_%g382788382832%_
                                                          _%g382789382833%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g382789382833%_)
                                                       (if (_%generate-letrec?382783%_
                                                            _%g382789382833%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self382779%_
                                                            'letrec
                                                            _%g382789382833%_
                                                            _%g382788382832%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self382779%_
                                                            'letrec*
                                                            _%g382789382833%_
                                                            _%g382788382832%_
                                                            '#f))
                                                       (_%generate-values382782%_
                                                        _%g382789382833%_
                                                        _%g382788382832%_)))
                                                 _%hd382797382827%_
                                                 _%hd382794382819%_)
                                                (_%g382786382803%_
                                                 _%g382787382806%_))))
                                        (_%g382786382803%_
                                         _%g382787382806%_))))
                                (_%g382786382803%_ _%g382787382806%_))))
                        (_%g382786382803%_ _%g382787382806%_)))))
            (_%g382785382849%_ _%stx382780%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd382716%_)
        (let _%lp382718%_ ((_%rest382720%_ _%hd382716%_))
          (let* ((_%rest382721382737%_ _%rest382720%_)
                 (_%else382724382745%_ (lambda () '#f)))
            (let ((_%K382727382758%_
                   (lambda (_%rest382756%_) (_%lp382718%_ _%rest382756%_)))
                  (_%K382726382750%_ (lambda () '#t)))
              (let ((_%try-match382723382753%_
                     (lambda ()
                       (if (null? _%rest382721382737%_)
                           (_%K382726382750%_)
                           (_%else382724382745%_)))))
                (if (pair? _%rest382721382737%_)
                    (let ((_%tl382729382763%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest382721382737%_)))
                          (_%hd382728382761%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest382721382737%_))))
                      (if (pair? _%hd382728382761%_)
                          (let ((_%tl382731382768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd382728382761%_)))
                                (_%hd382730382766%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd382728382761%_))))
                            (if (pair? _%hd382730382766%_)
                                (let ((_%tl382735382771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd382730382766%_))))
                                  (if (null? _%tl382735382771%_)
                                      (if (pair? _%tl382731382768%_)
                                          (let ((_%tl382733382774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl382731382768%_))))
                                            (if (null? _%tl382733382774%_)
                                                (let ((_%rest382777%_
                                                       _%tl382729382763%_))
                                                  (_%lp382718%_
                                                   _%rest382777%_))
                                                (_%else382724382745%_)))
                                          (_%else382724382745%_))
                                      (_%else382724382745%_)))
                                (_%else382724382745%_)))
                          (_%else382724382745%_)))
                    (_%try-match382723382753%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self382628%_
               _%form382629%_
               _%hd382630%_
               _%body382631%_
               _%compiled-body?382632%_)
        (letrec ((_%generate1382634%_
                  (lambda (_%bind382673%_)
                    (let* ((_%bind382674382685%_ _%bind382673%_)
                           (_%E382676382688%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind382674382685%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K382677382694%_
                            (lambda (_%expr382691%_ _%id382692%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id382692%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self382628%_
                                             _%expr382691%_))
                                          '())))))
                      (if (pair? _%bind382674382685%_)
                          (let ((_%hd382678382697%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind382674382685%_)))
                                (_%tl382679382699%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind382674382685%_))))
                            (if (pair? _%hd382678382697%_)
                                (let ((_%hd382682382702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd382678382697%_)))
                                      (_%tl382683382704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd382678382697%_))))
                                  (let ((_%id382707%_ _%hd382682382702%_))
                                    (if (null? _%tl382683382704%_)
                                        (if (pair? _%tl382679382699%_)
                                            (let ((_%hd382680382709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl382679382699%_)))
                                                  (_%tl382681382711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl382679382699%_))))
                                              (let ((_%expr382714%_
                                                     _%hd382680382709%_))
                                                (if (null? _%tl382681382711%_)
                                                    (_%K382677382694%_
                                                     _%expr382714%_
                                                     _%id382707%_)
                                                    (_%E382676382688%_))))
                                            (_%E382676382688%_))
                                        (_%E382676382688%_))))
                                (_%E382676382688%_)))
                          (_%E382676382688%_))))))
          (let* ((_%bind382636%_ (map _%generate1382634%_ _%hd382630%_))
                 (_%body382638%_
                  (if _%compiled-body?382632%_
                      _%body382631%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self382628%_ _%body382631%_))))
                 (_%body382670%_
                  (let* ((_%body382639382647%_ _%body382638%_)
                         (_%else382641382655%_
                          (lambda () (cons _%body382638%_ '())))
                         (_%K382643382660%_
                          (lambda (_%exprs382658%_) _%exprs382658%_)))
                    (if (pair? _%body382639382647%_)
                        (let ((_%hd382644382663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body382639382647%_)))
                              (_%tl382645382665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body382639382647%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd382644382663%_ 'begin))
                              (let ((_%exprs382668%_ _%tl382645382665%_))
                                (_%K382643382660%_ _%exprs382668%_))
                              (_%else382641382655%_)))
                        (_%else382641382655%_)))))
            (cons _%form382629%_ (cons _%bind382636%_ _%body382670%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self382528%_ _%stx382529%_)
        (letrec ((_%generate1382531%_
                  (lambda (_%datum382583%_)
                    (if (or (null? _%datum382583%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum382583%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum382583%_))
                            (eof-object? _%datum382583%_))
                        _%datum382583%_
                        (if (uninterned-symbol? _%datum382583%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum382583%_
                               '#t))
                            (if (pair? _%datum382583%_)
                                (cons (_%generate1382531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum382583%_)))
                                      (_%generate1382531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum382583%_))))
                                (if (box? _%datum382583%_)
                                    (box (_%generate1382531%_
                                          (unbox _%datum382583%_)))
                                    (if (vector? _%datum382583%_)
                                        (vector-map
                                         _%generate1382531%_
                                         _%datum382583%_)
                                        (if (or (s8vector? _%datum382583%_)
                                                (u8vector? _%datum382583%_)
                                                (s16vector? _%datum382583%_)
                                                (u16vector? _%datum382583%_)
                                                (s32vector? _%datum382583%_)
                                                (u32vector? _%datum382583%_)
                                                (s64vector? _%datum382583%_)
                                                (u64vector? _%datum382583%_)
                                                (f32vector? _%datum382583%_)
                                                (f64vector? _%datum382583%_))
                                            _%datum382583%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx382529%_)))))))))))
          (let* ((_%g382533382546%_
                  (lambda (_%g382534382543%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g382534382543%_))))
                 (_%g382532382580%_
                  (lambda (_%g382534382549%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g382534382549%_))
                        (let ((_%e382536382551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g382534382549%_))))
                          (let ((_%hd382537382554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e382536382551%_)))
                                (_%tl382538382556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e382536382551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl382538382556%_))
                                (let ((_%e382539382559%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl382538382556%_))))
                                  (let ((_%hd382540382562%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e382539382559%_)))
                                        (_%tl382541382564%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e382539382559%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl382541382564%_))
                                        ((lambda (_%g382535382567%_)
                                           (cons 'quote
                                                 (cons (_%generate1382531%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g382535382567%_)))
                                                       '())))
                                         _%hd382540382562%_)
                                        (_%g382533382546%_
                                         _%g382534382549%_))))
                                (_%g382533382546%_ _%g382534382549%_))))
                        (_%g382533382546%_ _%g382534382549%_)))))
            (_%g382532382580%_ _%stx382529%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self381975%_ _%stx381976%_)
        (letrec ((_%compile-call381978%_
                  (lambda (_%rator382265%_ _%rands382266%_)
                    (let ((_%rator382272%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self381975%_
                              _%rator382265%_)))
                          (_%rands382273%_
                           (map (lambda (_%g382267382269%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self381975%_
                                     _%g382267382269%_)))
                                _%rands382266%_)))
                      (let* ((_%__stx387992387993%_ _%rator382272%_)
                             (_%g382276382328%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx387992387993%_)))))
                        (let ((_%__kont387994387995%_
                               (lambda (_%g382278382448%_
                                        _%g382279382449%_
                                        _%g382280382450%_
                                        _%g382281382451%_)
                                 (if (let ((__tmp388664
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands382273%_)))
                                           (__tmp388662
                                            (length (let ((__tmp388663
                                                           (lambda (_%g382487382490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g382488382492%_)
                     (cons _%g382487382490%_ _%g382488382492%_))))
              (declare (not safe))
              (foldr__0 __tmp388663 '() _%g382280382450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp388664 __tmp388662))
                                     (let* ((_%id382495%_ _%g382281382451%_)
                                            (_%args382504%_
                                             (let ((__tmp388665
                                                    (lambda (_%g382496382499%_
                                                             _%g382497382501%_)
                                                      (cons _%g382496382499%_
                                                            _%g382497382501%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp388665
                                                '()
                                                _%g382280382450%_)))
                                            (_%body382513%_
                                             (let ((__tmp388666
                                                    (lambda (_%g382505382508%_
                                                             _%g382506382510%_)
                                                      (cons _%g382505382508%_
                                                            _%g382506382510%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp388666
                                                '()
                                                _%g382279382449%_)))
                                            (_%init382515%_
                                             (map list
                                                  _%args382504%_
                                                  _%rands382273%_)))
                                       (cons 'let
                                             (cons _%id382495%_
                                                   (cons _%init382515%_
                                                         _%body382513%_))))
                                     (let ((__tmp388667
                                            (let ((__tmp388668
                                                   (lambda (_%g382517382520%_
                                                            _%g382518382522%_)
                                                     (cons _%g382517382520%_
                                                           _%g382518382522%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp388668
                                               '()
                                               _%g382280382450%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx381976%_
                                        __tmp388667
                                        _%rands382273%_)))))
                              (_%__kont388000388001%_
                               (lambda ()
                                 (cons _%rator382272%_ _%rands382273%_))))
                          (let ((_%__match388059388060%_
                                 (lambda (_%e382282382340%_
                                          _%hd382283382343%_
                                          _%tl382284382345%_
                                          _%e382285382348%_
                                          _%hd382286382351%_
                                          _%tl382287382353%_
                                          _%e382288382356%_
                                          _%hd382289382359%_
                                          _%tl382290382361%_
                                          _%e382291382364%_
                                          _%hd382292382367%_
                                          _%tl382293382369%_
                                          _%e382294382372%_
                                          _%hd382295382375%_
                                          _%tl382296382377%_
                                          _%e382297382380%_
                                          _%hd382298382383%_
                                          _%tl382299382385%_
                                          _%e382300382388%_
                                          _%hd382301382391%_
                                          _%tl382302382393%_
                                          _%__splice387996387997%_
                                          _%target382303382396%_
                                          _%tl382305382398%_)
                                   (letrec ((_%loop382306382401%_
                                             (lambda (_%hd382304382404%_
                                                      _%arg382310382406%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd382304382404%_))
                                                   (let ((_%e382307382408%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd382304382404%_))))
                                                     (let ((_%lp-tl382309382413%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e382307382408%_)))
                                                           (_%lp-hd382308382411%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e382307382408%_))))
                                                       (_%loop382306382401%_
                                                        _%lp-tl382309382413%_
                                                        (cons _%lp-hd382308382411%_
                                                              _%arg382310382406%_))))
                                                   (let ((_%arg382311382416%_
                                                          (reverse _%arg382310382406%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl382302382393%_))
                                                         (let ((_%__splice387998387999%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl382302382393%_
                           '0))))
                   (let ((_%tl382314382420%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice387998387999%_ '1)))
                         (_%target382312382418%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice387998387999%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl382314382420%_))
                         (letrec ((_%loop382315382423%_
                                   (lambda (_%hd382313382426%_
                                            _%body382319382428%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd382313382426%_))
                                         (let ((_%e382316382430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd382313382426%_))))
                                           (let ((_%lp-tl382318382435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e382316382430%_)))
                                                 (_%lp-hd382317382433%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e382316382430%_))))
                                             (_%loop382315382423%_
                                              _%lp-tl382318382435%_
                                              (cons _%lp-hd382317382433%_
                                                    _%body382319382428%_))))
                                         (let ((_%body382320382438%_
                                                (reverse _%body382319382428%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl382296382377%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl382290382361%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl382287382353%_))
                                                       (let ((_%e382321382440%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl382287382353%_))))
                 (let ((_%tl382323382445%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e382321382440%_)))
                       (_%hd382322382443%_
                        (let ()
                          (declare (not safe))
                          (##car _%e382321382440%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl382323382445%_))
                       (let ((_%g382278382448%_ _%hd382322382443%_)
                             (_%g382279382449%_ _%body382320382438%_)
                             (_%g382280382450%_ _%arg382311382416%_)
                             (_%g382281382451%_ _%hd382292382367%_))
                         (if (eq? _%g382281382451%_ _%g382278382448%_)
                             (_%__kont387994387995%_
                              _%g382278382448%_
                              _%g382279382449%_
                              _%g382280382450%_
                              _%g382281382451%_)
                             (_%__kont388000388001%_)))
                       (_%__kont388000388001%_))))
               (_%__kont388000388001%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont388000388001%_))
                                               (_%__kont388000388001%_)))))))
                           (_%loop382315382423%_ _%target382312382418%_ '()))
                         (_%__kont388000388001%_))))
                 (_%__kont388000388001%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop382306382401%_
                                      _%target382303382396%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx387992387993%_))
                                (let ((_%e382282382340%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx387992387993%_))))
                                  (let ((_%tl382284382345%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e382282382340%_)))
                                        (_%hd382283382343%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e382282382340%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd382283382343%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd382283382343%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl382284382345%_))
                                                (let ((_%e382285382348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl382284382345%_))))
                                                  (let ((_%tl382287382353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e382285382348%_)))
                                                        (_%hd382286382351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e382285382348%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd382286382351%_))
                                                        (let ((_%e382288382356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd382286382351%_))))
                  (let ((_%tl382290382361%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e382288382356%_)))
                        (_%hd382289382359%_
                         (let ()
                           (declare (not safe))
                           (##car _%e382288382356%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd382289382359%_))
                        (let ((_%e382291382364%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd382289382359%_))))
                          (let ((_%tl382293382369%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e382291382364%_)))
                                (_%hd382292382367%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e382291382364%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl382293382369%_))
                                (let ((_%e382294382372%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl382293382369%_))))
                                  (let ((_%tl382296382377%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e382294382372%_)))
                                        (_%hd382295382375%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e382294382372%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd382295382375%_))
                                        (let ((_%e382297382380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd382295382375%_))))
                                          (let ((_%tl382299382385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e382297382380%_)))
                                                (_%hd382298382383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e382297382380%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd382298382383%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd382298382383%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl382299382385%_))
                                                        (let ((_%e382300382388%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl382299382385%_))))
                  (let ((_%tl382302382393%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e382300382388%_)))
                        (_%hd382301382391%_
                         (let ()
                           (declare (not safe))
                           (##car _%e382300382388%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd382301382391%_))
                        (let ((_%__splice387996387997%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd382301382391%_
                                  '0))))
                          (let ((_%tl382305382398%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice387996387997%_ '1)))
                                (_%target382303382396%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice387996387997%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl382305382398%_))
                                (_%__match388059388060%_
                                 _%e382282382340%_
                                 _%hd382283382343%_
                                 _%tl382284382345%_
                                 _%e382285382348%_
                                 _%hd382286382351%_
                                 _%tl382287382353%_
                                 _%e382288382356%_
                                 _%hd382289382359%_
                                 _%tl382290382361%_
                                 _%e382291382364%_
                                 _%hd382292382367%_
                                 _%tl382293382369%_
                                 _%e382294382372%_
                                 _%hd382295382375%_
                                 _%tl382296382377%_
                                 _%e382297382380%_
                                 _%hd382298382383%_
                                 _%tl382299382385%_
                                 _%e382300382388%_
                                 _%hd382301382391%_
                                 _%tl382302382393%_
                                 _%__splice387996387997%_
                                 _%target382303382396%_
                                 _%tl382305382398%_)
                                (_%__kont388000388001%_))))
                        (_%__kont388000388001%_))))
                (_%__kont388000388001%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont388000388001%_))
                                                (_%__kont388000388001%_))))
                                        (_%__kont388000388001%_))))
                                (_%__kont388000388001%_))))
                        (_%__kont388000388001%_))))
                (_%__kont388000388001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont388000388001%_))
                                            (_%__kont388000388001%_))
                                        (_%__kont388000388001%_))))
                                (_%__kont388000388001%_)))))))))
          (let* ((_%g381980382003%_
                  (lambda (_%g381981382000%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g381981382000%_))))
                 (_%g381979382262%_
                  (lambda (_%g381981382006%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g381981382006%_))
                        (let ((_%e381984382008%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g381981382006%_))))
                          (let ((_%hd381985382011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e381984382008%_)))
                                (_%tl381986382013%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e381984382008%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl381986382013%_))
                                (let ((_%e381987382016%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl381986382013%_))))
                                  (let ((_%hd381988382019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e381987382016%_)))
                                        (_%tl381989382021%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e381987382016%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl381989382021%_))
                                        (let ((_g388669_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl381989382021%_
                                                  '0))))
                                          (begin
                                            (let ((_g388670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g388669_)
                                                         (##values-length
                                                          _g388669_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g388670_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g388670_)))
                                            (let ((_%target381990382024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g388669_
                                                      0)))
                                                  (_%tl381992382026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g388669_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl381992382026%_))
                                                  (letrec ((_%loop381993382029%_
                                                            (lambda (_%hd381991382032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand381997382034%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd381991382032%_))
                          (let ((_%e381994382036%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd381991382032%_))))
                            (let ((_%lp-hd381995382039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e381994382036%_)))
                                  (_%lp-tl381996382041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e381994382036%_))))
                              (_%loop381993382029%_
                               _%lp-tl381996382041%_
                               (cons _%lp-hd381995382039%_
                                     _%rand381997382034%_))))
                          (let ((_%rand381998382044%_
                                 (reverse _%rand381997382034%_)))
                            ((lambda (_%g381982382046%_ _%g381983382047%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call381978%_
                                    _%g381983382047%_
                                    (let ((__tmp388671
                                           (lambda (_%g382064382067%_
                                                    _%g382065382069%_)
                                             (cons _%g382064382067%_
                                                   _%g382065382069%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp388671
                                       '()
                                       _%g381982382046%_)))
                                   (let* ((_%__stx388108388109%_
                                           _%g381983382047%_)
                                          (_%g382073382085%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx388108388109%_)))))
                                     (let ((_%__kont388110388111%_
                                            (lambda ()
                                              (let ((_%f382122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self381975%_
                                                        _%g381983382047%_))))
                                                (if (and (let ((__tmp388672
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f382122%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp388672))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f382122%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp382124%_ ((_%rest382127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp388674
                                                (lambda (_%g382244382247%_
                                                         _%g382245382249%_)
                                                  (cons _%g382244382247%_
                                                        _%g382245382249%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp388674
                                            '()
                                            _%g381982382046%_))))
                               (_%bind382129%_ '())
                               (_%args382130%_ '()))
              (let* ((_%rest382131382139%_ _%rest382127%_)
                     (_%else382133382147%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind382129%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f382122%_
                                                      _%args382130%_)
                                                '()))))))
                     (_%K382135382233%_
                      (lambda (_%rest382150%_ _%e382151%_)
                        (let* ((_%__stx388062388063%_ _%e382151%_)
                               (_%g382156382174%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx388062388063%_)))))
                          (let ((_%__kont388064388065%_
                                 (lambda ()
                                   (_%lp382124%_
                                    _%rest382150%_
                                    _%bind382129%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e382151%_))
                                          _%args382130%_))))
                                (_%__kont388066388067%_
                                 (lambda ()
                                   (_%lp382124%_
                                    _%rest382150%_
                                    _%bind382129%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e382151%_))
                                          _%args382130%_))))
                                (_%__kont388068388069%_
                                 (lambda ()
                                   (let ((_%tmp382181%_
                                          (let ((__tmp388673
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp388673))))
                                     (_%lp382124%_
                                      _%rest382150%_
                                      (cons (cons _%tmp382181%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e382151%_))
                                                        '()))
                                            _%bind382129%_)
                                      (cons _%tmp382181%_ _%args382130%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx388062388063%_))
                                (let ((_%e382158382212%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx388062388063%_))))
                                  (let ((_%tl382160382217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e382158382212%_)))
                                        (_%hd382159382215%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e382158382212%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd382159382215%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd382159382215%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl382160382217%_))
                                                (let ((_%e382161382220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl382160382217%_))))
                                                  (let ((_%tl382163382225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e382161382220%_)))
                                                        (_%hd382162382223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e382161382220%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl382163382225%_))
                                                        (_%__kont388064388065%_)
                                                        (_%__kont388068388069%_))))
                                                (_%__kont388068388069%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd382159382215%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl382160382217%_))
                                                    (let ((_%e382167382197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl382160382217%_))))
                                                      (let ((_%tl382169382202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e382167382197%_)))
                    (_%hd382168382200%_
                     (let () (declare (not safe)) (##car _%e382167382197%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl382169382202%_))
                    (_%__kont388066388067%_)
                    (_%__kont388068388069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont388068388069%_))
                                                (_%__kont388068388069%_)))
                                        (_%__kont388068388069%_))))
                                (_%__kont388068388069%_)))))))
                (if (pair? _%rest382131382139%_)
                    (let ((_%hd382136382236%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest382131382139%_)))
                          (_%tl382137382238%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest382131382139%_))))
                      (let* ((_%e382241%_ _%hd382136382236%_)
                             (_%rest382243%_ _%tl382137382238%_))
                        (_%K382135382233%_ _%rest382243%_ _%e382241%_)))
                    (_%else382133382147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call381978%_
                                                     _%g381983382047%_
                                                     (let ((__tmp388675
                                                            (lambda (_%g382251382254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g382252382256%_)
                      (cons _%g382251382254%_ _%g382252382256%_))))
               (declare (not safe))
               (foldr__0 __tmp388675 '() _%g381982382046%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont388112388113%_
                                            (lambda ()
                                              (_%compile-call381978%_
                                               _%g381983382047%_
                                               (let ((__tmp388676
                                                      (lambda (_%g382091382094%_
                                                               _%g382092382096%_)
                                                        (cons _%g382091382094%_
                                                              _%g382092382096%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp388676
                                                  '()
                                                  _%g381982382046%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx388108388109%_))
                                           (let ((_%e382075382104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx388108388109%_))))
                                             (let ((_%tl382077382109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e382075382104%_)))
                                                   (_%hd382076382107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e382075382104%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd382076382107%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd382076382107%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl382077382109%_))
                                                           (let ((_%e382078382112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl382077382109%_))))
                     (let ((_%tl382080382117%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e382078382112%_)))
                           (_%hd382079382115%_
                            (let ()
                              (declare (not safe))
                              (##car _%e382078382112%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl382080382117%_))
                           (_%__kont388110388111%_)
                           (_%__kont388112388113%_))))
                   (_%__kont388112388113%_))
               (_%__kont388112388113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont388112388113%_))))
                                           (_%__kont388112388113%_))))))
                             _%rand381998382044%_
                             _%hd381988382019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop381993382029%_
                                                     _%target381990382024%_
                                                     '()))
                                                  (_%g381980382003%_
                                                   _%g381981382006%_)))))
                                        (_%g381980382003%_
                                         _%g381981382006%_))))
                                (_%g381980382003%_ _%g381981382006%_))))
                        (_%g381980382003%_ _%g381981382006%_)))))
            (_%g381979382262%_ _%stx381976%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self381720%_ _%stx381721%_)
        (let* ((_%__stx388180388181%_ _%stx381721%_)
               (_%g381724381753%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx388180388181%_)))))
          (let ((_%__kont388182388183%_
                 (lambda (_%g381726381819%_ _%g381727381820%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self381720%_
                        _%stx381721%_)
                       (let ((_%f381842%_
                              (let ((__tmp388677
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g381727381820%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self381720%_
                                 __tmp388677))))
                         (let _%lp381844%_ ((_%rest381847%_
                                             (reverse (let ((__tmp388679
                                                             (lambda (_%g381964381967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g381965381969%_)
                       (cons _%g381964381967%_ _%g381965381969%_))))
                (declare (not safe))
                (foldr__0 __tmp388679 '() _%g381726381819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind381849%_ '())
                                            (_%args381850%_ '()))
                           (let* ((_%rest381851381859%_ _%rest381847%_)
                                  (_%else381853381867%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind381849%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f381842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args381850%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K381855381953%_
                                   (lambda (_%rest381870%_ _%e381871%_)
                                     (let* ((_%__stx388134388135%_ _%e381871%_)
                                            (_%g381876381894%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx388134388135%_)))))
                                       (let ((_%__kont388136388137%_
                                              (lambda ()
                                                (_%lp381844%_
                                                 _%rest381870%_
                                                 _%bind381849%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e381871%_))
                                                       _%args381850%_))))
                                             (_%__kont388138388139%_
                                              (lambda ()
                                                (_%lp381844%_
                                                 _%rest381870%_
                                                 _%bind381849%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e381871%_))
                                                       _%args381850%_))))
                                             (_%__kont388140388141%_
                                              (lambda ()
                                                (let ((_%tmp381901%_
                                                       (let ((__tmp388678
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp388678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp381844%_
                                                   _%rest381870%_
                                                   (cons (cons _%tmp381901%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e381871%_))
                             '()))
                 _%bind381849%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp381901%_
                                                         _%args381850%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx388134388135%_))
                                             (let ((_%e381878381932%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx388134388135%_))))
                                               (let ((_%tl381880381937%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e381878381932%_)))
                                                     (_%hd381879381935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e381878381932%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd381879381935%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd381879381935%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl381880381937%_))
                     (let ((_%e381881381940%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl381880381937%_))))
                       (let ((_%tl381883381945%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e381881381940%_)))
                             (_%hd381882381943%_
                              (let ()
                                (declare (not safe))
                                (##car _%e381881381940%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl381883381945%_))
                             (_%__kont388136388137%_)
                             (_%__kont388140388141%_))))
                     (_%__kont388140388141%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd381879381935%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl381880381937%_))
                         (let ((_%e381887381917%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl381880381937%_))))
                           (let ((_%tl381889381922%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e381887381917%_)))
                                 (_%hd381888381920%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e381887381917%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl381889381922%_))
                                 (_%__kont388138388139%_)
                                 (_%__kont388140388141%_))))
                         (_%__kont388140388141%_))
                     (_%__kont388140388141%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont388140388141%_))))
                                             (_%__kont388140388141%_)))))))
                             (if (pair? _%rest381851381859%_)
                                 (let ((_%hd381856381956%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest381851381859%_)))
                                       (_%tl381857381958%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest381851381859%_))))
                                   (let* ((_%e381961%_ _%hd381856381956%_)
                                          (_%rest381963%_ _%tl381857381958%_))
                                     (_%K381855381953%_
                                      _%rest381963%_
                                      _%e381961%_)))
                                 (_%else381853381867%_))))))))
                (_%__kont388186388187%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self381720%_ _%stx381721%_))))
            (let ((_%__match388225388226%_
                   (lambda (_%e381728381765%_
                            _%hd381729381768%_
                            _%tl381730381770%_
                            _%e381731381773%_
                            _%hd381732381776%_
                            _%tl381733381778%_
                            _%e381734381781%_
                            _%hd381735381784%_
                            _%tl381736381786%_
                            _%e381737381789%_
                            _%hd381738381792%_
                            _%tl381739381794%_
                            _%__splice388184388185%_
                            _%target381740381797%_
                            _%tl381742381799%_)
                     (letrec ((_%loop381743381802%_
                               (lambda (_%hd381741381805%_
                                        _%rand381747381807%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd381741381805%_))
                                     (let ((_%e381744381809%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd381741381805%_))))
                                       (let ((_%lp-tl381746381814%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e381744381809%_)))
                                             (_%lp-hd381745381812%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e381744381809%_))))
                                         (_%loop381743381802%_
                                          _%lp-tl381746381814%_
                                          (cons _%lp-hd381745381812%_
                                                _%rand381747381807%_))))
                                     (let ((_%rand381748381817%_
                                            (reverse _%rand381747381807%_)))
                                       (_%__kont388182388183%_
                                        _%rand381748381817%_
                                        _%hd381738381792%_))))))
                       (_%loop381743381802%_ _%target381740381797%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx388180388181%_))
                  (let ((_%e381728381765%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx388180388181%_))))
                    (let ((_%tl381730381770%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e381728381765%_)))
                          (_%hd381729381768%_
                           (let ()
                             (declare (not safe))
                             (##car _%e381728381765%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl381730381770%_))
                          (let ((_%e381731381773%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl381730381770%_))))
                            (let ((_%tl381733381778%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e381731381773%_)))
                                  (_%hd381732381776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e381731381773%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd381732381776%_))
                                  (let ((_%e381734381781%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd381732381776%_))))
                                    (let ((_%tl381736381786%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e381734381781%_)))
                                          (_%hd381735381784%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e381734381781%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd381735381784%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd381735381784%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl381736381786%_))
                                                  (let ((_%e381737381789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl381736381786%_))))
                                                    (let ((_%tl381739381794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e381737381789%_)))
                                                          (_%hd381738381792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e381737381789%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl381739381794%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl381733381778%_))
                      (let ((_%__splice388184388185%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl381733381778%_
                                '0))))
                        (let ((_%tl381742381799%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice388184388185%_ '1)))
                              (_%target381740381797%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice388184388185%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl381742381799%_))
                              (_%__match388225388226%_
                               _%e381728381765%_
                               _%hd381729381768%_
                               _%tl381730381770%_
                               _%e381731381773%_
                               _%hd381732381776%_
                               _%tl381733381778%_
                               _%e381734381781%_
                               _%hd381735381784%_
                               _%tl381736381786%_
                               _%e381737381789%_
                               _%hd381738381792%_
                               _%tl381739381794%_
                               _%__splice388184388185%_
                               _%target381740381797%_
                               _%tl381742381799%_)
                              (_%__kont388186388187%_))))
                      (_%__kont388186388187%_))
                  (_%__kont388186388187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont388186388187%_))
                                              (_%__kont388186388187%_))
                                          (_%__kont388186388187%_))))
                                  (_%__kont388186388187%_))))
                          (_%__kont388186388187%_))))
                  (_%__kont388186388187%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self381532%_ _%stx381533%_)
        (letrec ((_%simplify381535%_
                  (lambda (_%code381620%_)
                    (let* ((_%code381621381639%_ _%code381620%_)
                           (_%else381623381647%_ (lambda () _%code381620%_))
                           (_%K381625381683%_
                            (lambda (_%expr381650%_ _%test381651%_)
                              (let* ((_%expr381652381660%_ _%expr381650%_)
                                     (_%else381654381668%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test381651%_
                                                    (cons _%expr381650%_
                                                          '())))))
                                     (_%K381656381673%_
                                      (lambda (_%exprs381671%_)
                                        (cons 'and
                                              (cons _%test381651%_
                                                    _%exprs381671%_)))))
                                (if (pair? _%expr381652381660%_)
                                    (let ((_%hd381657381676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr381652381660%_)))
                                          (_%tl381658381678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr381652381660%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd381657381676%_ 'and))
                                          (let ((_%exprs381681%_
                                                 _%tl381658381678%_))
                                            (_%K381656381673%_
                                             _%exprs381681%_))
                                          (_%else381654381668%_)))
                                    (_%else381654381668%_))))))
                      (if (pair? _%code381621381639%_)
                          (let ((_%hd381626381686%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code381621381639%_)))
                                (_%tl381627381688%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code381621381639%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd381626381686%_ 'if))
                                (if (pair? _%tl381627381688%_)
                                    (let ((_%hd381628381691%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl381627381688%_)))
                                          (_%tl381629381693%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl381627381688%_))))
                                      (let ((_%test381696%_
                                             _%hd381628381691%_))
                                        (if (pair? _%tl381629381693%_)
                                            (let ((_%hd381630381698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl381629381693%_)))
                                                  (_%tl381631381700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl381629381693%_))))
                                              (let ((_%expr381703%_
                                                     _%hd381630381698%_))
                                                (if (pair? _%tl381631381700%_)
                                                    (let ((_%hd381632381705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl381631381700%_)))
                                                          (_%tl381633381707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl381631381700%_))))
                                                      (if (pair? _%hd381632381705%_)
                                                          (let ((_%hd381634381710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd381632381705%_)))
                        (_%tl381635381712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd381632381705%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd381634381710%_ 'quote))
                        (if (pair? _%tl381635381712%_)
                            (let ((_%hd381636381715%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl381635381712%_)))
                                  (_%tl381637381717%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl381635381712%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd381636381715%_ '#f))
                                  (if (null? _%tl381637381717%_)
                                      (if (null? _%tl381633381707%_)
                                          (_%K381625381683%_
                                           _%expr381703%_
                                           _%test381696%_)
                                          (_%else381623381647%_))
                                      (_%else381623381647%_))
                                  (_%else381623381647%_)))
                            (_%else381623381647%_))
                        (_%else381623381647%_)))
                  (_%else381623381647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else381623381647%_))))
                                            (_%else381623381647%_))))
                                    (_%else381623381647%_))
                                (_%else381623381647%_)))
                          (_%else381623381647%_))))))
          (let* ((_%g381537381558%_
                  (lambda (_%g381538381555%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g381538381555%_))))
                 (_%g381536381617%_
                  (lambda (_%g381538381561%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g381538381561%_))
                        (let ((_%e381542381563%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g381538381561%_))))
                          (let ((_%hd381543381566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e381542381563%_)))
                                (_%tl381544381568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e381542381563%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl381544381568%_))
                                (let ((_%e381545381571%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl381544381568%_))))
                                  (let ((_%hd381546381574%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e381545381571%_)))
                                        (_%tl381547381576%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e381545381571%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl381547381576%_))
                                        (let ((_%e381548381579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl381547381576%_))))
                                          (let ((_%hd381549381582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e381548381579%_)))
                                                (_%tl381550381584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e381548381579%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl381550381584%_))
                                                (let ((_%e381551381587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl381550381584%_))))
                                                  (let ((_%hd381552381590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e381551381587%_)))
                                                        (_%tl381553381592%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e381551381587%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl381553381592%_))
                                                        ((lambda (_%g381539381595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g381540381596%_
                          _%g381541381597%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify381535%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self381532%_
                                       _%g381541381597%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self381532%_
                                             _%g381540381596%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self381532%_
                                                   _%g381539381595%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp388680
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self381532%_
                                               _%g381541381597%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp388680
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self381532%_
                                            _%g381540381596%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self381532%_
                                                  _%g381539381595%_))
                                               '()))))))
                 _%hd381552381590%_
                 _%hd381549381582%_
                 _%hd381546381574%_)
                (_%g381537381558%_ _%g381538381561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g381537381558%_
                                                 _%g381538381561%_))))
                                        (_%g381537381558%_
                                         _%g381538381561%_))))
                                (_%g381537381558%_ _%g381538381561%_))))
                        (_%g381537381558%_ _%g381538381561%_)))))
            (_%g381536381617%_ _%stx381533%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self381480%_ _%stx381481%_)
        (let* ((_%g381483381496%_
                (lambda (_%g381484381493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g381484381493%_))))
               (_%g381482381529%_
                (lambda (_%g381484381499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g381484381499%_))
                      (let ((_%e381486381501%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g381484381499%_))))
                        (let ((_%hd381487381504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e381486381501%_)))
                              (_%tl381488381506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e381486381501%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl381488381506%_))
                              (let ((_%e381489381509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl381488381506%_))))
                                (let ((_%hd381490381512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e381489381509%_)))
                                      (_%tl381491381514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e381489381509%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl381491381514%_))
                                      ((lambda (_%g381485381517%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g381485381517%_)))
                                       _%hd381490381512%_)
                                      (_%g381483381496%_ _%g381484381499%_))))
                              (_%g381483381496%_ _%g381484381499%_))))
                      (_%g381483381496%_ _%g381484381499%_)))))
          (_%g381482381529%_ _%stx381481%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self381412%_ _%stx381413%_)
        (let* ((_%g381415381432%_
                (lambda (_%g381416381429%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g381416381429%_))))
               (_%g381414381477%_
                (lambda (_%g381416381435%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g381416381435%_))
                      (let ((_%e381419381437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g381416381435%_))))
                        (let ((_%hd381420381440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e381419381437%_)))
                              (_%tl381421381442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e381419381437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl381421381442%_))
                              (let ((_%e381422381445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl381421381442%_))))
                                (let ((_%hd381423381448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e381422381445%_)))
                                      (_%tl381424381450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e381422381445%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl381424381450%_))
                                      (let ((_%e381425381453%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl381424381450%_))))
                                        (let ((_%hd381426381456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e381425381453%_)))
                                              (_%tl381427381458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e381425381453%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl381427381458%_))
                                              ((lambda (_%g381417381461%_
                                                        _%g381418381462%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g381418381462%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self381412%_
                              _%g381417381461%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd381426381456%_
                                               _%hd381423381448%_)
                                              (_%g381415381432%_
                                               _%g381416381435%_))))
                                      (_%g381415381432%_ _%g381416381435%_))))
                              (_%g381415381432%_ _%g381416381435%_))))
                      (_%g381415381432%_ _%g381416381435%_)))))
          (_%g381414381477%_ _%stx381413%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self381223%_ _%stx381224%_)
        (let* ((_%g381226381243%_
                (lambda (_%g381227381240%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g381227381240%_))))
               (_%g381225381409%_
                (lambda (_%g381227381246%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g381227381246%_))
                      (let ((_%e381230381248%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g381227381246%_))))
                        (let ((_%hd381231381251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e381230381248%_)))
                              (_%tl381232381253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e381230381248%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl381232381253%_))
                              (let ((_%e381233381256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl381232381253%_))))
                                (let ((_%hd381234381259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e381233381256%_)))
                                      (_%tl381235381261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e381233381256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl381235381261%_))
                                      (let ((_%e381236381264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl381235381261%_))))
                                        (let ((_%hd381237381267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e381236381264%_)))
                                              (_%tl381238381269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e381236381264%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl381238381269%_))
                                              ((lambda (_%g381228381272%_
                                                        _%g381229381273%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self381223%_ _%g381228381272%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self381223%_
                                  _%g381229381273%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp381288%_ ((_%rest381291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g381229381273%_
                                       (cons _%g381228381272%_ '())))
                                (_%bind381293%_ '())
                                (_%args381294%_ '()))
               (let* ((_%rest381295381303%_ _%rest381291%_)
                      (_%else381297381311%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind381293%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args381294%_)
                                                 '()))))))
                      (_%K381299381397%_
                       (lambda (_%rest381314%_ _%e381315%_)
                         (let* ((_%__stx388228388229%_ _%e381315%_)
                                (_%g381320381338%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx388228388229%_)))))
                           (let ((_%__kont388230388231%_
                                  (lambda ()
                                    (_%lp381288%_
                                     _%rest381314%_
                                     _%bind381293%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e381315%_))
                                           _%args381294%_))))
                                 (_%__kont388232388233%_
                                  (lambda ()
                                    (_%lp381288%_
                                     _%rest381314%_
                                     _%bind381293%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e381315%_))
                                           _%args381294%_))))
                                 (_%__kont388234388235%_
                                  (lambda ()
                                    (let ((_%tmp381345%_
                                           (let ((__tmp388681
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp388681))))
                                      (_%lp381288%_
                                       _%rest381314%_
                                       (cons (cons _%tmp381345%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e381315%_))
                                                         '()))
                                             _%bind381293%_)
                                       (cons _%tmp381345%_ _%args381294%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx388228388229%_))
                                 (let ((_%e381322381376%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx388228388229%_))))
                                   (let ((_%tl381324381381%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e381322381376%_)))
                                         (_%hd381323381379%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e381322381376%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd381323381379%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd381323381379%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl381324381381%_))
                                                 (let ((_%e381325381384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl381324381381%_))))
                                                   (let ((_%tl381327381389%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e381325381384%_)))
                                                         (_%hd381326381387%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e381325381384%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl381327381389%_))
                                                         (_%__kont388230388231%_)
                                                         (_%__kont388234388235%_))))
                                                 (_%__kont388234388235%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd381323381379%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl381324381381%_))
                                                     (let ((_%e381331381361%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl381324381381%_))))
                                                       (let ((_%tl381333381366%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e381331381361%_)))
                     (_%hd381332381364%_
                      (let () (declare (not safe)) (##car _%e381331381361%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl381333381366%_))
                     (_%__kont388232388233%_)
                     (_%__kont388234388235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont388234388235%_))
                                                 (_%__kont388234388235%_)))
                                         (_%__kont388234388235%_))))
                                 (_%__kont388234388235%_)))))))
                 (if (pair? _%rest381295381303%_)
                     (let ((_%hd381300381400%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest381295381303%_)))
                           (_%tl381301381402%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest381295381303%_))))
                       (let* ((_%e381405%_ _%hd381300381400%_)
                              (_%rest381407%_ _%tl381301381402%_))
                         (_%K381299381397%_ _%rest381407%_ _%e381405%_)))
                     (_%else381297381311%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd381237381267%_
                                               _%hd381234381259%_)
                                              (_%g381226381243%_
                                               _%g381227381246%_))))
                                      (_%g381226381243%_ _%g381227381246%_))))
                              (_%g381226381243%_ _%g381227381246%_))))
                      (_%g381226381243%_ _%g381227381246%_)))))
          (_%g381225381409%_ _%stx381224%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self381034%_ _%stx381035%_)
        (let* ((_%g381037381054%_
                (lambda (_%g381038381051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g381038381051%_))))
               (_%g381036381220%_
                (lambda (_%g381038381057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g381038381057%_))
                      (let ((_%e381041381059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g381038381057%_))))
                        (let ((_%hd381042381062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e381041381059%_)))
                              (_%tl381043381064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e381041381059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl381043381064%_))
                              (let ((_%e381044381067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl381043381064%_))))
                                (let ((_%hd381045381070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e381044381067%_)))
                                      (_%tl381046381072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e381044381067%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl381046381072%_))
                                      (let ((_%e381047381075%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl381046381072%_))))
                                        (let ((_%hd381048381078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e381047381075%_)))
                                              (_%tl381049381080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e381047381075%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl381049381080%_))
                                              ((lambda (_%g381039381083%_
                                                        _%g381040381084%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self381034%_ _%g381039381083%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self381034%_
                                  _%g381040381084%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp381099%_ ((_%rest381102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g381040381084%_
                                       (cons _%g381039381083%_ '())))
                                (_%bind381104%_ '())
                                (_%args381105%_ '()))
               (let* ((_%rest381106381114%_ _%rest381102%_)
                      (_%else381108381122%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind381104%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args381105%_)
                                                 '()))))))
                      (_%K381110381208%_
                       (lambda (_%rest381125%_ _%e381126%_)
                         (let* ((_%__stx388274388275%_ _%e381126%_)
                                (_%g381131381149%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx388274388275%_)))))
                           (let ((_%__kont388276388277%_
                                  (lambda ()
                                    (_%lp381099%_
                                     _%rest381125%_
                                     _%bind381104%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e381126%_))
                                           _%args381105%_))))
                                 (_%__kont388278388279%_
                                  (lambda ()
                                    (_%lp381099%_
                                     _%rest381125%_
                                     _%bind381104%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e381126%_))
                                           _%args381105%_))))
                                 (_%__kont388280388281%_
                                  (lambda ()
                                    (let ((_%tmp381156%_
                                           (let ((__tmp388682
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp388682))))
                                      (_%lp381099%_
                                       _%rest381125%_
                                       (cons (cons _%tmp381156%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e381126%_))
                                                         '()))
                                             _%bind381104%_)
                                       (cons _%tmp381156%_ _%args381105%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx388274388275%_))
                                 (let ((_%e381133381187%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx388274388275%_))))
                                   (let ((_%tl381135381192%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e381133381187%_)))
                                         (_%hd381134381190%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e381133381187%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd381134381190%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd381134381190%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl381135381192%_))
                                                 (let ((_%e381136381195%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl381135381192%_))))
                                                   (let ((_%tl381138381200%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e381136381195%_)))
                                                         (_%hd381137381198%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e381136381195%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl381138381200%_))
                                                         (_%__kont388276388277%_)
                                                         (_%__kont388280388281%_))))
                                                 (_%__kont388280388281%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd381134381190%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl381135381192%_))
                                                     (let ((_%e381142381172%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl381135381192%_))))
                                                       (let ((_%tl381144381177%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e381142381172%_)))
                     (_%hd381143381175%_
                      (let () (declare (not safe)) (##car _%e381142381172%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl381144381177%_))
                     (_%__kont388278388279%_)
                     (_%__kont388280388281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont388280388281%_))
                                                 (_%__kont388280388281%_)))
                                         (_%__kont388280388281%_))))
                                 (_%__kont388280388281%_)))))))
                 (if (pair? _%rest381106381114%_)
                     (let ((_%hd381111381211%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest381106381114%_)))
                           (_%tl381112381213%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest381106381114%_))))
                       (let* ((_%e381216%_ _%hd381111381211%_)
                              (_%rest381218%_ _%tl381112381213%_))
                         (_%K381110381208%_ _%rest381218%_ _%e381216%_)))
                     (_%else381108381122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd381048381078%_
                                               _%hd381045381070%_)
                                              (_%g381037381054%_
                                               _%g381038381057%_))))
                                      (_%g381037381054%_ _%g381038381057%_))))
                              (_%g381037381054%_ _%g381038381057%_))))
                      (_%g381037381054%_ _%g381038381057%_)))))
          (_%g381036381220%_ _%stx381035%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self380950%_ _%stx380951%_)
        (let* ((_%g380953380974%_
                (lambda (_%g380954380971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g380954380971%_))))
               (_%g380952381031%_
                (lambda (_%g380954380977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g380954380977%_))
                      (let ((_%e380958380979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g380954380977%_))))
                        (let ((_%hd380959380982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e380958380979%_)))
                              (_%tl380960380984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e380958380979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl380960380984%_))
                              (let ((_%e380961380987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl380960380984%_))))
                                (let ((_%hd380962380990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e380961380987%_)))
                                      (_%tl380963380992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e380961380987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl380963380992%_))
                                      (let ((_%e380964380995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl380963380992%_))))
                                        (let ((_%hd380965380998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e380964380995%_)))
                                              (_%tl380966381000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e380964380995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl380966381000%_))
                                              (let ((_%e380967381003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl380966381000%_))))
                                                (let ((_%hd380968381006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e380967381003%_)))
                                                      (_%tl380969381008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e380967381003%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl380969381008%_))
                                                      ((lambda (_%g380955381011%_
                                                                _%g380956381012%_
                                                                _%g380957381013%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self380950%_
                                _%g380955381011%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self380950%_
                                      _%g380956381012%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self380950%_
                                            _%g380957381013%_))
                                         (cons ''#f '()))))))
               _%hd380968381006%_
               _%hd380965380998%_
               _%hd380962380990%_)
              (_%g380953380974%_ _%g380954380977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g380953380974%_
                                               _%g380954380977%_))))
                                      (_%g380953380974%_ _%g380954380977%_))))
                              (_%g380953380974%_ _%g380954380977%_))))
                      (_%g380953380974%_ _%g380954380977%_)))))
          (_%g380952381031%_ _%stx380951%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self380850%_ _%stx380851%_)
        (let* ((_%g380853380878%_
                (lambda (_%g380854380875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g380854380875%_))))
               (_%g380852380947%_
                (lambda (_%g380854380881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g380854380881%_))
                      (let ((_%e380859380883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g380854380881%_))))
                        (let ((_%hd380860380886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e380859380883%_)))
                              (_%tl380861380888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e380859380883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl380861380888%_))
                              (let ((_%e380862380891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl380861380888%_))))
                                (let ((_%hd380863380894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e380862380891%_)))
                                      (_%tl380864380896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e380862380891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl380864380896%_))
                                      (let ((_%e380865380899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl380864380896%_))))
                                        (let ((_%hd380866380902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e380865380899%_)))
                                              (_%tl380867380904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e380865380899%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl380867380904%_))
                                              (let ((_%e380868380907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl380867380904%_))))
                                                (let ((_%hd380869380910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e380868380907%_)))
                                                      (_%tl380870380912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e380868380907%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl380870380912%_))
                                                      (let ((_%e380871380915%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl380870380912%_))))
                (let ((_%hd380872380918%_
                       (let () (declare (not safe)) (##car _%e380871380915%_)))
                      (_%tl380873380920%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e380871380915%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl380873380920%_))
                      ((lambda (_%g380855380923%_
                                _%g380856380924%_
                                _%g380857380925%_
                                _%g380858380926%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self380850%_
                                        _%g380856380924%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self380850%_
                                              _%g380855380923%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self380850%_
                                                    _%g380857380925%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self380850%_
                                                          _%g380858380926%_))
                                                       (cons ''#f '())))))))
                       _%hd380872380918%_
                       _%hd380869380910%_
                       _%hd380866380902%_
                       _%hd380863380894%_)
                      (_%g380853380878%_ _%g380854380881%_))))
              (_%g380853380878%_ _%g380854380881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g380853380878%_
                                               _%g380854380881%_))))
                                      (_%g380853380878%_ _%g380854380881%_))))
                              (_%g380853380878%_ _%g380854380881%_))))
                      (_%g380853380878%_ _%g380854380881%_)))))
          (_%g380852380947%_ _%stx380851%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self380766%_ _%stx380767%_)
        (let* ((_%g380769380790%_
                (lambda (_%g380770380787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g380770380787%_))))
               (_%g380768380847%_
                (lambda (_%g380770380793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g380770380793%_))
                      (let ((_%e380774380795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g380770380793%_))))
                        (let ((_%hd380775380798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e380774380795%_)))
                              (_%tl380776380800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e380774380795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl380776380800%_))
                              (let ((_%e380777380803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl380776380800%_))))
                                (let ((_%hd380778380806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e380777380803%_)))
                                      (_%tl380779380808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e380777380803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl380779380808%_))
                                      (let ((_%e380780380811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl380779380808%_))))
                                        (let ((_%hd380781380814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e380780380811%_)))
                                              (_%tl380782380816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e380780380811%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl380782380816%_))
                                              (let ((_%e380783380819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl380782380816%_))))
                                                (let ((_%hd380784380822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e380783380819%_)))
                                                      (_%tl380785380824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e380783380819%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl380785380824%_))
                                                      ((lambda (_%g380771380827%_
                                                                _%g380772380828%_
                                                                _%g380773380829%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self380766%_
                                _%g380771380827%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self380766%_
                                      _%g380772380828%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self380766%_
                                            _%g380773380829%_))
                                         (cons ''#f '()))))))
               _%hd380784380822%_
               _%hd380781380814%_
               _%hd380778380806%_)
              (_%g380769380790%_ _%g380770380793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g380769380790%_
                                               _%g380770380793%_))))
                                      (_%g380769380790%_ _%g380770380793%_))))
                              (_%g380769380790%_ _%g380770380793%_))))
                      (_%g380769380790%_ _%g380770380793%_)))))
          (_%g380768380847%_ _%stx380767%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self380666%_ _%stx380667%_)
        (let* ((_%g380669380694%_
                (lambda (_%g380670380691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g380670380691%_))))
               (_%g380668380763%_
                (lambda (_%g380670380697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g380670380697%_))
                      (let ((_%e380675380699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g380670380697%_))))
                        (let ((_%hd380676380702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e380675380699%_)))
                              (_%tl380677380704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e380675380699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl380677380704%_))
                              (let ((_%e380678380707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl380677380704%_))))
                                (let ((_%hd380679380710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e380678380707%_)))
                                      (_%tl380680380712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e380678380707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl380680380712%_))
                                      (let ((_%e380681380715%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl380680380712%_))))
                                        (let ((_%hd380682380718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e380681380715%_)))
                                              (_%tl380683380720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e380681380715%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl380683380720%_))
                                              (let ((_%e380684380723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl380683380720%_))))
                                                (let ((_%hd380685380726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e380684380723%_)))
                                                      (_%tl380686380728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e380684380723%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl380686380728%_))
                                                      (let ((_%e380687380731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl380686380728%_))))
                (let ((_%hd380688380734%_
                       (let () (declare (not safe)) (##car _%e380687380731%_)))
                      (_%tl380689380736%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e380687380731%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl380689380736%_))
                      ((lambda (_%g380671380739%_
                                _%g380672380740%_
                                _%g380673380741%_
                                _%g380674380742%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self380666%_
                                        _%g380672380740%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self380666%_
                                              _%g380671380739%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self380666%_
                                                    _%g380673380741%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self380666%_
                                                          _%g380674380742%_))
                                                       (cons ''#f '())))))))
                       _%hd380688380734%_
                       _%hd380685380726%_
                       _%hd380682380718%_
                       _%hd380679380710%_)
                      (_%g380669380694%_ _%g380670380697%_))))
              (_%g380669380694%_ _%g380670380697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g380669380694%_
                                               _%g380670380697%_))))
                                      (_%g380669380694%_ _%g380670380697%_))))
                              (_%g380669380694%_ _%g380670380697%_))))
                      (_%g380669380694%_ _%g380670380697%_)))))
          (_%g380668380763%_ _%stx380667%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self380461%_ _%stx380462%_)
        (let* ((_%g380464380485%_
                (lambda (_%g380465380482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g380465380482%_))))
               (_%g380463380663%_
                (lambda (_%g380465380488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g380465380488%_))
                      (let ((_%e380469380490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g380465380488%_))))
                        (let ((_%hd380470380493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e380469380490%_)))
                              (_%tl380471380495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e380469380490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl380471380495%_))
                              (let ((_%e380472380498%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl380471380495%_))))
                                (let ((_%hd380473380501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e380472380498%_)))
                                      (_%tl380474380503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e380472380498%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl380474380503%_))
                                      (let ((_%e380475380506%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl380474380503%_))))
                                        (let ((_%hd380476380509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e380475380506%_)))
                                              (_%tl380477380511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e380475380506%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl380477380511%_))
                                              (let ((_%e380478380514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl380477380511%_))))
                                                (let ((_%hd380479380517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e380478380514%_)))
                                                      (_%tl380480380519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e380478380514%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl380480380519%_))
                                                      ((lambda (_%g380466380522%_
                                                                _%g380467380523%_
                                                                _%g380468380524%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self380461%_
                                    _%g380466380522%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self380461%_
                                          _%g380467380523%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp380542%_ ((_%rest380545%_
                                         (cons _%g380467380523%_
                                               (cons _%g380466380522%_ '())))
                                        (_%bind380547%_ '())
                                        (_%args380548%_ '()))
                       (let* ((_%rest380549380557%_ _%rest380545%_)
                              (_%else380551380565%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind380547%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp388683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp388683 _%args380548%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K380553380651%_
                               (lambda (_%rest380568%_ _%e380569%_)
                                 (let* ((_%__stx388320388321%_ _%e380569%_)
                                        (_%g380574380592%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx388320388321%_)))))
                                   (let ((_%__kont388322388323%_
                                          (lambda ()
                                            (_%lp380542%_
                                             _%rest380568%_
                                             _%bind380547%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e380569%_))
                                                   _%args380548%_))))
                                         (_%__kont388324388325%_
                                          (lambda ()
                                            (_%lp380542%_
                                             _%rest380568%_
                                             _%bind380547%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e380569%_))
                                                   _%args380548%_))))
                                         (_%__kont388326388327%_
                                          (lambda ()
                                            (let ((_%tmp380599%_
                                                   (let ((__tmp388684
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp388684))))
                                              (_%lp380542%_
                                               _%rest380568%_
                                               (cons (cons _%tmp380599%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e380569%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind380547%_)
                                               (cons _%tmp380599%_
                                                     _%args380548%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx388320388321%_))
                                         (let ((_%e380576380630%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx388320388321%_))))
                                           (let ((_%tl380578380635%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e380576380630%_)))
                                                 (_%hd380577380633%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e380576380630%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd380577380633%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd380577380633%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl380578380635%_))
                                                         (let ((_%e380579380638%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl380578380635%_))))
                   (let ((_%tl380581380643%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e380579380638%_)))
                         (_%hd380580380641%_
                          (let ()
                            (declare (not safe))
                            (##car _%e380579380638%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl380581380643%_))
                         (_%__kont388322388323%_)
                         (_%__kont388326388327%_))))
                 (_%__kont388326388327%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd380577380633%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl380578380635%_))
                     (let ((_%e380585380615%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl380578380635%_))))
                       (let ((_%tl380587380620%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e380585380615%_)))
                             (_%hd380586380618%_
                              (let ()
                                (declare (not safe))
                                (##car _%e380585380615%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl380587380620%_))
                             (_%__kont388324388325%_)
                             (_%__kont388326388327%_))))
                     (_%__kont388326388327%_))
                 (_%__kont388326388327%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont388326388327%_))))
                                         (_%__kont388326388327%_)))))))
                         (if (pair? _%rest380549380557%_)
                             (let ((_%hd380554380654%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest380549380557%_)))
                                   (_%tl380555380656%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest380549380557%_))))
                               (let* ((_%e380659%_ _%hd380554380654%_)
                                      (_%rest380661%_ _%tl380555380656%_))
                                 (_%K380553380651%_
                                  _%rest380661%_
                                  _%e380659%_)))
                             (_%else380551380565%_))))))
               _%hd380479380517%_
               _%hd380476380509%_
               _%hd380473380501%_)
              (_%g380464380485%_ _%g380465380488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g380464380485%_
                                               _%g380465380488%_))))
                                      (_%g380464380485%_ _%g380465380488%_))))
                              (_%g380464380485%_ _%g380465380488%_))))
                      (_%g380464380485%_ _%g380465380488%_)))))
          (_%g380463380663%_ _%stx380462%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self380240%_ _%stx380241%_)
        (let* ((_%g380243380268%_
                (lambda (_%g380244380265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g380244380265%_))))
               (_%g380242380458%_
                (lambda (_%g380244380271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g380244380271%_))
                      (let ((_%e380249380273%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g380244380271%_))))
                        (let ((_%hd380250380276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e380249380273%_)))
                              (_%tl380251380278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e380249380273%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl380251380278%_))
                              (let ((_%e380252380281%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl380251380278%_))))
                                (let ((_%hd380253380284%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e380252380281%_)))
                                      (_%tl380254380286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e380252380281%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl380254380286%_))
                                      (let ((_%e380255380289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl380254380286%_))))
                                        (let ((_%hd380256380292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e380255380289%_)))
                                              (_%tl380257380294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e380255380289%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl380257380294%_))
                                              (let ((_%e380258380297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl380257380294%_))))
                                                (let ((_%hd380259380300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e380258380297%_)))
                                                      (_%tl380260380302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e380258380297%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl380260380302%_))
                                                      (let ((_%e380261380305%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl380260380302%_))))
                (let ((_%hd380262380308%_
                       (let () (declare (not safe)) (##car _%e380261380305%_)))
                      (_%tl380263380310%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e380261380305%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl380263380310%_))
                      ((lambda (_%g380245380313%_
                                _%g380246380314%_
                                _%g380247380315%_
                                _%g380248380316%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self380240%_
                                            _%g380246380314%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self380240%_
                                                  _%g380245380313%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self380240%_
                                                        _%g380247380315%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp380337%_ ((_%rest380340%_
                                                 (cons _%g380247380315%_
                                                       (cons _%g380245380313%_
                                                             (cons _%g380246380314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind380342%_ '())
                                                (_%args380343%_ '()))
                               (let* ((_%rest380344380352%_ _%rest380340%_)
                                      (_%else380346380360%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind380342%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp388685 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp388685 _%args380343%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K380348380446%_
                                       (lambda (_%rest380363%_ _%e380364%_)
                                         (let* ((_%__stx388366388367%_
                                                 _%e380364%_)
                                                (_%g380369380387%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx388366388367%_)))))
                                           (let ((_%__kont388368388369%_
                                                  (lambda ()
                                                    (_%lp380337%_
                                                     _%rest380363%_
                                                     _%bind380342%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e380364%_))
                                                           _%args380343%_))))
                                                 (_%__kont388370388371%_
                                                  (lambda ()
                                                    (_%lp380337%_
                                                     _%rest380363%_
                                                     _%bind380342%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e380364%_))
                                                           _%args380343%_))))
                                                 (_%__kont388372388373%_
                                                  (lambda ()
                                                    (let ((_%tmp380394%_
                                                           (let ((__tmp388686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp388686))))
              (_%lp380337%_
               _%rest380363%_
               (cons (cons _%tmp380394%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e380364%_))
                                 '()))
                     _%bind380342%_)
               (cons _%tmp380394%_ _%args380343%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx388366388367%_))
                                                 (let ((_%e380371380425%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx388366388367%_))))
                                                   (let ((_%tl380373380430%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e380371380425%_)))
                                                         (_%hd380372380428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e380371380425%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd380372380428%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd380372380428%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl380373380430%_))
                         (let ((_%e380374380433%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl380373380430%_))))
                           (let ((_%tl380376380438%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e380374380433%_)))
                                 (_%hd380375380436%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e380374380433%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl380376380438%_))
                                 (_%__kont388368388369%_)
                                 (_%__kont388372388373%_))))
                         (_%__kont388372388373%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd380372380428%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl380373380430%_))
                             (let ((_%e380380380410%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl380373380430%_))))
                               (let ((_%tl380382380415%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e380380380410%_)))
                                     (_%hd380381380413%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e380380380410%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl380382380415%_))
                                     (_%__kont388370388371%_)
                                     (_%__kont388372388373%_))))
                             (_%__kont388372388373%_))
                         (_%__kont388372388373%_)))
                 (_%__kont388372388373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont388372388373%_)))))))
                                 (if (pair? _%rest380344380352%_)
                                     (let ((_%hd380349380449%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest380344380352%_)))
                                           (_%tl380350380451%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest380344380352%_))))
                                       (let* ((_%e380454%_ _%hd380349380449%_)
                                              (_%rest380456%_
                                               _%tl380350380451%_))
                                         (_%K380348380446%_
                                          _%rest380456%_
                                          _%e380454%_)))
                                     (_%else380346380360%_))))))
                       _%hd380262380308%_
                       _%hd380259380300%_
                       _%hd380256380292%_
                       _%hd380253380284%_)
                      (_%g380243380268%_ _%g380244380271%_))))
              (_%g380243380268%_ _%g380244380271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g380243380268%_
                                               _%g380244380271%_))))
                                      (_%g380243380268%_ _%g380244380271%_))))
                              (_%g380243380268%_ _%g380244380271%_))))
                      (_%g380243380268%_ _%g380244380271%_)))))
          (_%g380242380458%_ _%stx380241%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self380079%_ _%stx380080%_)
        (letrec ((_%import-set-template380082%_
                  (lambda (_%in380185%_ _%phi380186%_)
                    (let ((_%iphi380188%_
                           (fx+ _%phi380186%_
                                (##direct-structure-ref
                                 _%in380185%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports380189%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in380185%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp380191%_ ((_%rest380193%_ _%imports380189%_)
                                         (_%r380194%_ '()))
                        (let* ((_%rest380195380203%_ _%rest380193%_)
                               (_%else380197380211%_ (lambda () _%r380194%_))
                               (_%K380199380228%_
                                (lambda (_%rest380214%_ _%in380215%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in380215%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi380188%_))
                                          (_%lp380191%_
                                           _%rest380214%_
                                           (cons _%in380215%_ _%r380194%_))
                                          (_%lp380191%_
                                           _%rest380214%_
                                           _%r380194%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in380215%_
                                             'gx#module-import::t))
                                          (let ((_%iphi380219%_
                                                 (fx+ _%phi380186%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in380215%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi380219%_))
                                                (_%lp380191%_
                                                 _%rest380214%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in380215%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r380194%_))
                                                (_%lp380191%_
                                                 _%rest380214%_
                                                 _%r380194%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in380215%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi380222%_
                                                     (fx+ _%iphi380188%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in380215%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi380222%_))
                                                    (_%lp380191%_
                                                     _%rest380214%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in380215%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r380194%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi380222%_))
                                                        (_%lp380191%_
                                                         _%rest380214%_
                                                         (let ((__tmp388687
                                                                (_%import-set-template380082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in380215%_
                         _%iphi380188%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r380194%_ __tmp388687)))
                (_%lp380191%_ _%rest380214%_ _%r380194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp380191%_
                                               _%rest380214%_
                                               _%r380194%_)))))))
                          (if (pair? _%rest380195380203%_)
                              (let ((_%hd380200380231%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest380195380203%_)))
                                    (_%tl380201380233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest380195380203%_))))
                                (let* ((_%in380236%_ _%hd380200380231%_)
                                       (_%rest380238%_ _%tl380201380233%_))
                                  (_%K380199380228%_
                                   _%rest380238%_
                                   _%in380236%_)))
                              (_%else380197380211%_))))))))
          (let* ((_%g380084380094%_
                  (lambda (_%g380085380091%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g380085380091%_))))
                 (_%g380083380182%_
                  (lambda (_%g380085380097%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g380085380097%_))
                        (let ((_%e380087380099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g380085380097%_))))
                          (let ((_%hd380088380102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e380087380099%_)))
                                (_%tl380089380104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e380087380099%_))))
                            ((lambda (_%g380086380107%_)
                               (let ((_%ht380118%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp380120%_ ((_%rest380122%_
                                                     _%g380086380107%_)
                                                    (_%loads380123%_ '()))
                                   (letrec ((_%K380125%_
                                             (lambda (_%ctx380175%_
                                                      _%rest380176%_)
                                               (let ((_%id380178%_
                                                      (##structure-ref
                                                       _%ctx380175%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht380118%_
                                                        _%id380178%_))
                                                     (_%lp380120%_
                                                      _%rest380176%_
                                                      _%loads380123%_)
                                                     (let ((_%rt380180%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id380178%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht380118%_
                                                          _%id380178%_
                                                          _%rt380180%_))
                                                       (_%lp380120%_
                                                        _%rest380176%_
                                                        (cons _%rt380180%_
                                                              _%loads380123%_))))))))
                                     (let* ((_%rest380126380134%_
                                             _%rest380122%_)
                                            (_%else380128380146%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp388689
                                                            (lambda (_%g380141380143%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g380141380143%_)))
                   (__tmp388688 (reverse _%loads380123%_)))
               (declare (not safe))
               (##map __tmp388689 __tmp388688)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K380130380163%_
                                             (lambda (_%rest380149%_
                                                      _%in380150%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in380150%_
                                                      'gx#module-context::t))
                                                   (_%K380125%_
                                                    _%in380150%_
                                                    _%rest380149%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in380150%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in380150%_
                               '3
                               '#f
                               '#f)))
                   (_%K380125%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in380150%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest380149%_)
                   (_%lp380120%_ _%rest380149%_ _%loads380123%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in380150%_
                      'gx#import-set::t))
                   (let ((_%phi380155%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in380150%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi380155%_)
                         (_%K380125%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in380150%_
                             '1
                             '#f
                             '#f))
                          _%rest380149%_)
                         (if (fxpositive? _%phi380155%_)
                             (let ((_%deps380159%_
                                    (_%import-set-template380082%_
                                     _%in380150%_
                                     '0)))
                               (_%lp380120%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest380149%_
                                   _%deps380159%_))
                                _%loads380123%_))
                             (_%lp380120%_ _%rest380149%_ _%loads380123%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx380080%_
                      _%in380150%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest380126380134%_)
                                           (let ((_%hd380131380166%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest380126380134%_)))
                                                 (_%tl380132380168%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest380126380134%_))))
                                             (let* ((_%in380171%_
                                                     _%hd380131380166%_)
                                                    (_%rest380173%_
                                                     _%tl380132380168%_))
                                               (_%K380130380163%_
                                                _%rest380173%_
                                                _%in380171%_)))
                                           (_%else380128380146%_)))))))
                             _%tl380089380104%_)))
                        (_%g380084380094%_ _%g380085380097%_)))))
            (_%g380083380182%_ _%stx380080%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self379893%_ _%stx379894%_)
        (letrec ((_%add-lift!379896%_
                  (lambda (_%expr380077%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr380077%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote379897%_
                  (lambda (_%id380074%_ _%marks380075%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id380074%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks380075%_
                                                        '()))))))))
                 (_%generate-simple379898%_
                  (lambda (_%stxq380069%_)
                    (let ((_%gid380071%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid380072%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq380069%_))))
                      (_%add-lift!379896%_
                       (cons 'define
                             (cons _%gid380071%_
                                   (cons (_%generate-syntax-quote379897%_
                                          _%qid380072%_
                                          ''())
                                         '()))))
                      (let ((__tmp388690
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp388690 _%stxq380069%_ _%gid380071%_))
                      _%gid380071%_)))
                 (_%generate-serialized379899%_
                  (lambda (_%stxq380059%_ _%marks380060%_)
                    (let* ((_%mark-refs380062%_
                            (map _%generate-mark379900%_ _%marks380060%_))
                           (_%gid380064%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid380066%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq380059%_))))
                      (_%add-lift!379896%_
                       (cons 'define
                             (cons _%gid380064%_
                                   (cons (_%generate-syntax-quote379897%_
                                          _%qid380066%_
                                          (cons 'list _%mark-refs380062%_))
                                         '()))))
                      (let ((__tmp388691
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp388691 _%stxq380059%_ _%gid380064%_))
                      _%gid380064%_)))
                 (_%generate-mark379900%_
                  (lambda (_%mark380044%_)
                    (let ((_%$e380046%_
                           (let ((__tmp388692
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp388692 _%mark380044%_))))
                      (if _%$e380046%_
                          _%$e380046%_
                          (let* ((_%gid380050%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr380052%_
                                  (_%serialize-mark379901%_ _%mark380044%_))
                                 (_%ctx380054%_
                                  (let ((__tmp388693
                                         (##structure-ref
                                          _%mark380044%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp388693)))
                                 (_%ctx-ref380056%_
                                  (if (eq? _%ctx380054%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref379902%_
                                                               _%ctx380054%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp388694
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp388694
                               _%mark380044%_
                               _%gid380050%_))
                            (_%add-lift!379896%_
                             (cons 'define
                                   (cons _%gid380050%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr380052%_ '()))
                   (cons _%ctx-ref380056%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid380050%_)))))
                 (_%serialize-mark379901%_
                  (lambda (_%mark379992%_)
                    (letrec ((_%quote-e379994%_
                              (lambda (_%sym380042%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym380042%_))
                                    _%sym380042%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym380042%_))))))
                      (let* ((_%mark379995380004%_ _%mark379992%_)
                             (_%E379997380007%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark379995380004%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K379998380019%_
                              (lambda (_%trace380010%_
                                       _%phi380011%_
                                       _%ctx380012%_
                                       _%subst380013%_)
                                (let ((_%subs380015%_
                                       (if _%subst380013%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst380013%_))
                                           '())))
                                  (cons _%phi380011%_
                                        (let ((__tmp388695
                                               (lambda (_%pair380017%_)
                                                 (cons (_%quote-e379994%_
                                                        (car _%pair380017%_))
                                                       (_%quote-e379994%_
                                                        (cdr _%pair380017%_))))))
                                          (declare (not safe))
                                          (##map __tmp388695
                                                 _%subs380015%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark379995380004%_
                               'gx#expander-mark::t))
                            (let* ((_%e379999380022%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark379995380004%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst380025%_ _%e379999380022%_)
                                   (_%e380000380027%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark379995380004%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx380030%_ _%e380000380027%_)
                                   (_%e380001380032%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark379995380004%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi380035%_ _%e380001380032%_)
                                   (_%e380002380037%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark379995380004%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace380040%_ _%e380002380037%_))
                              (_%K379998380019%_
                               _%trace380040%_
                               _%phi380035%_
                               _%ctx380030%_
                               _%subst380025%_))
                            (_%E379997380007%_))))))
                 (_%context-ref379902%_
                  (lambda (_%ctx379979%_)
                    (if (let ((__tmp388696
                               (##structure-ref
                                _%ctx379979%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp388696
                           'gx#module-context::t))
                        (let ((_%ctx-ref379981%_
                               (_%context-ref-nested379904%_ _%ctx379979%_))
                              (_%ctx-origin379982%_
                               (_%context-ref-origin379903%_ _%ctx379979%_))
                              (_%origin379983%_
                               (_%context-ref-origin379903%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin379983%_ _%ctx-origin379982%_)
                              (let ((_%ref379985%_
                                     (_%context-ref-nested379904%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp379987%_ ((_%ref379989%_
                                                    (cdr _%ref379985%_))
                                                   (_%ctx-ref379990%_
                                                    (cdr _%ctx-ref379981%_)))
                                  (if (and (pair? _%ref379989%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref379989%_))
                                                (car _%ctx-ref379990%_)))
                                      (_%lp379987%_
                                       (cdr _%ref379989%_)
                                       (cdr _%ctx-ref379990%_))
                                      (cons '#f _%ctx-ref379990%_))))
                              _%ctx-ref379981%_))
                        (let ((__tmp388697
                               (##structure-ref
                                _%ctx379979%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp388697)))))
                 (_%context-ref-origin379903%_
                  (lambda (_%ctx379971%_)
                    (let _%lp379973%_ ((_%ctx379975%_ _%ctx379971%_))
                      (let ((_%super379977%_
                             (##structure-ref
                              _%ctx379975%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super379977%_
                               'gx#module-context::t))
                            (_%lp379973%_ _%super379977%_)
                            _%ctx379975%_)))))
                 (_%context-ref-nested379904%_
                  (lambda (_%ctx379962%_)
                    (let _%lp379964%_ ((_%ctx379966%_ _%ctx379962%_)
                                       (_%r379967%_ '()))
                      (let ((_%super379969%_
                             (##structure-ref
                              _%ctx379966%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super379969%_
                               'gx#module-context::t))
                            (_%lp379964%_
                             _%super379969%_
                             (cons (car (##structure-ref
                                         _%ctx379966%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r379967%_))
                            (cons (let ((__tmp388698
                                         (##structure-ref
                                          _%ctx379966%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp388698))
                                  _%r379967%_)))))))
          (let* ((_%g379906379919%_
                  (lambda (_%g379907379916%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g379907379916%_))))
                 (_%g379905379959%_
                  (lambda (_%g379907379922%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g379907379922%_))
                        (let ((_%e379909379924%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g379907379922%_))))
                          (let ((_%hd379910379927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e379909379924%_)))
                                (_%tl379911379929%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e379909379924%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl379911379929%_))
                                (let ((_%e379912379932%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl379911379929%_))))
                                  (let ((_%hd379913379935%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e379912379932%_)))
                                        (_%tl379914379937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e379912379932%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl379914379937%_))
                                        ((lambda (_%g379908379940%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g379908379940%_))
                                               (let ((_%$e379953%_
                                                      (let ((__tmp388699
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp388699 _%g379908379940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e379953%_
                                                     _%$e379953%_
                                                     (let ((_%marks379957%_
                                                            (##direct-structure-ref
                                                             _%g379908379940%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks379957%_)
                                                           (_%generate-simple379898%_
                                                            _%g379908379940%_)
                                                           (_%generate-serialized379899%_
                                                            _%g379908379940%_
                                                            _%marks379957%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g379908379940%_))))
                                         _%hd379913379935%_)
                                        (_%g379906379919%_
                                         _%g379907379922%_))))
                                (_%g379906379919%_ _%g379907379922%_))))
                        (_%g379906379919%_ _%g379907379922%_)))))
            (_%g379905379959%_ _%stx379894%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self379825%_ _%stx379826%_)
        (let* ((_%g379828379845%_
                (lambda (_%g379829379842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g379829379842%_))))
               (_%g379827379890%_
                (lambda (_%g379829379848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g379829379848%_))
                      (let ((_%e379832379850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g379829379848%_))))
                        (let ((_%hd379833379853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e379832379850%_)))
                              (_%tl379834379855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e379832379850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl379834379855%_))
                              (let ((_%e379835379858%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl379834379855%_))))
                                (let ((_%hd379836379861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e379835379858%_)))
                                      (_%tl379837379863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e379835379858%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl379837379863%_))
                                      (let ((_%e379838379866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl379837379863%_))))
                                        (let ((_%hd379839379869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e379838379866%_)))
                                              (_%tl379840379871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e379838379866%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl379840379871%_))
                                              ((lambda (_%g379830379874%_
                                                        _%g379831379875%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g379831379875%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self379825%_
                              _%g379830379874%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd379839379869%_
                                               _%hd379836379861%_)
                                              (_%g379828379845%_
                                               _%g379829379848%_))))
                                      (_%g379828379845%_ _%g379829379848%_))))
                              (_%g379828379845%_ _%g379829379848%_))))
                      (_%g379828379845%_ _%g379829379848%_)))))
          (_%g379827379890%_ _%stx379826%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self379774%_ _%stx379775%_)
        (let* ((_%g379777379787%_
                (lambda (_%g379778379784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g379778379784%_))))
               (_%g379776379822%_
                (lambda (_%g379778379790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g379778379790%_))
                      (let ((_%e379780379792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g379778379790%_))))
                        (let ((_%hd379781379795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e379780379792%_)))
                              (_%tl379782379797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e379780379792%_))))
                          ((lambda (_%g379779379800%_)
                             (let* ((_%c-body379814%_
                                     (map (lambda (_%g379809379811%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self379774%_
                                               _%g379809379811%_)))
                                          _%g379779379800%_))
                                    (_%c-body379819%_
                                     (let ((__tmp388700
                                            (lambda (_%$obj379816%_)
                                              (not (eq? _%$obj379816%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp388700
                                        _%c-body379814%_))))
                               (cons '%#begin _%c-body379819%_)))
                           _%tl379782379797%_)))
                      (_%g379777379787%_ _%g379778379790%_)))))
          (_%g379776379822%_ _%stx379775%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self379679%_ _%stx379680%_)
        (let* ((_%g379682379692%_
                (lambda (_%g379683379689%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g379683379689%_))))
               (_%g379681379771%_
                (lambda (_%g379683379695%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g379683379695%_))
                      (let ((_%e379685379697%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g379683379695%_))))
                        (let ((_%hd379686379700%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e379685379697%_)))
                              (_%tl379687379702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e379685379697%_))))
                          ((lambda (_%g379684379705%_)
                             (let* ((_%phi379715%_
                                     (let ((__tmp388701
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp388701 '1)))
                                    (_%block379717%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self379679%_ 'state))
                                      _%phi379715%_))
                                    (_%compiled379720%_
                                     (let ((__tmp388702
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self379679%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g379684379705%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp388702
                                        gx#current-expander-phi
                                        _%phi379715%_)))
                                    (_%g379723379733%_
                                     (lambda (_%g379724379730%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g379724379730%_))))
                                    (_%g379722379768%_
                                     (lambda (_%g379724379736%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g379724379736%_))
                                           (let ((_%e379726379738%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g379724379736%_))))
                                             (let ((_%hd379727379741%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e379726379738%_)))
                                                   (_%tl379728379743%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e379726379738%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd379727379741%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd379727379741%_))
                                                       ((lambda (_%g379725379746%_)
                                                          (let ((_%c-body379763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj379760%_)
                                   (not (eq? _%$obj379760%_ '#!void)))
                                 _%g379725379746%_)))
                    (if _%block379717%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block379717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body379763%_))
                        (if (null? _%c-body379763%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body379763%_)))))
                _%tl379728379743%_)
               (_%g379723379733%_ _%g379724379736%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g379723379733%_
                                                    _%g379724379736%_))))
                                           (_%g379723379733%_
                                            _%g379724379736%_)))))
                               (_%g379722379768%_ _%compiled379720%_)))
                           _%tl379687379702%_)))
                      (_%g379682379692%_ _%g379683379695%_)))))
          (_%g379681379771%_ _%stx379680%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self379610%_ _%stx379611%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self379610%_ 'state)))
        (let* ((_%g379613379627%_
                (lambda (_%g379614379624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g379614379624%_))))
               (_%g379612379676%_
                (lambda (_%g379614379630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g379614379630%_))
                      (let ((_%e379617379632%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g379614379630%_))))
                        (let ((_%hd379618379635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e379617379632%_)))
                              (_%tl379619379637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e379617379632%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl379619379637%_))
                              (let ((_%e379620379640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl379619379637%_))))
                                (let ((_%hd379621379643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e379620379640%_)))
                                      (_%tl379622379645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e379620379640%_))))
                                  ((lambda (_%g379615379648%_
                                            _%g379616379649%_)
                                     (let ((_%key379662%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g379616379649%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key379662%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx379611%_
                                              _%g379616379649%_
                                              _%key379662%_)))
                                       (let* ((_%ctx379664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g379616379649%_)))
                                              (_%code379667%_
                                               (let ((__tmp388703
                                                      (lambda ()
                                                        (let ((__tmp388704
                                                               (##structure-ref
                                                                _%ctx379664%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self379610%_
                                                           __tmp388704)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp388703
                                                  gx#current-expander-context
                                                  _%ctx379664%_)))
                                              (_%rt379669%_
                                               (let ((__tmp388705
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp388705
                                                  _%ctx379664%_)))
                                              (_%loader379671%_
                                               (if _%rt379669%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt379669%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid379673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g379616379649%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self379610%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid379673%_
                                                     (cons _%code379667%_
                                                           _%loader379671%_))))))
                                   _%tl379622379645%_
                                   _%hd379621379643%_)))
                              (_%g379613379627%_ _%g379614379630%_))))
                      (_%g379613379627%_ _%g379614379630%_)))))
          (_%g379612379676%_ _%stx379611%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx379597%_ _%context-chain379598%_)
        (let _%lp379600%_ ((_%ctx379602%_ _%ctx379597%_) (_%path379603%_ '()))
          (let ((_%super379605%_
                 (##structure-ref _%ctx379602%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super379605%_ _%context-chain379598%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx379602%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path379603%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super379605%_
                       'gx#module-context::t))
                    (_%lp379600%_
                     _%super379605%_
                     (cons (car (##structure-ref
                                 _%ctx379602%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path379603%_))
                    (cons (let ((__tmp388706
                                 (##structure-ref
                                  _%ctx379602%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp388706))
                          _%path379603%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp379590%_ ((_%ctx379592%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r379593%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx379592%_ 'gx#module-context::t))
              (_%lp379590%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx379592%_ '3 '#f '#f))
               (cons _%ctx379592%_ _%r379593%_))
              _%r379593%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self379355%_ _%stx379356%_)
        (letrec* ((_%context-chain379358%_ (gxc#current-context-chain))
                  (_%make-import-spec379359%_
                   (lambda (_%in379527%_)
                     (let* ((_%in379528379540%_ _%in379527%_)
                            (_%E379530379543%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in379528379540%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K379531379553%_
                             (lambda (_%phi379546%_
                                      _%name379547%_
                                      _%src-name379548%_
                                      _%src-phi379549%_
                                      _%src-key379550%_
                                      _%src-ctx379551%_)
                               (cons _%phi379546%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name379547%_))
                                           (cons _%src-phi379549%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name379548%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in379528379540%_
                              'gx#module-import::t))
                           (let ((_%e379532379556%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in379528379540%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e379532379556%_
                                    'gx#module-export::t))
                                 (let* ((_%e379535379559%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e379532379556%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx379562%_ _%e379535379559%_)
                                        (_%e379536379564%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e379532379556%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key379567%_ _%e379536379564%_)
                                        (_%e379537379569%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e379532379556%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi379572%_ _%e379537379569%_)
                                        (_%e379538379574%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e379532379556%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name379577%_ _%e379538379574%_)
                                        (_%e379533379579%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in379528379540%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name379582%_ _%e379533379579%_)
                                        (_%e379534379584%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in379528379540%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi379587%_ _%e379534379584%_))
                                   (_%K379531379553%_
                                    _%phi379587%_
                                    _%name379582%_
                                    _%src-name379577%_
                                    _%src-phi379572%_
                                    _%src-key379567%_
                                    _%src-ctx379562%_))
                                 (_%E379530379543%_)))
                           (_%E379530379543%_)))))
                  (_%make-import-path379360%_
                   (lambda (_%ctx379525%_)
                     (gxc#generate-meta-import-path
                      _%ctx379525%_
                      _%context-chain379358%_)))
                  (_%make-import-spec-in379361%_
                   (lambda (_%ctx379522%_ _%in379523%_)
                     (cons 'spec:
                           (cons (_%make-import-path379360%_ _%ctx379522%_)
                                 (reverse _%in379523%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self379355%_ 'state)))
          (let* ((_%g379363379373%_
                  (lambda (_%g379364379370%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g379364379370%_))))
                 (_%g379362379519%_
                  (lambda (_%g379364379376%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g379364379376%_))
                        (let ((_%e379366379378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g379364379376%_))))
                          (let ((_%hd379367379381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e379366379378%_)))
                                (_%tl379368379383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e379366379378%_))))
                            ((lambda (_%g379365379386%_)
                               (let _%lp379397%_ ((_%rest379399%_
                                                   _%g379365379386%_)
                                                  (_%current-src379400%_ '#f)
                                                  (_%current-in379401%_ '())
                                                  (_%r379402%_ '()))
                                 (let* ((_%rest379403379411%_ _%rest379399%_)
                                        (_%else379405379421%_
                                         (lambda ()
                                           (let ((_%r379419%_
                                                  (if _%current-src379400%_
                                                      (cons (_%make-import-spec-in379361%_
                                                             _%current-src379400%_
                                                             _%current-in379401%_)
                                                            _%r379402%_)
                                                      _%r379402%_)))
                                             (cons '%#import
                                                   (reverse _%r379419%_)))))
                                        (_%K379407379507%_
                                         (lambda (_%rest379424%_ _%in379425%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in379425%_
                                                  'gx#module-import::t))
                                               (let* ((_%in379427379434%_
                                                       _%in379425%_)
                                                      (_%E379429379437%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in379427379434%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K379430379445%_
               (lambda (_%src-ctx379440%_)
                 (if (eq? _%current-src379400%_ _%src-ctx379440%_)
                     (_%lp379397%_
                      _%rest379424%_
                      _%current-src379400%_
                      (cons (_%make-import-spec379359%_ _%in379425%_)
                            _%current-in379401%_)
                      _%r379402%_)
                     (if _%current-src379400%_
                         (_%lp379397%_
                          _%rest379424%_
                          _%src-ctx379440%_
                          (cons (_%make-import-spec379359%_ _%in379425%_) '())
                          (cons (_%make-import-spec-in379361%_
                                 _%current-src379400%_
                                 _%current-in379401%_)
                                _%r379402%_))
                         (_%lp379397%_
                          _%rest379424%_
                          _%src-ctx379440%_
                          (cons (_%make-import-spec379359%_ _%in379425%_) '())
                          _%r379402%_)))))
              (_%e379431379448%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in379427379434%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e379431379448%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e379432379451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e379431379448%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx379454%_ _%e379432379451%_))
               (_%K379430379445%_ _%src-ctx379454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E379429379437%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in379425%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi379457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in379425%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src379459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in379425%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in379499%_
                                                           (let* ((_%g379460379469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path379360%_ _%src379459%_))
                          (_%E379463379473%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g379460379469%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K379465379489%_
                            (lambda (_%path379487%_) _%path379487%_))
                           (_%K379464379479%_
                            (lambda (_%path379477%_)
                              (cons 'in: _%path379477%_))))
                       (if (pair? _%g379460379469%_)
                           (let ((_%tl379467379494%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g379460379469%_)))
                                 (_%hd379466379492%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g379460379469%_))))
                             (if (null? _%tl379467379494%_)
                                 (let ((_%path379497%_ _%hd379466379492%_))
                                   (_%K379465379489%_ _%path379497%_))
                                 (let ((_%path379482%_ _%g379460379469%_))
                                   (_%K379464379479%_ _%path379482%_))))
                           (let ((_%path379482%_ _%g379460379469%_))
                             (_%K379464379479%_ _%path379482%_))))))
                  (_%r379501%_
                   (if _%current-src379400%_
                       (cons (_%make-import-spec-in379361%_
                              _%current-src379400%_
                              _%current-in379401%_)
                             _%r379402%_)
                       _%r379402%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp379397%_
                                                      _%rest379424%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi379457%_)
                                                                _%src-in379499%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi379457%_
                                    (cons _%src-in379499%_ '()))))
                    _%r379501%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in379425%_
                                                          'gx#module-context::t))
                                                       (let ((_%r379505%_
                                                              (if _%current-src379400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in379361%_
                                 _%current-src379400%_
                                 _%current-in379401%_)
                                _%r379402%_)
                          _%r379402%_)))
                 (_%lp379397%_
                  _%rest379424%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path379360%_ _%in379425%_))
                        _%r379505%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest379403379411%_)
                                       (let ((_%hd379408379510%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest379403379411%_)))
                                             (_%tl379409379512%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest379403379411%_))))
                                         (let* ((_%in379515%_
                                                 _%hd379408379510%_)
                                                (_%rest379517%_
                                                 _%tl379409379512%_))
                                           (_%K379407379507%_
                                            _%rest379517%_
                                            _%in379515%_)))
                                       (_%else379405379421%_)))))
                             _%tl379368379383%_)))
                        (_%g379363379373%_ _%g379364379376%_)))))
            (_%g379362379519%_ _%stx379356%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self379165%_ _%stx379166%_)
        (letrec* ((_%context-chain379168%_ (gxc#current-context-chain))
                  (_%make-import-path379169%_
                   (lambda (_%ctx379353%_)
                     (gxc#generate-meta-import-path
                      _%ctx379353%_
                      _%context-chain379168%_))))
          (let* ((_%g379171379181%_
                  (lambda (_%g379172379178%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g379172379178%_))))
                 (_%g379170379350%_
                  (lambda (_%g379172379184%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g379172379184%_))
                        (let ((_%e379174379186%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g379172379184%_))))
                          (let ((_%hd379175379189%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e379174379186%_)))
                                (_%tl379176379191%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e379174379186%_))))
                            ((lambda (_%g379173379194%_)
                               (let _%lp379205%_ ((_%rest379207%_
                                                   _%g379173379194%_)
                                                  (_%r379208%_ '()))
                                 (let* ((_%rest379209379217%_ _%rest379207%_)
                                        (_%else379211379225%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r379208%_))))
                                        (_%K379213379338%_
                                         (lambda (_%rest379228%_ _%out379229%_)
                                           (let* ((_%out379230379243%_
                                                   _%out379229%_)
                                                  (_%E379233379247%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out379230379243%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K379237379317%_
                                                    (lambda (_%name379313%_
                                                             _%phi379314%_
                                                             _%key379315%_)
                                                      (_%lp379205%_
                                                       _%rest379228%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi379314%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key379315%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name379313%_))
                                             '()))))
                     _%r379208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K379234379297%_
                                                    (lambda (_%phi379251%_
                                                             _%src379252%_)
                                                      (let* ((_%out379292%_
                                                              (if _%src379252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g379253379262%_
                                              (_%make-import-path379169%_
                                               _%src379252%_))
                                             (_%E379256379266%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g379253379262%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K379258379282%_
                                               (lambda (_%path379280%_)
                                                 _%path379280%_))
                                              (_%K379257379272%_
                                               (lambda (_%path379270%_)
                                                 (cons 'in: _%path379270%_))))
                                          (if (pair? _%g379253379262%_)
                                              (let ((_%tl379260379287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g379253379262%_)))
                                                    (_%hd379259379285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g379253379262%_))))
                                                (if (null? _%tl379260379287%_)
                                                    (let ((_%path379290%_
                                                           _%hd379259379285%_))
                                                      (_%K379258379282%_
                                                       _%path379290%_))
                                                    (let ((_%path379275%_
                                                           _%g379253379262%_))
                                                      (_%K379257379272%_
                                                       _%path379275%_))))
                                              (let ((_%path379275%_
                                                     _%g379253379262%_))
                                                (_%K379257379272%_
                                                 _%path379275%_)))))
                                      '()))
                          '#t))
                     (_%out379294%_
                      (if (fxzero? _%phi379251%_)
                          _%out379292%_
                          (cons 'phi:
                                (cons _%phi379251%_
                                      (cons _%out379292%_ '()))))))
                (_%lp379205%_
                 _%rest379228%_
                 (cons _%out379294%_ _%r379208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match379232379310%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out379230379243%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e379235379300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out379230379243%_
                               '1
                               '#f
                               '#f)))
                           (_%e379236379305%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out379230379243%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src379303%_ _%e379235379300%_)
                            (_%phi379308%_ _%e379236379305%_))
                        (_%K379234379297%_ _%phi379308%_ _%src379303%_)))
                    (_%E379233379247%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out379230379243%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e379238379320%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out379230379243%_
                        '1
                        '#f
                        '#f)))
                    (_%e379239379323%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out379230379243%_
                        '2
                        '#f
                        '#f)))
                    (_%e379240379328%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out379230379243%_
                        '3
                        '#f
                        '#f)))
                    (_%e379241379333%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out379230379243%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key379326%_ _%e379239379323%_)
                     (_%phi379331%_ _%e379240379328%_)
                     (_%name379336%_ _%e379241379333%_))
                 (_%K379237379317%_
                  _%name379336%_
                  _%phi379331%_
                  _%key379326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match379232379310%_))))))))
                                   (if (pair? _%rest379209379217%_)
                                       (let ((_%hd379214379341%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest379209379217%_)))
                                             (_%tl379215379343%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest379209379217%_))))
                                         (let* ((_%out379346%_
                                                 _%hd379214379341%_)
                                                (_%rest379348%_
                                                 _%tl379215379343%_))
                                           (_%K379213379338%_
                                            _%rest379348%_
                                            _%out379346%_)))
                                       (_%else379211379225%_)))))
                             _%tl379176379191%_)))
                        (_%g379171379181%_ _%g379172379184%_)))))
            (_%g379170379350%_ _%stx379166%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self379126%_ _%stx379127%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self379126%_ 'state)))
        (let* ((_%g379129379139%_
                (lambda (_%g379130379136%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g379130379136%_))))
               (_%g379128379162%_
                (lambda (_%g379130379142%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g379130379142%_))
                      (let ((_%e379132379144%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g379130379142%_))))
                        (let ((_%hd379133379147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e379132379144%_)))
                              (_%tl379134379149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e379132379144%_))))
                          ((lambda (_%g379131379152%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g379131379152%_)))
                           _%tl379134379149%_)))
                      (_%g379129379139%_ _%g379130379142%_)))))
          (_%g379128379162%_ _%stx379127%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self379001%_ _%stx379002%_)
        (letrec ((_%generate1379004%_
                  (lambda (_%id379121%_ _%eid379122%_)
                    (let ((_%eid379124%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid379122%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid379124%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx379002%_
                             _%eid379124%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id379121%_))
                            (cons _%eid379124%_ '()))))))
          (let* ((_%g379006379034%_
                  (lambda (_%g379007379031%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g379007379031%_))))
                 (_%g379005379118%_
                  (lambda (_%g379007379037%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g379007379037%_))
                        (let ((_%e379010379039%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g379007379037%_))))
                          (let ((_%hd379011379042%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e379010379039%_)))
                                (_%tl379012379044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e379010379039%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl379012379044%_))
                                (let ((_g388707_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl379012379044%_
                                          '0))))
                                  (begin
                                    (let ((_g388708_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g388707_)
                                                 (##values-length _g388707_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g388708_ 2)))
                                          (error "Context expects 2 values"
                                                 _g388708_)))
                                    (let ((_%target379013379047%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g388707_ 0)))
                                          (_%tl379015379049%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g388707_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl379015379049%_))
                                          (letrec ((_%loop379016379052%_
                                                    (lambda (_%hd379014379055%_
                                                             _%eid379020379057%_
                                                             _%id379021379058%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd379014379055%_))
                                                          (let ((_%e379017379060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd379014379055%_))))
                    (let ((_%lp-hd379018379063%_
                           (let ()
                             (declare (not safe))
                             (##car _%e379017379060%_)))
                          (_%lp-tl379019379065%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e379017379060%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd379018379063%_))
                          (let ((_%e379024379068%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd379018379063%_))))
                            (let ((_%hd379025379071%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e379024379068%_)))
                                  (_%tl379026379073%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e379024379068%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl379026379073%_))
                                  (let ((_%e379027379076%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl379026379073%_))))
                                    (let ((_%hd379028379079%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e379027379076%_)))
                                          (_%tl379029379081%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e379027379076%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl379029379081%_))
                                          (_%loop379016379052%_
                                           _%lp-tl379019379065%_
                                           (cons _%hd379028379079%_
                                                 _%eid379020379057%_)
                                           (cons _%hd379025379071%_
                                                 _%id379021379058%_))
                                          (_%g379006379034%_
                                           _%g379007379037%_))))
                                  (_%g379006379034%_ _%g379007379037%_))))
                          (_%g379006379034%_ _%g379007379037%_))))
                  (let ((_%eid379022379084%_ (reverse _%eid379020379057%_))
                        (_%id379023379085%_ (reverse _%id379021379058%_)))
                    ((lambda (_%g379008379087%_ _%g379009379088%_)
                       (cons '%#extern
                             (map _%generate1379004%_
                                  (let ((__tmp388709
                                         (lambda (_%g379103379106%_
                                                  _%g379104379108%_)
                                           (cons _%g379103379106%_
                                                 _%g379104379108%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp388709
                                     '()
                                     _%g379009379088%_))
                                  (let ((__tmp388710
                                         (lambda (_%g379110379113%_
                                                  _%g379111379115%_)
                                           (cons _%g379110379113%_
                                                 _%g379111379115%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp388710
                                     '()
                                     _%g379008379087%_)))))
                     _%eid379022379084%_
                     _%id379023379085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop379016379052%_
                                             _%target379013379047%_
                                             '()
                                             '()))
                                          (_%g379006379034%_
                                           _%g379007379037%_)))))
                                (_%g379006379034%_ _%g379007379037%_))))
                        (_%g379006379034%_ _%g379007379037%_)))))
            (_%g379005379118%_ _%stx379002%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self378790%_ _%stx378791%_)
        (letrec ((_%generate1378793%_
                  (lambda (_%id378995%_)
                    (let ((_%eid378997%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id378995%_)))
                          (_%ident378998%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id378995%_)))
                          (_%props378999%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id378995%_))))
                      (cons '%#define-runtime
                            (cons _%ident378998%_
                                  (cons _%eid378997%_ _%props378999%_))))))
                 (_%generate*378794%_
                  (lambda (_%all378963%_)
                    (let* ((_%all378964378972%_ _%all378963%_)
                           (_%else378966378980%_
                            (lambda () (cons '%#begin _%all378963%_)))
                           (_%K378968378985%_
                            (lambda (_%one378983%_) _%one378983%_)))
                      (if (pair? _%all378964378972%_)
                          (let ((_%hd378969378988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all378964378972%_)))
                                (_%tl378970378990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all378964378972%_))))
                            (let ((_%one378993%_ _%hd378969378988%_))
                              (if (null? _%tl378970378990%_)
                                  (_%K378968378985%_ _%one378993%_)
                                  (_%else378966378980%_))))
                          (_%else378966378980%_))))))
          (let* ((_%g378796378813%_
                  (lambda (_%g378797378810%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g378797378810%_))))
                 (_%g378795378960%_
                  (lambda (_%g378797378816%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g378797378816%_))
                        (let ((_%e378800378818%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g378797378816%_))))
                          (let ((_%hd378801378821%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e378800378818%_)))
                                (_%tl378802378823%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e378800378818%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl378802378823%_))
                                (let ((_%e378803378826%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl378802378823%_))))
                                  (let ((_%hd378804378829%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e378803378826%_)))
                                        (_%tl378805378831%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e378803378826%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl378805378831%_))
                                        (let ((_%e378806378834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl378805378831%_))))
                                          (let ((_%hd378807378837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e378806378834%_)))
                                                (_%tl378808378839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e378806378834%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl378808378839%_))
                                                ((lambda (_%g378798378842%_
                                                          _%g378799378843%_)
                                                   (let _%lp378859%_ ((_%rest378861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g378799378843%_)
                              (_%r378862%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx388445388446%_
                                                             _%rest378861%_)
                                                            (_%g378867378884%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx388445388446%_)))))
               (let ((_%__kont388447388448%_
                      (lambda (_%g378869378947%_)
                        (_%lp378859%_ _%g378869378947%_ _%r378862%_)))
                     (_%__kont388449388450%_
                      (lambda (_%g378874378920%_ _%g378875378921%_)
                        (_%lp378859%_
                         _%g378874378920%_
                         (cons (_%generate1378793%_ _%g378875378921%_)
                               _%r378862%_))))
                     (_%__kont388451388452%_
                      (lambda (_%g378879378896%_)
                        (_%generate*378794%_
                         (let ((__tmp388711
                                (cons (_%generate1378793%_ _%g378879378896%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp388711 _%r378862%_)))))
                     (_%__kont388453388454%_
                      (lambda ()
                        (_%generate*378794%_ (reverse! _%r378862%_)))))
                 (let ((_%g378865378907%_
                        (lambda ()
                          (let ((_%g378879378896%_ _%__stx388445388446%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g378879378896%_))
                                (_%__kont388451388452%_ _%g378879378896%_)
                                (_%__kont388453388454%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx388445388446%_))
                       (let ((_%e378870378936%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx388445388446%_))))
                         (let ((_%tl378872378941%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e378870378936%_)))
                               (_%hd378871378939%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e378870378936%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd378871378939%_))
                               (let ((_%e378873378944%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd378871378939%_))))
                                 (if (equal? _%e378873378944%_ '#f)
                                     (_%__kont388447388448%_
                                      _%tl378872378941%_)
                                     (_%__kont388449388450%_
                                      _%tl378872378941%_
                                      _%hd378871378939%_)))
                               (_%__kont388449388450%_
                                _%tl378872378941%_
                                _%hd378871378939%_))))
                       (let () (declare (not safe)) (_%g378865378907%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd378807378837%_
                                                 _%hd378804378829%_)
                                                (_%g378796378813%_
                                                 _%g378797378816%_))))
                                        (_%g378796378813%_
                                         _%g378797378816%_))))
                                (_%g378796378813%_ _%g378797378816%_))))
                        (_%g378796378813%_ _%g378797378816%_)))))
            (_%g378795378960%_ _%stx378791%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self378687%_ _%stx378688%_)
        (let* ((_%g378690378707%_
                (lambda (_%g378691378704%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g378691378704%_))))
               (_%g378689378787%_
                (lambda (_%g378691378710%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g378691378710%_))
                      (let ((_%e378694378712%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g378691378710%_))))
                        (let ((_%hd378695378715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e378694378712%_)))
                              (_%tl378696378717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e378694378712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl378696378717%_))
                              (let ((_%e378697378720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl378696378717%_))))
                                (let ((_%hd378698378723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e378697378720%_)))
                                      (_%tl378699378725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e378697378720%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl378699378725%_))
                                      (let ((_%e378700378728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl378699378725%_))))
                                        (let ((_%hd378701378731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e378700378728%_)))
                                              (_%tl378702378733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e378700378728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl378702378733%_))
                                              ((lambda (_%g378692378736%_
                                                        _%g378693378737%_)
                                                 (let* ((_%eid378752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g378693378737%_)))
                                                        (_%phi378754%_
                                                         (let ((__tmp388712
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp388712 '1)))
                (_%block378756%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self378687%_ 'state))
                  _%phi378754%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g378759378766%_
                                                           (lambda (_%g378760378763%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g378760378763%_))))
                  (_%g378758378784%_
                   (lambda (_%g378760378769%_)
                     ((lambda (_%g378761378771%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self378687%_ 'state))
                         _%phi378754%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g378761378771%_
                                     (cons _%g378692378736%_ '())))))
                      _%g378760378769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g378758378784%_
                                                      _%eid378752%_))
                                                   (if _%block378756%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block378756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g378693378737%_))
                                             (cons _%eid378752%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g378693378737%_))
                           (cons _%eid378752%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd378701378731%_
                                               _%hd378698378723%_)
                                              (_%g378690378707%_
                                               _%g378691378710%_))))
                                      (_%g378690378707%_ _%g378691378710%_))))
                              (_%g378690378707%_ _%g378691378710%_))))
                      (_%g378690378707%_ _%g378691378710%_)))))
          (_%g378689378787%_ _%stx378688%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self378619%_ _%stx378620%_)
        (let* ((_%g378622378639%_
                (lambda (_%g378623378636%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g378623378636%_))))
               (_%g378621378684%_
                (lambda (_%g378623378642%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g378623378642%_))
                      (let ((_%e378626378644%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g378623378642%_))))
                        (let ((_%hd378627378647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e378626378644%_)))
                              (_%tl378628378649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e378626378644%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl378628378649%_))
                              (let ((_%e378629378652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl378628378649%_))))
                                (let ((_%hd378630378655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e378629378652%_)))
                                      (_%tl378631378657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e378629378652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl378631378657%_))
                                      (let ((_%e378632378660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl378631378657%_))))
                                        (let ((_%hd378633378663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e378632378660%_)))
                                              (_%tl378634378665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e378632378660%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl378634378665%_))
                                              ((lambda (_%g378624378668%_
                                                        _%g378625378669%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g378625378669%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g378624378668%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd378633378663%_
                                               _%hd378630378655%_)
                                              (_%g378622378639%_
                                               _%g378623378642%_))))
                                      (_%g378622378639%_ _%g378623378642%_))))
                              (_%g378622378639%_ _%g378623378642%_))))
                      (_%g378622378639%_ _%g378623378642%_)))))
          (_%g378621378684%_ _%stx378620%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self378616%_ _%stx378617%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self378616%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx378617%_)
        (gxc#generate-meta-define-values% _%self378616%_ _%stx378617%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self378613%_ _%stx378614%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self378613%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx378614%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp388714 (list)) (__tmp388713 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp388714
         '(src n open blocks)
         __tmp388713
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args378610%_
        (apply make-instance gxc#meta-state::t _%$args378610%_)))
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
      (lambda (_%self378596%_ _%ctx378597%_)
        (let ((_%self378600%_ _%self378596%_))
          (if (let ((__tmp388715
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self378600%_))))
                (declare (not safe))
                (##fx< '4 __tmp388715))
              (begin
                (let ((__tmp388716
                       (let ((__tmp388717
                              (##structure-ref
                               _%ctx378597%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp388717))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self378600%_
                   __tmp388716
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self378600%_ '1 '2 '#f '#f))
                (let ((__tmp388718
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self378600%_
                   __tmp388718
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self378600%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp388719
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self378600%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self378600%_
                       '4
                       __tmp388719))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp388721 (list)) (__tmp388720 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp388721
         '(ctx phi n code)
         __tmp388720
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args378471%_
        (apply make-instance gxc#meta-state-block::t _%$args378471%_)))
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
      (lambda (_%state378431%_ _%phi378432%_)
        (let* ((_%state378433378441%_ _%state378431%_)
               (_%E378435378444%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state378433378441%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K378436378453%_
                (lambda (_%open378447%_ _%n378448%_ _%src378449%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open378447%_ _%phi378432%_))
                      '#f
                      (let ((_%block-ref378451%_
                             (let ((__tmp388722 (number->string _%n378448%_)))
                               (declare (not safe))
                               (##string-append
                                _%src378449%_
                                '"~"
                                __tmp388722))))
                        (##structure-set!
                         _%state378431%_
                         (let () (declare (not safe)) (##fx+ _%n378448%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp388723
                               (let ((__tmp388724
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp388724
                                  _%phi378432%_
                                  _%n378448%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open378447%_ _%phi378432%_ __tmp388723))
                        _%block-ref378451%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state378433378441%_
                 'gxc#meta-state::t))
              (let* ((_%e378437378456%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state378433378441%_
                         '1
                         '#f
                         '#f)))
                     (_%src378459%_ _%e378437378456%_)
                     (_%e378438378461%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state378433378441%_
                         '2
                         '#f
                         '#f)))
                     (_%n378464%_ _%e378438378461%_)
                     (_%e378439378466%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state378433378441%_
                         '3
                         '#f
                         '#f)))
                     (_%open378469%_ _%e378439378466%_))
                (_%K378436378453%_ _%open378469%_ _%n378464%_ _%src378459%_))
              (_%E378435378444%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state378425%_ _%phi378426%_ _%stx378427%_)
        (let ((_%block378429%_
               (let ((__tmp388725
                      (##structure-ref
                       _%state378425%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp388725 _%phi378426%_))))
          (##structure-set!
           _%block378429%_
           (cons _%stx378427%_
                 (##structure-ref
                  _%block378429%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state378419%_)
        (##structure-set!
         _%state378419%_
         (let ((__tmp388728
                (lambda (_%_378421%_ _%block378422%_ _%r378423%_)
                  (cons _%block378422%_ _%r378423%_)))
               (__tmp388727
                (##structure-ref _%state378419%_ '4 gxc#meta-state::t '#f))
               (__tmp388726
                (##structure-ref _%state378419%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp388728 __tmp388727 __tmp388726))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state378419%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state378372%_)
        (gxc#meta-state-end-phi! _%state378372%_)
        (let ((__tmp388730
               (lambda (_%block378374%_ _%r378375%_)
                 (let* ((_%block378376378385%_ _%block378374%_)
                        (_%E378378378388%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block378376378385%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K378379378396%_
                         (lambda (_%code378391%_
                                  _%n378392%_
                                  _%phi378393%_
                                  _%ctx378394%_)
                           (if (null? _%code378391%_)
                               _%r378375%_
                               (cons (cons _%ctx378394%_
                                           (cons _%phi378393%_
                                                 (cons _%n378392%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code378391%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r378375%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block378376378385%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e378380378399%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block378376378385%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx378402%_ _%e378380378399%_)
                              (_%e378381378404%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block378376378385%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi378407%_ _%e378381378404%_)
                              (_%e378382378409%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block378376378385%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n378412%_ _%e378382378409%_)
                              (_%e378383378414%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block378376378385%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code378417%_ _%e378383378414%_))
                         (_%K378379378396%_
                          _%code378417%_
                          _%n378412%_
                          _%phi378407%_
                          _%ctx378402%_))
                       (_%E378378378388%_)))))
              (__tmp388729
               (##structure-ref _%state378372%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp388730 '() __tmp388729))))
    (define gxc#collect-expression-refs
      (lambda (_%stx378368%_)
        (let ((_%ht378370%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht378370%_ _%stx378368%_)
          _%ht378370%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self378311%_ _%stx378312%_)
        (let* ((_%g378314378327%_
                (lambda (_%g378315378324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g378315378324%_))))
               (_%g378313378365%_
                (lambda (_%g378315378330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g378315378330%_))
                      (let ((_%e378317378332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g378315378330%_))))
                        (let ((_%hd378318378335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e378317378332%_)))
                              (_%tl378319378337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e378317378332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl378319378337%_))
                              (let ((_%e378320378340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl378319378337%_))))
                                (let ((_%hd378321378343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e378320378340%_)))
                                      (_%tl378322378345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e378320378340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl378322378345%_))
                                      ((lambda (_%g378316378348%_)
                                         (let* ((_%bind378360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g378316378348%_)))
                                                (_%eid378362%_
                                                 (if _%bind378360%_
                                                     (##structure-ref
                                                      _%bind378360%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g378316378348%_))))
                                                (__tmp388731
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self378311%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp388731
                                            _%eid378362%_
                                            _%eid378362%_)))
                                       _%hd378321378343%_)
                                      (_%g378314378327%_ _%g378315378330%_))))
                              (_%g378314378327%_ _%g378315378330%_))))
                      (_%g378314378327%_ _%g378315378330%_)))))
          (_%g378313378365%_ _%stx378312%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self378238%_ _%stx378239%_)
        (let* ((_%g378241378258%_
                (lambda (_%g378242378255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g378242378255%_))))
               (_%g378240378308%_
                (lambda (_%g378242378261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g378242378261%_))
                      (let ((_%e378245378263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g378242378261%_))))
                        (let ((_%hd378246378266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e378245378263%_)))
                              (_%tl378247378268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e378245378263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl378247378268%_))
                              (let ((_%e378248378271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl378247378268%_))))
                                (let ((_%hd378249378274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e378248378271%_)))
                                      (_%tl378250378276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e378248378271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl378250378276%_))
                                      (let ((_%e378251378279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl378250378276%_))))
                                        (let ((_%hd378252378282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e378251378279%_)))
                                              (_%tl378253378284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e378251378279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl378253378284%_))
                                              ((lambda (_%g378243378287%_
                                                        _%g378244378288%_)
                                                 (let* ((_%bind378303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g378244378288%_)))
                                                        (_%eid378305%_
                                                         (if _%bind378303%_
                                                             (##structure-ref
                                                              _%bind378303%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g378244378288%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp388732
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self378238%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp388732
                                                      _%eid378305%_
                                                      _%eid378305%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self378238%_
                                                      _%g378243378287%_))))
                                               _%hd378252378282%_
                                               _%hd378249378274%_)
                                              (_%g378241378258%_
                                               _%g378242378261%_))))
                                      (_%g378241378258%_ _%g378242378261%_))))
                              (_%g378241378258%_ _%g378242378261%_))))
                      (_%g378241378258%_ _%g378242378261%_)))))
          (_%g378240378308%_ _%stx378239%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self378195%_ _%stx378196%_)
        (let* ((_%g378198378208%_
                (lambda (_%g378199378205%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g378199378205%_))))
               (_%g378197378235%_
                (lambda (_%g378199378211%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g378199378211%_))
                      (let ((_%e378201378213%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g378199378211%_))))
                        (let ((_%hd378202378216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e378201378213%_)))
                              (_%tl378203378218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e378201378213%_))))
                          ((lambda (_%g378200378221%_)
                             (let ((__tmp388733
                                    (lambda (_%g378230378232%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self378195%_
                                         _%g378230378232%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp388733 _%g378200378221%_)))
                           _%tl378203378218%_)))
                      (_%g378198378208%_ _%g378199378211%_)))))
          (_%g378197378235%_ _%stx378196%_))))
    (define gxc#count-values-single%
      (lambda (_%self378192%_ _%stx378193%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self378060%_ _%stx378061%_)
        (let* ((_%__stx388475388476%_ _%stx378061%_)
               (_%g378064378093%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx388475388476%_)))))
          (let ((_%__kont388477388478%_
                 (lambda (_%g378066378159%_ _%g378067378160%_)
                   (length (let ((__tmp388734
                                  (lambda (_%g378181378184%_ _%g378182378186%_)
                                    (cons _%g378181378184%_
                                          _%g378182378186%_))))
                             (declare (not safe))
                             (foldr__0 __tmp388734 '() _%g378066378159%_)))))
                (_%__kont388481388482%_ (lambda () '#f)))
            (let ((_%__match388520388521%_
                   (lambda (_%e378068378105%_
                            _%hd378069378108%_
                            _%tl378070378110%_
                            _%e378071378113%_
                            _%hd378072378116%_
                            _%tl378073378118%_
                            _%e378074378121%_
                            _%hd378075378124%_
                            _%tl378076378126%_
                            _%e378077378129%_
                            _%hd378078378132%_
                            _%tl378079378134%_
                            _%__splice388479388480%_
                            _%target378080378137%_
                            _%tl378082378139%_)
                     (letrec ((_%loop378083378142%_
                               (lambda (_%hd378081378145%_
                                        _%rand378087378147%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd378081378145%_))
                                     (let ((_%e378084378149%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd378081378145%_))))
                                       (let ((_%lp-tl378086378154%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e378084378149%_)))
                                             (_%lp-hd378085378152%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e378084378149%_))))
                                         (_%loop378083378142%_
                                          _%lp-tl378086378154%_
                                          (cons _%lp-hd378085378152%_
                                                _%rand378087378147%_))))
                                     (let ((_%rand378088378157%_
                                            (reverse _%rand378087378147%_)))
                                       (let ((_%g378066378159%_
                                              _%rand378088378157%_)
                                             (_%g378067378160%_
                                              _%hd378078378132%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g378067378160%_
                                                'values))
                                             (_%__kont388477388478%_
                                              _%g378066378159%_
                                              _%g378067378160%_)
                                             (_%__kont388481388482%_))))))))
                       (_%loop378083378142%_ _%target378080378137%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx388475388476%_))
                  (let ((_%e378068378105%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx388475388476%_))))
                    (let ((_%tl378070378110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e378068378105%_)))
                          (_%hd378069378108%_
                           (let ()
                             (declare (not safe))
                             (##car _%e378068378105%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl378070378110%_))
                          (let ((_%e378071378113%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl378070378110%_))))
                            (let ((_%tl378073378118%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e378071378113%_)))
                                  (_%hd378072378116%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e378071378113%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd378072378116%_))
                                  (let ((_%e378074378121%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd378072378116%_))))
                                    (let ((_%tl378076378126%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e378074378121%_)))
                                          (_%hd378075378124%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e378074378121%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd378075378124%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd378075378124%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl378076378126%_))
                                                  (let ((_%e378077378129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl378076378126%_))))
                                                    (let ((_%tl378079378134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e378077378129%_)))
                                                          (_%hd378078378132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e378077378129%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl378079378134%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl378073378118%_))
                      (let ((_%__splice388479388480%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl378073378118%_
                                '0))))
                        (let ((_%tl378082378139%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice388479388480%_ '1)))
                              (_%target378080378137%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice388479388480%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl378082378139%_))
                              (_%__match388520388521%_
                               _%e378068378105%_
                               _%hd378069378108%_
                               _%tl378070378110%_
                               _%e378071378113%_
                               _%hd378072378116%_
                               _%tl378073378118%_
                               _%e378074378121%_
                               _%hd378075378124%_
                               _%tl378076378126%_
                               _%e378077378129%_
                               _%hd378078378132%_
                               _%tl378079378134%_
                               _%__splice388479388480%_
                               _%target378080378137%_
                               _%tl378082378139%_)
                              (_%__kont388481388482%_))))
                      (_%__kont388481388482%_))
                  (_%__kont388481388482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont388481388482%_))
                                              (_%__kont388481388482%_))
                                          (_%__kont388481388482%_))))
                                  (_%__kont388481388482%_))))
                          (_%__kont388481388482%_))))
                  (_%__kont388481388482%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self377965%_ _%stx377966%_)
        (let* ((_%g377968377989%_
                (lambda (_%g377969377986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g377969377986%_))))
               (_%g377967378057%_
                (lambda (_%g377969377992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g377969377992%_))
                      (let ((_%e377973377994%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g377969377992%_))))
                        (let ((_%hd377974377997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e377973377994%_)))
                              (_%tl377975377999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e377973377994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl377975377999%_))
                              (let ((_%e377976378002%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl377975377999%_))))
                                (let ((_%hd377977378005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e377976378002%_)))
                                      (_%tl377978378007%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e377976378002%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl377978378007%_))
                                      (let ((_%e377979378010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl377978378007%_))))
                                        (let ((_%hd377980378013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e377979378010%_)))
                                              (_%tl377981378015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e377979378010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl377981378015%_))
                                              (let ((_%e377982378018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl377981378015%_))))
                                                (let ((_%hd377983378021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e377982378018%_)))
                                                      (_%tl377984378023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e377982378018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl377984378023%_))
                                                      ((lambda (_%g377970378026%_
                                                                _%g377971378027%_
                                                                _%g377972378028%_)
                                                         (let ((_%c1378045378047%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self377965%_
                           _%g377971378027%_))))
                   (if _%c1378045378047%_
                       (let* ((_%c1378049%_ _%c1378045378047%_)
                              (_%c2378050378052%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self377965%_
                                  _%g377970378026%_))))
                         (if _%c2378050378052%_
                             (let ((_%c2378054%_ _%c2378050378052%_))
                               (if (fx= _%c1378049%_ _%c2378054%_)
                                   _%c1378049%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd377983378021%_
               _%hd377980378013%_
               _%hd377977378005%_)
              (_%g377968377989%_ _%g377969377992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g377968377989%_
                                               _%g377969377992%_))))
                                      (_%g377968377989%_ _%g377969377992%_))))
                              (_%g377968377989%_ _%g377969377992%_))))
                      (_%g377968377989%_ _%g377969377992%_)))))
          (_%g377967378057%_ _%stx377966%_))))))
