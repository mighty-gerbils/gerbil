(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1756156301)
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
        (letrec ((_%hash-e155969%_
                  (lambda (_%id155971%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id155971%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e155969%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp157356 (list gxc#::void::t))
            (__tmp157355 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp157356
         '()
         __tmp157355
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args155965%_
        (apply make-instance gxc#::collect-bindings::t _%$args155965%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp157357
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
        (__make-promise __tmp157357)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx155957%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self155960%_
                (let ((__obj157331
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj157331))
               (__tmp157358
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155960%_ _%stx155957%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157358
           gxc#current-compile-method
           _%self155960%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp157360 (list gxc#::void::t))
            (__tmp157359 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp157360
         '(modules)
         __tmp157359
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args155954%_
        (apply make-instance gxc#::lift-modules::t _%$args155954%_)))
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
      (let ((__tmp157361
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
        (__make-promise __tmp157361)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords155928%_ _%modules155925155929%_ _%stx155931%_)
        (let ((_%modules155934%_
               (if (eq? _%modules155925155929%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules155925155929%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self155936%_
                  (let ((__obj157333
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157333
                       _%modules155934%_
                       '1
                       '#f
                       '#f))
                    __obj157333))
                 (__tmp157362
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155936%_ _%stx155931%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157362
             gxc#current-compile-method
             _%self155936%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords155943%_ . _%args155944%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords155943%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155943%_
                  'modules:
                  absent-value))
               _%args155944%_)))
    (define gxc#apply-lift-modules
      (lambda _%args155926155950%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args155926155950%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp157364 (list)) (__tmp157363 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp157364
         '()
         __tmp157363
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args155921%_
        (apply make-instance gxc#::find-runtime-code::t _%$args155921%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp157365
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
        (__make-promise __tmp157365)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx155913%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self155916%_
                (let ((__obj157335
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj157335))
               (__tmp157366
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155916%_ _%stx155913%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157366
           gxc#current-compile-method
           _%self155916%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp157368 (list gxc#::false::t))
            (__tmp157367 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp157368
         '()
         __tmp157367
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args155910%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args155910%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp157369
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
        (__make-promise __tmp157369)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx155902%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self155905%_
                (let ((__obj157337
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj157337))
               (__tmp157370
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155905%_ _%stx155902%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157370
           gxc#current-compile-method
           _%self155905%_))))
    (define gxc#::count-values::t
      (let ((__tmp157372 (list gxc#::false-expression::t))
            (__tmp157371 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp157372
         '()
         __tmp157371
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args155899%_
        (apply make-instance gxc#::count-values::t _%$args155899%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp157373
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
        (__make-promise __tmp157373)))
    (define gxc#apply-count-values
      (lambda (_%stx155891%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self155894%_
                (let ((__obj157339
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj157339))
               (__tmp157374
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155894%_ _%stx155891%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157374
           gxc#current-compile-method
           _%self155894%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp157375 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp157375
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args155888%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args155888%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp157376
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
        (__make-promise __tmp157376)))
    (define gxc#::generate-loader::t
      (let ((__tmp157378 (list gxc#::generate-runtime-empty::t))
            (__tmp157377 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp157378
         '()
         __tmp157377
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args155884%_
        (apply make-instance gxc#::generate-loader::t _%$args155884%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp157379
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
        (__make-promise __tmp157379)))
    (define gxc#apply-generate-loader
      (lambda (_%stx155876%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self155879%_
                (let ((__obj157342
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj157342))
               (__tmp157380
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155879%_ _%stx155876%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157380
           gxc#current-compile-method
           _%self155879%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp157381 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp157381
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args155873%_
        (apply make-instance gxc#::generate-runtime::t _%$args155873%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp157382
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
        (__make-promise __tmp157382)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx155865%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self155868%_
                (let ((__obj157344
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj157344))
               (__tmp157383
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155868%_ _%stx155865%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157383
           gxc#current-compile-method
           _%self155868%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp157385 (list gxc#::generate-runtime::t))
            (__tmp157384 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp157385
         '()
         __tmp157384
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args155862%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args155862%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp157386
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
        (__make-promise __tmp157386)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx155854%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self155857%_
                (let ((__obj157346
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj157346))
               (__tmp157387
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155857%_ _%stx155854%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157387
           gxc#current-compile-method
           _%self155857%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp157388 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp157388
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args155851%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args155851%_)))
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
      (let ((__tmp157389
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
        (__make-promise __tmp157389)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords155825%_ _%table155822155826%_ _%stx155828%_)
        (let ((_%table155831%_
               (if (eq? _%table155822155826%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table155822155826%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self155833%_
                  (let ((__obj157348
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157348
                       _%table155831%_
                       '1
                       '#f
                       '#f))
                    __obj157348))
                 (__tmp157390
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155833%_ _%stx155828%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157390
             gxc#current-compile-method
             _%self155833%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords155840%_ . _%args155841%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords155840%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155840%_
                  'table:
                  absent-value))
               _%args155841%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args155823155847%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args155823155847%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp157392 (list gxc#::void-expression::t))
            (__tmp157391 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp157392
         '(state)
         __tmp157391
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args155818%_
        (apply make-instance gxc#::generate-meta::t _%$args155818%_)))
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
      (let ((__tmp157393
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
        (__make-promise __tmp157393)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords155792%_ _%state155789155793%_ _%stx155795%_)
        (let ((_%state155798%_
               (if (eq? _%state155789155793%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state155789155793%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self155800%_
                  (let ((__obj157350
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157350
                       _%state155798%_
                       '1
                       '#f
                       '#f))
                    __obj157350))
                 (__tmp157394
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155800%_ _%stx155795%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157394
             gxc#current-compile-method
             _%self155800%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords155807%_ . _%args155808%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords155807%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155807%_
                  'state:
                  absent-value))
               _%args155808%_)))
    (define gxc#apply-generate-meta
      (lambda _%args155790155814%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args155790155814%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp157396 (list)) (__tmp157395 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp157396
         '(state)
         __tmp157395
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args155785%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args155785%_)))
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
      (let ((__tmp157397
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
        (__make-promise __tmp157397)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords155759%_ _%state155756155760%_ _%stx155762%_)
        (let ((_%state155765%_
               (if (eq? _%state155756155760%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state155756155760%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self155767%_
                  (let ((__obj157352
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157352
                       _%state155765%_
                       '1
                       '#f
                       '#f))
                    __obj157352))
                 (__tmp157398
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155767%_ _%stx155762%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157398
             gxc#current-compile-method
             _%self155767%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords155774%_ . _%args155775%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords155774%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155774%_
                  'state:
                  absent-value))
               _%args155775%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args155757155781%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args155757155781%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self155685%_ _%stx155686%_)
        (let* ((_%g155688155705%_
                (lambda (_%g155689155702%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155689155702%_))))
               (_%g155687155752%_
                (lambda (_%g155689155708%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155689155708%_))
                      (let ((_%e155692155710%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155689155708%_))))
                        (let ((_%hd155693155713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155692155710%_)))
                              (_%tl155694155715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155692155710%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155694155715%_))
                              (let ((_%e155695155718%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155694155715%_))))
                                (let ((_%hd155696155721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155695155718%_)))
                                      (_%tl155697155723%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155695155718%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155697155723%_))
                                      (let ((_%e155698155726%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155697155723%_))))
                                        (let ((_%hd155699155729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155698155726%_)))
                                              (_%tl155700155731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155698155726%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155700155731%_))
                                              ((lambda (_%L155734%_
                                                        _%L155735%_)
                                                 (let ((__tmp157399
                                                        (lambda (_%bind155750%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind155750%_))
                      (gxc#add-module-binding! _%bind155750%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp157399
                                                    _%L155735%_)))
                                               _%hd155699155729%_
                                               _%hd155696155721%_)
                                              (_%g155688155705%_
                                               _%g155689155708%_))))
                                      (_%g155688155705%_ _%g155689155708%_))))
                              (_%g155688155705%_ _%g155689155708%_))))
                      (_%g155688155705%_ _%g155689155708%_)))))
          (_%g155687155752%_ _%stx155686%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self155617%_ _%stx155618%_)
        (let* ((_%g155620155637%_
                (lambda (_%g155621155634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155621155634%_))))
               (_%g155619155682%_
                (lambda (_%g155621155640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155621155640%_))
                      (let ((_%e155624155642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155621155640%_))))
                        (let ((_%hd155625155645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155624155642%_)))
                              (_%tl155626155647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155624155642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155626155647%_))
                              (let ((_%e155627155650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155626155647%_))))
                                (let ((_%hd155628155653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155627155650%_)))
                                      (_%tl155629155655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155627155650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155629155655%_))
                                      (let ((_%e155630155658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155629155655%_))))
                                        (let ((_%hd155631155661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155630155658%_)))
                                              (_%tl155632155663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155630155658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155632155663%_))
                                              ((lambda (_%L155666%_
                                                        _%L155667%_)
                                                 (gxc#add-module-binding!
                                                  _%L155667%_
                                                  '#t))
                                               _%hd155631155661%_
                                               _%hd155628155653%_)
                                              (_%g155620155637%_
                                               _%g155621155640%_))))
                                      (_%g155620155637%_ _%g155621155640%_))))
                              (_%g155620155637%_ _%g155621155640%_))))
                      (_%g155620155637%_ _%g155621155640%_)))))
          (_%g155619155682%_ _%stx155618%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self155559%_ _%stx155560%_)
        (let* ((_%g155562155576%_
                (lambda (_%g155563155573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155563155573%_))))
               (_%g155561155614%_
                (lambda (_%g155563155579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155563155579%_))
                      (let ((_%e155566155581%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155563155579%_))))
                        (let ((_%hd155567155584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155566155581%_)))
                              (_%tl155568155586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155566155581%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155568155586%_))
                              (let ((_%e155569155589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155568155586%_))))
                                (let ((_%hd155570155592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155569155589%_)))
                                      (_%tl155571155594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155569155589%_))))
                                  ((lambda (_%L155597%_ _%L155598%_)
                                     (let ((_%ctx155611%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L155598%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self155559%_
                                           'modules))
                                        (cons _%ctx155611%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self155559%_
                                                        'modules)))))
                                       (let ((__tmp157400
                                              (lambda ()
                                                (let ((__tmp157401
                                                       (##structure-ref
                                                        _%ctx155611%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155559%_
                                                   __tmp157401)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp157400
                                          gx#current-expander-context
                                          _%ctx155611%_))))
                                   _%tl155571155594%_
                                   _%hd155570155592%_)))
                              (_%g155562155576%_ _%g155563155579%_))))
                      (_%g155562155576%_ _%g155563155579%_)))))
          (_%g155561155614%_ _%stx155560%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls155512155514%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls155512155514%_
              (let ((_%decls155517%_ _%decls155512155514%_))
                (let _%lp155519%_ ((_%rest155521%_ _%decls155517%_))
                  (let* ((_%rest155522155530%_ _%rest155521%_)
                         (_%else155524155538%_ (lambda () '#f))
                         (_%K155526155547%_
                          (lambda (_%decls155541%_ _%decl155542%_)
                            (if (equal? _%decl155542%_ '(not safe))
                                '#t
                                (if (equal? _%decl155542%_ '(safe))
                                    '#f
                                    (_%lp155519%_ _%decls155541%_))))))
                    (if (pair? _%rest155522155530%_)
                        (let ((_%hd155527155550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest155522155530%_)))
                              (_%tl155528155552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest155522155530%_))))
                          (let* ((_%decl155555%_ _%hd155527155550%_)
                                 (_%decls155557%_ _%tl155528155552%_))
                            (_%K155526155547%_
                             _%decls155557%_
                             _%decl155555%_)))
                        (_%else155524155538%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id155506%_ _%syntax?155507%_)
        (let ((_%eid155509%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id155506%_))
                '1
                gx#binding::t
                '#f))
              (_%ht155510%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid155509%_))
              '#!void
              (let ((__tmp157402
                     (let ((__tmp157403
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid155509%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp157403 _%syntax?155507%_))))
                (declare (not safe))
                (hash-put! _%ht155510%_ _%eid155509%_ __tmp157402))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id155504%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id155504%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key155459%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key155459%_))
            _%key155459%_
            (if (uninterned-symbol? _%key155459%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key155459%_))
                (let* ((_%key155463155470%_ _%key155459%_)
                       (_%E155465155474%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key155463155470%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K155466155492%_
                        (lambda (_%mark155477%_ _%eid155478%_)
                          (let ((_%$e155480%_
                                 (##structure-ref
                                  _%mark155477%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e155480%_
                                ((lambda (_%ht155483%_)
                                   (let ((_%$e155485%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht155483%_
                                             _%eid155478%_))))
                                     (if _%$e155485%_
                                         ((lambda (_%id155488%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id155488%_))
                                                _%id155488%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id155488%_))))
                                          _%$e155485%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid155478%_))))
                                 _%$e155480%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid155478%_))))))
                  (if (pair? _%key155463155470%_)
                      (let ((_%hd155467155495%_
                             (let ()
                               (declare (not safe))
                               (##car _%key155463155470%_)))
                            (_%tl155468155497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key155463155470%_))))
                        (let* ((_%eid155500%_ _%hd155467155495%_)
                               (_%mark155502%_ _%tl155468155497%_))
                          (_%K155466155492%_ _%mark155502%_ _%eid155500%_)))
                      (_%E155465155474%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self155456%_ _%stx155457%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self155303%_ _%stx155304%_)
        (letrec ((_%simplify155306%_
                  (lambda (_%body155354%_)
                    (let _%lp155356%_ ((_%rest155358%_ _%body155354%_)
                                       (_%r155359%_ '()))
                      (let* ((_%rest155360155368%_ _%rest155358%_)
                             (_%else155362155376%_
                              (lambda () (reverse _%r155359%_)))
                             (_%K155364155444%_
                              (lambda (_%rest155379%_ _%hd155380%_)
                                (let* ((_%hd155381155397%_ _%hd155380%_)
                                       (_%else155385155405%_
                                        (lambda ()
                                          (_%lp155356%_
                                           _%rest155379%_
                                           (cons _%hd155380%_ _%r155359%_)))))
                                  (let ((_%K155393155434%_
                                         (lambda (_%exprs155432%_)
                                           (_%lp155356%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest155379%_
                                               _%exprs155432%_))
                                            _%r155359%_)))
                                        (_%K155388155418%_
                                         (lambda ()
                                           (if (null? _%rest155379%_)
                                               (_%lp155356%_
                                                _%rest155379%_
                                                (cons _%hd155380%_
                                                      _%r155359%_))
                                               (_%lp155356%_
                                                _%rest155379%_
                                                _%r155359%_))))
                                        (_%K155387155410%_
                                         (lambda ()
                                           (if (null? _%rest155379%_)
                                               (_%lp155356%_
                                                _%rest155379%_
                                                (cons _%hd155380%_
                                                      _%r155359%_))
                                               (_%lp155356%_
                                                _%rest155379%_
                                                _%r155359%_)))))
                                    (let ((_%try-match155384155413%_
                                           (lambda ()
                                             (if (symbol? _%hd155381155397%_)
                                                 (_%K155387155410%_)
                                                 (_%else155385155405%_)))))
                                      (if (pair? _%hd155381155397%_)
                                          (let ((_%tl155395155439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd155381155397%_)))
                                                (_%hd155394155437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd155381155397%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd155394155437%_
                                                         'begin))
                                                (let ((_%exprs155442%_
                                                       _%tl155395155439%_))
                                                  (_%K155393155434%_
                                                   _%exprs155442%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd155394155437%_
                                                             'quote))
                                                    (if (pair? _%tl155395155439%_)
                                                        (let ((_%tl155392155426%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl155395155439%_))))
                  (if (null? _%tl155392155426%_)
                      (_%K155388155418%_)
                      (_%try-match155384155413%_)))
                (_%try-match155384155413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match155384155413%_))))
                                          (_%try-match155384155413%_))))))))
                        (if (pair? _%rest155360155368%_)
                            (let ((_%hd155365155447%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155360155368%_)))
                                  (_%tl155366155449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155360155368%_))))
                              (let* ((_%hd155452%_ _%hd155365155447%_)
                                     (_%rest155454%_ _%tl155366155449%_))
                                (_%K155364155444%_
                                 _%rest155454%_
                                 _%hd155452%_)))
                            (_%else155362155376%_)))))))
          (let* ((_%g155308155318%_
                  (lambda (_%g155309155315%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155309155315%_))))
                 (_%g155307155351%_
                  (lambda (_%g155309155321%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155309155321%_))
                        (let ((_%e155311155323%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155309155321%_))))
                          (let ((_%hd155312155326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155311155323%_)))
                                (_%tl155313155328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155311155323%_))))
                            ((lambda (_%L155331%_)
                               (let* ((_%body155346%_
                                       (map (lambda (_%g155341155343%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self155303%_
                                                 _%g155341155343%_)))
                                            _%L155331%_))
                                      (_%body155348%_
                                       (_%simplify155306%_ _%body155346%_)))
                                 (if (let ((__tmp157404
                                            (length _%body155348%_)))
                                       (declare (not safe))
                                       (##fx= __tmp157404 '1))
                                     (car _%body155348%_)
                                     (cons 'begin _%body155348%_))))
                             _%tl155313155328%_)))
                        (_%g155308155318%_ _%g155309155321%_)))))
            (_%g155307155351%_ _%stx155304%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self155264%_ _%stx155265%_)
        (let* ((_%g155267155277%_
                (lambda (_%g155268155274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155268155274%_))))
               (_%g155266155300%_
                (lambda (_%g155268155280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155268155280%_))
                      (let ((_%e155270155282%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155268155280%_))))
                        (let ((_%hd155271155285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155270155282%_)))
                              (_%tl155272155287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155270155282%_))))
                          ((lambda (_%L155290%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L155290%_))))
                           _%tl155272155287%_)))
                      (_%g155267155277%_ _%g155268155280%_)))))
          (_%g155266155300%_ _%stx155265%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self155028%_ _%stx155029%_)
        (let* ((_%__stx155994155995%_ _%stx155029%_)
               (_%g155033155085%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx155994155995%_)))))
          (let ((_%__kont155996155997%_
                 (lambda (_%L155246%_ _%L155247%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self155028%_ _%L155246%_))))
                (_%__kont155998155999%_
                 (lambda (_%L155194%_ _%L155195%_ _%L155196%_)
                   (if (let ((__tmp157405
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L155196%_))))
                         (declare (not safe))
                         (##memq __tmp157405 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self155028%_ _%L155194%_)))))
                (_%__kont156002156003%_
                 (lambda (_%L155114%_ _%L155115%_)
                   (let ((_%decls155130%_ (map gx#syntax->datum _%L155115%_)))
                     (let ((__tmp157408
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls155130%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155028%_
                                                   _%L155114%_))
                                                '())))))
                           (__tmp157406
                            (let ((__tmp157407
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp157407 _%decls155130%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp157408
                        gxc#current-compile-decls
                        __tmp157406))))))
            (let* ((_%__match156049156050%_
                    (lambda (_%e155049155138%_
                             _%hd155050155141%_
                             _%tl155051155143%_
                             _%e155052155146%_
                             _%hd155053155149%_
                             _%tl155054155151%_
                             _%e155055155154%_
                             _%hd155056155157%_
                             _%tl155057155159%_
                             _%__splice156000156001%_
                             _%target155058155162%_
                             _%tl155060155164%_)
                      (letrec ((_%loop155061155167%_
                                (lambda (_%hd155059155170%_
                                         _%param155065155172%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155059155170%_))
                                      (let ((_%e155062155175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155059155170%_))))
                                        (let ((_%lp-tl155064155180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155062155175%_)))
                                              (_%lp-hd155063155178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155062155175%_))))
                                          (_%loop155061155167%_
                                           _%lp-tl155064155180%_
                                           (cons _%lp-hd155063155178%_
                                                 _%param155065155172%_))))
                                      (let ((_%param155066155183%_
                                             (reverse _%param155065155172%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155054155151%_))
                                            (let ((_%e155067155186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155054155151%_))))
                                              (let ((_%tl155069155191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155067155186%_)))
                                                    (_%hd155068155189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155067155186%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl155069155191%_))
                                                    (let ((_%L155194%_
                                                           _%hd155068155189%_)
                                                          (_%L155195%_
                                                           _%param155066155183%_)
                                                          (_%L155196%_
                                                           _%hd155056155157%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L155196%_))
                       (not (let ((__tmp157409
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L155196%_))))
                              (declare (not safe))
                              (##memq __tmp157409 gxc#gambit-annotations))))
                  (_%__kont155998155999%_ _%L155194%_ _%L155195%_ _%L155196%_)
                  (_%__kont156002156003%_
                   _%hd155068155189%_
                   _%hd155053155149%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155033155085%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g155033155085%_))))))))
                        (_%loop155061155167%_ _%target155058155162%_ '()))))
                   (_%__match156023156024%_
                    (lambda (_%e155037155222%_
                             _%hd155038155225%_
                             _%tl155039155227%_
                             _%e155040155230%_
                             _%hd155041155233%_
                             _%tl155042155235%_
                             _%e155043155238%_
                             _%hd155044155241%_
                             _%tl155045155243%_)
                      (let ((_%L155246%_ _%hd155044155241%_)
                            (_%L155247%_ _%hd155041155233%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L155247%_))
                            (_%__kont155996155997%_ _%L155246%_ _%L155247%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd155041155233%_))
                                (let ((_%e155055155154%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd155041155233%_))))
                                  (let ((_%tl155057155159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155055155154%_)))
                                        (_%hd155056155157%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155055155154%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl155057155159%_))
                                        (let ((_%__splice156000156001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl155057155159%_
                                                  '0))))
                                          (let ((_%tl155060155164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156000156001%_
                                                    '1)))
                                                (_%target155058155162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156000156001%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155060155164%_))
                                                (_%__match156049156050%_
                                                 _%e155037155222%_
                                                 _%hd155038155225%_
                                                 _%tl155039155227%_
                                                 _%e155040155230%_
                                                 _%hd155041155233%_
                                                 _%tl155042155235%_
                                                 _%e155055155154%_
                                                 _%hd155056155157%_
                                                 _%tl155057155159%_
                                                 _%__splice156000156001%_
                                                 _%target155058155162%_
                                                 _%tl155060155164%_)
                                                (_%__kont156002156003%_
                                                 _%hd155044155241%_
                                                 _%hd155041155233%_))))
                                        (_%__kont156002156003%_
                                         _%hd155044155241%_
                                         _%hd155041155233%_))))
                                (_%__kont156002156003%_
                                 _%hd155044155241%_
                                 _%hd155041155233%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx155994155995%_))
                  (let ((_%e155037155222%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx155994155995%_))))
                    (let ((_%tl155039155227%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e155037155222%_)))
                          (_%hd155038155225%_
                           (let ()
                             (declare (not safe))
                             (##car _%e155037155222%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155039155227%_))
                          (let ((_%e155040155230%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155039155227%_))))
                            (let ((_%tl155042155235%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155040155230%_)))
                                  (_%hd155041155233%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155040155230%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl155042155235%_))
                                  (let ((_%e155043155238%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl155042155235%_))))
                                    (let ((_%tl155045155243%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e155043155238%_)))
                                          (_%hd155044155241%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e155043155238%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl155045155243%_))
                                          (_%__match156023156024%_
                                           _%e155037155222%_
                                           _%hd155038155225%_
                                           _%tl155039155227%_
                                           _%e155040155230%_
                                           _%hd155041155233%_
                                           _%tl155042155235%_
                                           _%e155043155238%_
                                           _%hd155044155241%_
                                           _%tl155045155243%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd155041155233%_))
                                              (let ((_%e155055155154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd155041155233%_))))
                                                (let ((_%tl155057155159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155055155154%_)))
                                                      (_%hd155056155157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155055155154%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl155057155159%_))
                                                      (let ((_%__splice156000156001%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl155057155159%_
                        '0))))
                (let ((_%tl155060155164%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156000156001%_ '1)))
                      (_%target155058155162%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156000156001%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155060155164%_))
                      (_%__match156049156050%_
                       _%e155037155222%_
                       _%hd155038155225%_
                       _%tl155039155227%_
                       _%e155040155230%_
                       _%hd155041155233%_
                       _%tl155042155235%_
                       _%e155055155154%_
                       _%hd155056155157%_
                       _%tl155057155159%_
                       _%__splice156000156001%_
                       _%target155058155162%_
                       _%tl155060155164%_)
                      (let () (declare (not safe)) (_%g155033155085%_)))))
              (let () (declare (not safe)) (_%g155033155085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g155033155085%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155041155233%_))
                                      (let ((_%e155055155154%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155041155233%_))))
                                        (let ((_%tl155057155159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155055155154%_)))
                                              (_%hd155056155157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155055155154%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl155057155159%_))
                                              (let ((_%__splice156000156001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl155057155159%_
                                                        '0))))
                                                (let ((_%tl155060155164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156000156001%_
                                                          '1)))
                                                      (_%target155058155162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156000156001%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl155060155164%_))
                                                      (_%__match156049156050%_
                                                       _%e155037155222%_
                                                       _%hd155038155225%_
                                                       _%tl155039155227%_
                                                       _%e155040155230%_
                                                       _%hd155041155233%_
                                                       _%tl155042155235%_
                                                       _%e155055155154%_
                                                       _%hd155056155157%_
                                                       _%tl155057155159%_
                                                       _%__splice156000156001%_
                                                       _%target155058155162%_
                                                       _%tl155060155164%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g155033155085%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g155033155085%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g155033155085%_))))))
                          (let () (declare (not safe)) (_%g155033155085%_)))))
                  (let () (declare (not safe)) (_%g155033155085%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self154987%_ _%stx154988%_)
        (let* ((_%g154990155000%_
                (lambda (_%g154991154997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154991154997%_))))
               (_%g154989155025%_
                (lambda (_%g154991155003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154991155003%_))
                      (let ((_%e154993155005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154991155003%_))))
                        (let ((_%hd154994155008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154993155005%_)))
                              (_%tl154995155010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154993155005%_))))
                          ((lambda (_%L155013%_)
                             (let ((_%decls155023%_
                                    (map gx#syntax->datum _%L155013%_)))
                               (let ((__tmp157410
                                      (let ((__tmp157411
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp157411
                                         _%decls155023%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp157410))
                               (cons 'declare _%decls155023%_)))
                           _%tl154995155010%_)))
                      (_%g154990155000%_ _%g154991155003%_)))))
          (_%g154989155025%_ _%stx154988%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self154733%_ _%stx154734%_)
        (let* ((_%g154736154753%_
                (lambda (_%g154737154750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154737154750%_))))
               (_%g154735154984%_
                (lambda (_%g154737154756%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154737154756%_))
                      (let ((_%e154740154758%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154737154756%_))))
                        (let ((_%hd154741154761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154740154758%_)))
                              (_%tl154742154763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154740154758%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154742154763%_))
                              (let ((_%e154743154766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154742154763%_))))
                                (let ((_%hd154744154769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154743154766%_)))
                                      (_%tl154745154771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154743154766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154745154771%_))
                                      (let ((_%e154746154774%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154745154771%_))))
                                        (let ((_%hd154747154777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154746154774%_)))
                                              (_%tl154748154779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154746154774%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154748154779%_))
                                              ((lambda (_%L154782%_
                                                        _%L154783%_)
                                                 (let* ((_%__stx156102156103%_
                                                         _%L154783%_)
                                                        (_%g154800154814%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx156102156103%_)))))
                                                   (let ((_%__kont156104156105%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self154733%_
                                                               _%L154782%_))))
                                                         (_%__kont156106156107%_
                                                          (lambda (_%L154946%_)
                                                            (let ((_%eid154955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L154946%_))))
                      (let ((_%lambda-expr154956154958%_
                             (gxc#apply-find-lambda-expression _%L154782%_)))
                        (if _%lambda-expr154956154958%_
                            (let* ((_%lambda-expr154961%_
                                    _%lambda-expr154956154958%_)
                                   (__tmp157412
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157412
                               _%lambda-expr154961%_
                               _%eid154955%_))
                            '#f))
                      (cons 'define
                            (cons _%eid154955%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self154733%_
                                           _%L154782%_))
                                        '()))))))
                 (_%__kont156108156109%_
                  (lambda ()
                    (let* ((_%tmp154821%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body154930%_
                            (let _%lp154823%_ ((_%rest154825%_ _%L154783%_)
                                               (_%k154826%_ '0)
                                               (_%r154827%_ '()))
                              (let* ((_%__stx156072156073%_ _%rest154825%_)
                                     (_%g154832154849%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx156072156073%_)))))
                                (let ((_%__kont156074156075%_
                                       (lambda (_%L154917%_)
                                         (_%lp154823%_
                                          _%L154917%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k154826%_ '1))
                                          _%r154827%_)))
                                      (_%__kont156076156077%_
                                       (lambda (_%L154890%_ _%L154891%_)
                                         (_%lp154823%_
                                          _%L154890%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k154826%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L154891%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp154821%_
                           _%k154826%_
                           _%L154890%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r154827%_))))
                                      (_%__kont156078156079%_
                                       (lambda (_%L154861%_)
                                         (let ((__tmp157413
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L154861%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp154821%_
                                 _%k154826%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp157413
                                            _%r154827%_))))
                                      (_%__kont156080156081%_
                                       (lambda () (reverse _%r154827%_))))
                                  (let ((_%g154830154877%_
                                         (lambda ()
                                           (let ((_%L154861%_
                                                  _%__stx156072156073%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L154861%_))
                                                 (_%__kont156078156079%_
                                                  _%L154861%_)
                                                 (_%__kont156080156081%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx156072156073%_))
                                        (let ((_%e154835154906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx156072156073%_))))
                                          (let ((_%tl154837154911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154835154906%_)))
                                                (_%hd154836154909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154835154906%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd154836154909%_))
                                                (let ((_%e154838154914%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd154836154909%_))))
                                                  (if (equal? _%e154838154914%_
                                                              '#f)
                                                      (_%__kont156074156075%_
                                                       _%tl154837154911%_)
                                                      (_%__kont156076156077%_
                                                       _%tl154837154911%_
                                                       _%hd154836154909%_)))
                                                (_%__kont156076156077%_
                                                 _%tl154837154911%_
                                                 _%hd154836154909%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g154830154877%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp154821%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self154733%_
                                                       _%L154782%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp154821%_
                                         _%L154783%_
                                         _%L154782%_)
                                        _%body154930%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx156102156103%_))
                                                         (let ((_%e154802154968%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx156102156103%_))))
                   (let ((_%tl154804154973%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e154802154968%_)))
                         (_%hd154803154971%_
                          (let ()
                            (declare (not safe))
                            (##car _%e154802154968%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd154803154971%_))
                         (let ((_%e154805154976%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd154803154971%_))))
                           (if (equal? _%e154805154976%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl154804154973%_))
                                   (_%__kont156104156105%_)
                                   (_%__kont156108156109%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl154804154973%_))
                                   (_%__kont156106156107%_ _%hd154803154971%_)
                                   (_%__kont156108156109%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl154804154973%_))
                             (_%__kont156106156107%_ _%hd154803154971%_)
                             (_%__kont156108156109%_)))))
                 (_%__kont156108156109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd154747154777%_
                                               _%hd154744154769%_)
                                              (_%g154736154753%_
                                               _%g154737154756%_))))
                                      (_%g154736154753%_ _%g154737154756%_))))
                              (_%g154736154753%_ _%g154737154756%_))))
                      (_%g154736154753%_ _%g154737154756%_)))))
          (_%g154735154984%_ _%stx154734%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals154708%_ _%hd154709%_ _%expr154710%_)
        (let ((_%$e154712%_ (gxc#apply-count-values _%expr154710%_)))
          (if _%$e154712%_
              ((lambda (_%count154715%_)
                 (let ((_%len154717%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd154709%_)))
                       (_%cmp154718%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd154709%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len154717%_ '0))
                           (_%cmp154718%_ _%count154715%_ _%len154717%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr154710%_
                          _%hd154709%_)))))
               _%$e154712%_)
              (let* ((_%len154724%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd154709%_)))
                     (_%cmp154726%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd154709%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg154728%_
                      (let ((__tmp157415
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd154709%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp157414 (number->string _%len154724%_)))
                        (declare (not safe))
                        (##string-append __tmp157415 __tmp157414 '" values")))
                     (_%count154730%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd154709%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len154724%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count154730%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals154708%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp154726%_
                                (cons _%count154730%_
                                      (cons _%len154724%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp154726%_
                                                        (cons _%count154730%_
                                                              (cons _%len154724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg154728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count154730%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var154703%_)
        (letrec ((_%generate-inline154705%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var154703%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var154703%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline154705%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline154705%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var154696%_ _%i154697%_ _%rest154698%_)
        (letrec ((_%generate-inline154700%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i154697%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest154698%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var154696%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var154696%_
                                                      (cons '0 '())))
                                          (cons _%var154696%_ '()))))
                        (cons '##values-ref
                              (cons _%var154696%_ (cons _%i154697%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline154700%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline154700%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var154690%_ _%i154691%_)
        (if (let () (declare (not safe)) (##fx= _%i154691%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var154690%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var154690%_ '()))
                                  (cons (cons 'list (cons _%var154690%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var154690%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var154690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var154690%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i154691%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var154690%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var154690%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var154690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var154690%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var154690%_ '()))
                                (cons _%i154691%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var154690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i154691%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self154622%_ _%stx154623%_)
        (let* ((_%g154625154642%_
                (lambda (_%g154626154639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154626154639%_))))
               (_%g154624154687%_
                (lambda (_%g154626154645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154626154645%_))
                      (let ((_%e154629154647%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154626154645%_))))
                        (let ((_%hd154630154650%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154629154647%_)))
                              (_%tl154631154652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154629154647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154631154652%_))
                              (let ((_%e154632154655%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154631154652%_))))
                                (let ((_%hd154633154658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154632154655%_)))
                                      (_%tl154634154660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154632154655%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154634154660%_))
                                      (let ((_%e154635154663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154634154660%_))))
                                        (let ((_%hd154636154666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154635154663%_)))
                                              (_%tl154637154668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154635154663%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154637154668%_))
                                              ((lambda (_%L154671%_
                                                        _%L154672%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self154622%_
                                                  _%L154672%_
                                                  _%L154671%_))
                                               _%hd154636154666%_
                                               _%hd154633154658%_)
                                              (_%g154625154642%_
                                               _%g154626154645%_))))
                                      (_%g154625154642%_ _%g154626154645%_))))
                              (_%g154625154642%_ _%g154626154645%_))))
                      (_%g154625154642%_ _%g154626154645%_)))))
          (_%g154624154687%_ _%stx154623%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self154581%_ _%hd154582%_ _%body154583%_)
        (let* ((_%hd154585%_ (gxc#generate-runtime-lambda-head _%hd154582%_))
               (_%body154587%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self154581%_ _%body154583%_)))
               (_%body154619%_
                (let* ((_%body154588154596%_ _%body154587%_)
                       (_%else154590154604%_
                        (lambda () (cons _%body154587%_ '())))
                       (_%K154592154609%_
                        (lambda (_%exprs154607%_) _%exprs154607%_)))
                  (if (pair? _%body154588154596%_)
                      (let ((_%hd154593154612%_
                             (let ()
                               (declare (not safe))
                               (##car _%body154588154596%_)))
                            (_%tl154594154614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body154588154596%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd154593154612%_ 'begin))
                            (let ((_%exprs154617%_ _%tl154594154614%_))
                              (_%K154592154609%_ _%exprs154617%_))
                            (_%else154590154604%_)))
                      (_%else154590154604%_)))))
          (cons 'lambda (cons _%hd154585%_ _%body154619%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd154579%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd154579%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self153118%_ _%stx153119%_)
        (letrec ((_%dispatch-case?153121%_
                  (lambda (_%hd153809%_ _%body153810%_)
                    (let* ((_%form153812%_
                            (cons _%hd153809%_ (cons _%body153810%_ '())))
                           (_%__stx156134156135%_ _%form153812%_)
                           (_%g153817153974%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156134156135%_)))))
                      (let ((_%__kont156136156137%_
                             (lambda (_%L154499%_ _%L154500%_ _%L154501%_)
                               '#t))
                            (_%__kont156142156143%_
                             (lambda (_%L154287%_
                                      _%L154288%_
                                      _%L154289%_
                                      _%L154290%_
                                      _%L154291%_
                                      _%L154292%_)
                               '#t))
                            (_%__kont156148156149%_
                             (lambda (_%L154082%_
                                      _%L154083%_
                                      _%L154084%_
                                      _%L154085%_)
                               '#t))
                            (_%__kont156150156151%_ (lambda () '#f)))
                        (let* ((_%__match156275156276%_
                                (lambda (_%e153934153986%_
                                         _%hd153935153989%_
                                         _%tl153936153991%_
                                         _%e153937153994%_
                                         _%hd153938153997%_
                                         _%tl153939153999%_
                                         _%e153940154002%_
                                         _%hd153941154005%_
                                         _%tl153942154007%_
                                         _%e153943154010%_
                                         _%hd153944154013%_
                                         _%tl153945154015%_
                                         _%e153946154018%_
                                         _%hd153947154021%_
                                         _%tl153948154023%_
                                         _%e153949154026%_
                                         _%hd153950154029%_
                                         _%tl153951154031%_
                                         _%e153952154034%_
                                         _%hd153953154037%_
                                         _%tl153954154039%_
                                         _%e153955154042%_
                                         _%hd153956154045%_
                                         _%tl153957154047%_
                                         _%e153958154050%_
                                         _%hd153959154053%_
                                         _%tl153960154055%_
                                         _%e153961154058%_
                                         _%hd153962154061%_
                                         _%tl153963154063%_
                                         _%e153964154066%_
                                         _%hd153965154069%_
                                         _%tl153966154071%_
                                         _%e153967154074%_
                                         _%hd153968154077%_
                                         _%tl153969154079%_)
                                  (let ((_%L154082%_ _%hd153968154077%_)
                                        (_%L154083%_ _%hd153959154053%_)
                                        (_%L154084%_ _%hd153950154029%_)
                                        (_%L154085%_ _%hd153935153989%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L154085%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L154084%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154085%_
                                                _%L154082%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154083%_
                                                     _%L154085%_))))
                                        (_%__kont156148156149%_
                                         _%L154082%_
                                         _%L154083%_
                                         _%L154084%_
                                         _%L154085%_)
                                        (_%__kont156150156151%_)))))
                               (_%__match156247156248%_
                                (lambda (_%e153934153986%_
                                         _%hd153935153989%_
                                         _%tl153936153991%_
                                         _%e153937153994%_
                                         _%hd153938153997%_
                                         _%tl153939153999%_
                                         _%e153940154002%_
                                         _%hd153941154005%_
                                         _%tl153942154007%_
                                         _%e153943154010%_
                                         _%hd153944154013%_
                                         _%tl153945154015%_
                                         _%e153946154018%_
                                         _%hd153947154021%_
                                         _%tl153948154023%_
                                         _%e153949154026%_
                                         _%hd153950154029%_
                                         _%tl153951154031%_
                                         _%e153952154034%_
                                         _%hd153953154037%_
                                         _%tl153954154039%_
                                         _%e153955154042%_
                                         _%hd153956154045%_
                                         _%tl153957154047%_
                                         _%e153958154050%_
                                         _%hd153959154053%_
                                         _%tl153960154055%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153954154039%_))
                                      (let ((_%e153961154058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153954154039%_))))
                                        (let ((_%tl153963154063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153961154058%_)))
                                              (_%hd153962154061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153961154058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd153962154061%_))
                                              (let ((_%e153964154066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd153962154061%_))))
                                                (let ((_%tl153966154071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153964154066%_)))
                                                      (_%hd153965154069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153964154066%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd153965154069%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd153965154069%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153966154071%_))
                      (let ((_%e153967154074%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153966154071%_))))
                        (let ((_%tl153969154079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153967154074%_)))
                              (_%hd153968154077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153967154074%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl153969154079%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl153963154063%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153939153999%_))
                                      (_%__match156275156276%_
                                       _%e153934153986%_
                                       _%hd153935153989%_
                                       _%tl153936153991%_
                                       _%e153937153994%_
                                       _%hd153938153997%_
                                       _%tl153939153999%_
                                       _%e153940154002%_
                                       _%hd153941154005%_
                                       _%tl153942154007%_
                                       _%e153943154010%_
                                       _%hd153944154013%_
                                       _%tl153945154015%_
                                       _%e153946154018%_
                                       _%hd153947154021%_
                                       _%tl153948154023%_
                                       _%e153949154026%_
                                       _%hd153950154029%_
                                       _%tl153951154031%_
                                       _%e153952154034%_
                                       _%hd153953154037%_
                                       _%tl153954154039%_
                                       _%e153955154042%_
                                       _%hd153956154045%_
                                       _%tl153957154047%_
                                       _%e153958154050%_
                                       _%hd153959154053%_
                                       _%tl153960154055%_
                                       _%e153961154058%_
                                       _%hd153962154061%_
                                       _%tl153963154063%_
                                       _%e153964154066%_
                                       _%hd153965154069%_
                                       _%tl153966154071%_
                                       _%e153967154074%_
                                       _%hd153968154077%_
                                       _%tl153969154079%_)
                                      (_%__kont156150156151%_))
                                  (_%__kont156150156151%_))
                              (_%__kont156150156151%_))))
                      (_%__kont156150156151%_))
                  (_%__kont156150156151%_))
              (_%__kont156150156151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156150156151%_))))
                                      (_%__kont156150156151%_))))
                               (_%__match156177156178%_
                                (lambda (_%e153870154127%_
                                         _%hd153871154130%_
                                         _%tl153872154132%_
                                         _%__splice156144156145%_
                                         _%target153873154135%_
                                         _%tl153875154137%_)
                                  (letrec ((_%loop153876154140%_
                                            (lambda (_%hd153874154143%_
                                                     _%arg153880154145%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153874154143%_))
                                                  (let ((_%e153877154148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153874154143%_))))
                                                    (let ((_%lp-tl153879154153%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153877154148%_)))
                                                          (_%lp-hd153878154151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153877154148%_))))
                                                      (_%loop153876154140%_
                                                       _%lp-tl153879154153%_
                                                       (cons _%lp-hd153878154151%_
                                                             _%arg153880154145%_))))
                                                  (let ((_%arg153881154156%_
                                                         (reverse _%arg153880154145%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153872154132%_))
                                                        (let ((_%e153882154159%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153872154132%_))))
                  (let ((_%tl153884154164%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153882154159%_)))
                        (_%hd153883154162%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153882154159%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153883154162%_))
                        (let ((_%e153885154167%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153883154162%_))))
                          (let ((_%tl153887154172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153885154167%_)))
                                (_%hd153886154170%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153885154167%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153886154170%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153886154170%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153887154172%_))
                                        (let ((_%e153888154175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153887154172%_))))
                                          (let ((_%tl153890154180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153888154175%_)))
                                                (_%hd153889154178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153888154175%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153889154178%_))
                                                (let ((_%e153891154183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153889154178%_))))
                                                  (let ((_%tl153893154188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153891154183%_)))
                                                        (_%hd153892154186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153891154183%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153892154186%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153892154186%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153893154188%_))
                        (let ((_%e153894154191%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153893154188%_))))
                          (let ((_%tl153896154196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153894154191%_)))
                                (_%hd153895154194%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153894154191%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153896154196%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl153890154180%_))
                                    (let ((_%e153897154199%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl153890154180%_))))
                                      (let ((_%tl153899154204%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e153897154199%_)))
                                            (_%hd153898154202%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e153897154199%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd153898154202%_))
                                            (let ((_%e153900154207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd153898154202%_))))
                                              (let ((_%tl153902154212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153900154207%_)))
                                                    (_%hd153901154210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153900154207%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd153901154210%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd153901154210%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl153902154212%_))
                                                            (let ((_%e153903154215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl153902154212%_))))
                      (let ((_%tl153905154220%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153903154215%_)))
                            (_%hd153904154218%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153903154215%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl153905154220%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl153899154204%_))
                                (if (let ((__tmp157416
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl153899154204%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp157416 '1))
                                    (let ((_%__splice156146156147%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153899154204%_
                                              '1))))
                                      (let ((_%tl153908154225%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156146156147%_
                                                '1)))
                                            (_%target153906154223%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156146156147%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153908154225%_))
                                            (let ((_%e153915154228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153908154225%_))))
                                              (let ((_%tl153917154233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153915154228%_)))
                                                    (_%hd153916154231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153915154228%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd153916154231%_))
                                                    (let ((_%e153918154236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd153916154231%_))))
                                                      (let ((_%tl153920154241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e153918154236%_)))
                    (_%hd153919154239%_
                     (let () (declare (not safe)) (##car _%e153918154236%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd153919154239%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd153919154239%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl153920154241%_))
                            (let ((_%e153921154244%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl153920154241%_))))
                              (let ((_%tl153923154249%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153921154244%_)))
                                    (_%hd153922154247%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153921154244%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl153923154249%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl153917154233%_))
                                        (letrec ((_%loop153909154252%_
                                                  (lambda (_%hd153907154255%_
                                                           _%xarg153913154257%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd153907154255%_))
                                                        (let ((_%e153910154260%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd153907154255%_))))
                  (let ((_%lp-tl153912154265%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153910154260%_)))
                        (_%lp-hd153911154263%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153910154260%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd153911154263%_))
                        (let ((_%e153924154268%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd153911154263%_))))
                          (let ((_%tl153926154273%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153924154268%_)))
                                (_%hd153925154271%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153924154268%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153925154271%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd153925154271%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153926154273%_))
                                        (let ((_%e153927154276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153926154273%_))))
                                          (let ((_%tl153929154281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153927154276%_)))
                                                (_%hd153928154279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153927154276%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153929154281%_))
                                                (_%loop153909154252%_
                                                 _%lp-tl153912154265%_
                                                 (cons _%hd153928154279%_
                                                       _%xarg153913154257%_))
                                                (_%__match156247156248%_
                                                 _%e153870154127%_
                                                 _%hd153871154130%_
                                                 _%tl153872154132%_
                                                 _%e153882154159%_
                                                 _%hd153883154162%_
                                                 _%tl153884154164%_
                                                 _%e153885154167%_
                                                 _%hd153886154170%_
                                                 _%tl153887154172%_
                                                 _%e153888154175%_
                                                 _%hd153889154178%_
                                                 _%tl153890154180%_
                                                 _%e153891154183%_
                                                 _%hd153892154186%_
                                                 _%tl153893154188%_
                                                 _%e153894154191%_
                                                 _%hd153895154194%_
                                                 _%tl153896154196%_
                                                 _%e153897154199%_
                                                 _%hd153898154202%_
                                                 _%tl153899154204%_
                                                 _%e153900154207%_
                                                 _%hd153901154210%_
                                                 _%tl153902154212%_
                                                 _%e153903154215%_
                                                 _%hd153904154218%_
                                                 _%tl153905154220%_))))
                                        (_%__match156247156248%_
                                         _%e153870154127%_
                                         _%hd153871154130%_
                                         _%tl153872154132%_
                                         _%e153882154159%_
                                         _%hd153883154162%_
                                         _%tl153884154164%_
                                         _%e153885154167%_
                                         _%hd153886154170%_
                                         _%tl153887154172%_
                                         _%e153888154175%_
                                         _%hd153889154178%_
                                         _%tl153890154180%_
                                         _%e153891154183%_
                                         _%hd153892154186%_
                                         _%tl153893154188%_
                                         _%e153894154191%_
                                         _%hd153895154194%_
                                         _%tl153896154196%_
                                         _%e153897154199%_
                                         _%hd153898154202%_
                                         _%tl153899154204%_
                                         _%e153900154207%_
                                         _%hd153901154210%_
                                         _%tl153902154212%_
                                         _%e153903154215%_
                                         _%hd153904154218%_
                                         _%tl153905154220%_))
                                    (_%__match156247156248%_
                                     _%e153870154127%_
                                     _%hd153871154130%_
                                     _%tl153872154132%_
                                     _%e153882154159%_
                                     _%hd153883154162%_
                                     _%tl153884154164%_
                                     _%e153885154167%_
                                     _%hd153886154170%_
                                     _%tl153887154172%_
                                     _%e153888154175%_
                                     _%hd153889154178%_
                                     _%tl153890154180%_
                                     _%e153891154183%_
                                     _%hd153892154186%_
                                     _%tl153893154188%_
                                     _%e153894154191%_
                                     _%hd153895154194%_
                                     _%tl153896154196%_
                                     _%e153897154199%_
                                     _%hd153898154202%_
                                     _%tl153899154204%_
                                     _%e153900154207%_
                                     _%hd153901154210%_
                                     _%tl153902154212%_
                                     _%e153903154215%_
                                     _%hd153904154218%_
                                     _%tl153905154220%_))
                                (_%__match156247156248%_
                                 _%e153870154127%_
                                 _%hd153871154130%_
                                 _%tl153872154132%_
                                 _%e153882154159%_
                                 _%hd153883154162%_
                                 _%tl153884154164%_
                                 _%e153885154167%_
                                 _%hd153886154170%_
                                 _%tl153887154172%_
                                 _%e153888154175%_
                                 _%hd153889154178%_
                                 _%tl153890154180%_
                                 _%e153891154183%_
                                 _%hd153892154186%_
                                 _%tl153893154188%_
                                 _%e153894154191%_
                                 _%hd153895154194%_
                                 _%tl153896154196%_
                                 _%e153897154199%_
                                 _%hd153898154202%_
                                 _%tl153899154204%_
                                 _%e153900154207%_
                                 _%hd153901154210%_
                                 _%tl153902154212%_
                                 _%e153903154215%_
                                 _%hd153904154218%_
                                 _%tl153905154220%_))))
                        (_%__match156247156248%_
                         _%e153870154127%_
                         _%hd153871154130%_
                         _%tl153872154132%_
                         _%e153882154159%_
                         _%hd153883154162%_
                         _%tl153884154164%_
                         _%e153885154167%_
                         _%hd153886154170%_
                         _%tl153887154172%_
                         _%e153888154175%_
                         _%hd153889154178%_
                         _%tl153890154180%_
                         _%e153891154183%_
                         _%hd153892154186%_
                         _%tl153893154188%_
                         _%e153894154191%_
                         _%hd153895154194%_
                         _%tl153896154196%_
                         _%e153897154199%_
                         _%hd153898154202%_
                         _%tl153899154204%_
                         _%e153900154207%_
                         _%hd153901154210%_
                         _%tl153902154212%_
                         _%e153903154215%_
                         _%hd153904154218%_
                         _%tl153905154220%_))))
                (let ((_%xarg153914154284%_ (reverse _%xarg153913154257%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153884154164%_))
                      (let ((_%L154287%_ _%hd153922154247%_)
                            (_%L154288%_ _%xarg153914154284%_)
                            (_%L154289%_ _%hd153904154218%_)
                            (_%L154290%_ _%hd153895154194%_)
                            (_%L154291%_ _%tl153875154137%_)
                            (_%L154292%_ _%arg153881154156%_))
                        (if (and (let ((__tmp157417
                                        (let ((__tmp157418
                                               (lambda (_%g154335154338%_
                                                        _%g154336154340%_)
                                                 (cons _%g154335154338%_
                                                       _%g154336154340%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157418
                                           '()
                                           _%L154292%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp157417))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L154291%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L154290%_
                                    'apply))
                                 (let ((__tmp157421
                                        (length (let ((__tmp157422
                                                       (lambda (_%g154342154345%_
                                                                _%g154343154347%_)
                                                         (cons _%g154342154345%_
                                                               _%g154343154347%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157422
                                                   '()
                                                   _%L154292%_))))
                                       (__tmp157419
                                        (length (let ((__tmp157420
                                                       (lambda (_%g154349154352%_
                                                                _%g154350154354%_)
                                                         (cons _%g154349154352%_
                                                               _%g154350154354%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157420
                                                   '()
                                                   _%L154288%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp157421 __tmp157419))
                                 (let ((__tmp157425
                                        (let ((__tmp157426
                                               (lambda (_%g154356154359%_
                                                        _%g154357154361%_)
                                                 (cons _%g154356154359%_
                                                       _%g154357154361%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157426
                                           '()
                                           _%L154292%_)))
                                       (__tmp157423
                                        (let ((__tmp157424
                                               (lambda (_%g154363154366%_
                                                        _%g154364154368%_)
                                                 (cons _%g154363154366%_
                                                       _%g154364154368%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157424
                                           '()
                                           _%L154288%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp157425
                                    __tmp157423))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L154291%_
                                    _%L154287%_))
                                 (not (let ((__tmp157430
                                             (lambda (_%g154370154372%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g154370154372%_
                                                  _%L154289%_))))
                                            (__tmp157427
                                             (let ((__tmp157429
                                                    (lambda (_%g154374154377%_
                                                             _%g154375154379%_)
                                                      (cons _%g154374154377%_
                                                            _%g154375154379%_)))
                                                   (__tmp157428
                                                    (cons _%L154291%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157429
                                                __tmp157428
                                                _%L154292%_))))
                                        (declare (not safe))
                                        (__find __tmp157430 __tmp157427))))
                            (_%__kont156142156143%_
                             _%L154287%_
                             _%L154288%_
                             _%L154289%_
                             _%L154290%_
                             _%L154291%_
                             _%L154292%_)
                            (_%__match156247156248%_
                             _%e153870154127%_
                             _%hd153871154130%_
                             _%tl153872154132%_
                             _%e153882154159%_
                             _%hd153883154162%_
                             _%tl153884154164%_
                             _%e153885154167%_
                             _%hd153886154170%_
                             _%tl153887154172%_
                             _%e153888154175%_
                             _%hd153889154178%_
                             _%tl153890154180%_
                             _%e153891154183%_
                             _%hd153892154186%_
                             _%tl153893154188%_
                             _%e153894154191%_
                             _%hd153895154194%_
                             _%tl153896154196%_
                             _%e153897154199%_
                             _%hd153898154202%_
                             _%tl153899154204%_
                             _%e153900154207%_
                             _%hd153901154210%_
                             _%tl153902154212%_
                             _%e153903154215%_
                             _%hd153904154218%_
                             _%tl153905154220%_)))
                      (_%__match156247156248%_
                       _%e153870154127%_
                       _%hd153871154130%_
                       _%tl153872154132%_
                       _%e153882154159%_
                       _%hd153883154162%_
                       _%tl153884154164%_
                       _%e153885154167%_
                       _%hd153886154170%_
                       _%tl153887154172%_
                       _%e153888154175%_
                       _%hd153889154178%_
                       _%tl153890154180%_
                       _%e153891154183%_
                       _%hd153892154186%_
                       _%tl153893154188%_
                       _%e153894154191%_
                       _%hd153895154194%_
                       _%tl153896154196%_
                       _%e153897154199%_
                       _%hd153898154202%_
                       _%tl153899154204%_
                       _%e153900154207%_
                       _%hd153901154210%_
                       _%tl153902154212%_
                       _%e153903154215%_
                       _%hd153904154218%_
                       _%tl153905154220%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop153909154252%_
                                           _%target153906154223%_
                                           '()))
                                        (_%__match156247156248%_
                                         _%e153870154127%_
                                         _%hd153871154130%_
                                         _%tl153872154132%_
                                         _%e153882154159%_
                                         _%hd153883154162%_
                                         _%tl153884154164%_
                                         _%e153885154167%_
                                         _%hd153886154170%_
                                         _%tl153887154172%_
                                         _%e153888154175%_
                                         _%hd153889154178%_
                                         _%tl153890154180%_
                                         _%e153891154183%_
                                         _%hd153892154186%_
                                         _%tl153893154188%_
                                         _%e153894154191%_
                                         _%hd153895154194%_
                                         _%tl153896154196%_
                                         _%e153897154199%_
                                         _%hd153898154202%_
                                         _%tl153899154204%_
                                         _%e153900154207%_
                                         _%hd153901154210%_
                                         _%tl153902154212%_
                                         _%e153903154215%_
                                         _%hd153904154218%_
                                         _%tl153905154220%_))
                                    (_%__match156247156248%_
                                     _%e153870154127%_
                                     _%hd153871154130%_
                                     _%tl153872154132%_
                                     _%e153882154159%_
                                     _%hd153883154162%_
                                     _%tl153884154164%_
                                     _%e153885154167%_
                                     _%hd153886154170%_
                                     _%tl153887154172%_
                                     _%e153888154175%_
                                     _%hd153889154178%_
                                     _%tl153890154180%_
                                     _%e153891154183%_
                                     _%hd153892154186%_
                                     _%tl153893154188%_
                                     _%e153894154191%_
                                     _%hd153895154194%_
                                     _%tl153896154196%_
                                     _%e153897154199%_
                                     _%hd153898154202%_
                                     _%tl153899154204%_
                                     _%e153900154207%_
                                     _%hd153901154210%_
                                     _%tl153902154212%_
                                     _%e153903154215%_
                                     _%hd153904154218%_
                                     _%tl153905154220%_))))
                            (_%__match156247156248%_
                             _%e153870154127%_
                             _%hd153871154130%_
                             _%tl153872154132%_
                             _%e153882154159%_
                             _%hd153883154162%_
                             _%tl153884154164%_
                             _%e153885154167%_
                             _%hd153886154170%_
                             _%tl153887154172%_
                             _%e153888154175%_
                             _%hd153889154178%_
                             _%tl153890154180%_
                             _%e153891154183%_
                             _%hd153892154186%_
                             _%tl153893154188%_
                             _%e153894154191%_
                             _%hd153895154194%_
                             _%tl153896154196%_
                             _%e153897154199%_
                             _%hd153898154202%_
                             _%tl153899154204%_
                             _%e153900154207%_
                             _%hd153901154210%_
                             _%tl153902154212%_
                             _%e153903154215%_
                             _%hd153904154218%_
                             _%tl153905154220%_))
                        (_%__match156247156248%_
                         _%e153870154127%_
                         _%hd153871154130%_
                         _%tl153872154132%_
                         _%e153882154159%_
                         _%hd153883154162%_
                         _%tl153884154164%_
                         _%e153885154167%_
                         _%hd153886154170%_
                         _%tl153887154172%_
                         _%e153888154175%_
                         _%hd153889154178%_
                         _%tl153890154180%_
                         _%e153891154183%_
                         _%hd153892154186%_
                         _%tl153893154188%_
                         _%e153894154191%_
                         _%hd153895154194%_
                         _%tl153896154196%_
                         _%e153897154199%_
                         _%hd153898154202%_
                         _%tl153899154204%_
                         _%e153900154207%_
                         _%hd153901154210%_
                         _%tl153902154212%_
                         _%e153903154215%_
                         _%hd153904154218%_
                         _%tl153905154220%_))
                    (_%__match156247156248%_
                     _%e153870154127%_
                     _%hd153871154130%_
                     _%tl153872154132%_
                     _%e153882154159%_
                     _%hd153883154162%_
                     _%tl153884154164%_
                     _%e153885154167%_
                     _%hd153886154170%_
                     _%tl153887154172%_
                     _%e153888154175%_
                     _%hd153889154178%_
                     _%tl153890154180%_
                     _%e153891154183%_
                     _%hd153892154186%_
                     _%tl153893154188%_
                     _%e153894154191%_
                     _%hd153895154194%_
                     _%tl153896154196%_
                     _%e153897154199%_
                     _%hd153898154202%_
                     _%tl153899154204%_
                     _%e153900154207%_
                     _%hd153901154210%_
                     _%tl153902154212%_
                     _%e153903154215%_
                     _%hd153904154218%_
                     _%tl153905154220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match156247156248%_
                                                     _%e153870154127%_
                                                     _%hd153871154130%_
                                                     _%tl153872154132%_
                                                     _%e153882154159%_
                                                     _%hd153883154162%_
                                                     _%tl153884154164%_
                                                     _%e153885154167%_
                                                     _%hd153886154170%_
                                                     _%tl153887154172%_
                                                     _%e153888154175%_
                                                     _%hd153889154178%_
                                                     _%tl153890154180%_
                                                     _%e153891154183%_
                                                     _%hd153892154186%_
                                                     _%tl153893154188%_
                                                     _%e153894154191%_
                                                     _%hd153895154194%_
                                                     _%tl153896154196%_
                                                     _%e153897154199%_
                                                     _%hd153898154202%_
                                                     _%tl153899154204%_
                                                     _%e153900154207%_
                                                     _%hd153901154210%_
                                                     _%tl153902154212%_
                                                     _%e153903154215%_
                                                     _%hd153904154218%_
                                                     _%tl153905154220%_))))
                                            (_%__match156247156248%_
                                             _%e153870154127%_
                                             _%hd153871154130%_
                                             _%tl153872154132%_
                                             _%e153882154159%_
                                             _%hd153883154162%_
                                             _%tl153884154164%_
                                             _%e153885154167%_
                                             _%hd153886154170%_
                                             _%tl153887154172%_
                                             _%e153888154175%_
                                             _%hd153889154178%_
                                             _%tl153890154180%_
                                             _%e153891154183%_
                                             _%hd153892154186%_
                                             _%tl153893154188%_
                                             _%e153894154191%_
                                             _%hd153895154194%_
                                             _%tl153896154196%_
                                             _%e153897154199%_
                                             _%hd153898154202%_
                                             _%tl153899154204%_
                                             _%e153900154207%_
                                             _%hd153901154210%_
                                             _%tl153902154212%_
                                             _%e153903154215%_
                                             _%hd153904154218%_
                                             _%tl153905154220%_))))
                                    (_%__match156247156248%_
                                     _%e153870154127%_
                                     _%hd153871154130%_
                                     _%tl153872154132%_
                                     _%e153882154159%_
                                     _%hd153883154162%_
                                     _%tl153884154164%_
                                     _%e153885154167%_
                                     _%hd153886154170%_
                                     _%tl153887154172%_
                                     _%e153888154175%_
                                     _%hd153889154178%_
                                     _%tl153890154180%_
                                     _%e153891154183%_
                                     _%hd153892154186%_
                                     _%tl153893154188%_
                                     _%e153894154191%_
                                     _%hd153895154194%_
                                     _%tl153896154196%_
                                     _%e153897154199%_
                                     _%hd153898154202%_
                                     _%tl153899154204%_
                                     _%e153900154207%_
                                     _%hd153901154210%_
                                     _%tl153902154212%_
                                     _%e153903154215%_
                                     _%hd153904154218%_
                                     _%tl153905154220%_))
                                (_%__match156247156248%_
                                 _%e153870154127%_
                                 _%hd153871154130%_
                                 _%tl153872154132%_
                                 _%e153882154159%_
                                 _%hd153883154162%_
                                 _%tl153884154164%_
                                 _%e153885154167%_
                                 _%hd153886154170%_
                                 _%tl153887154172%_
                                 _%e153888154175%_
                                 _%hd153889154178%_
                                 _%tl153890154180%_
                                 _%e153891154183%_
                                 _%hd153892154186%_
                                 _%tl153893154188%_
                                 _%e153894154191%_
                                 _%hd153895154194%_
                                 _%tl153896154196%_
                                 _%e153897154199%_
                                 _%hd153898154202%_
                                 _%tl153899154204%_
                                 _%e153900154207%_
                                 _%hd153901154210%_
                                 _%tl153902154212%_
                                 _%e153903154215%_
                                 _%hd153904154218%_
                                 _%tl153905154220%_))
                            (_%__kont156150156151%_))))
                    (_%__kont156150156151%_))
                (_%__kont156150156151%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156150156151%_))))
                                            (_%__kont156150156151%_))))
                                    (_%__kont156150156151%_))
                                (_%__kont156150156151%_))))
                        (_%__kont156150156151%_))
                    (_%__kont156150156151%_))
                (_%__kont156150156151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont156150156151%_))))
                                        (_%__kont156150156151%_))
                                    (_%__kont156150156151%_))
                                (_%__kont156150156151%_))))
                        (_%__kont156150156151%_))))
                (_%__kont156150156151%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153876154140%_
                                     _%target153873154135%_
                                     '()))))
                               (_%__match156165156166%_
                                (lambda (_%e153822154387%_
                                         _%hd153823154390%_
                                         _%tl153824154392%_
                                         _%__splice156138156139%_
                                         _%target153825154395%_
                                         _%tl153827154397%_)
                                  (letrec ((_%loop153828154400%_
                                            (lambda (_%hd153826154403%_
                                                     _%arg153832154405%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153826154403%_))
                                                  (let ((_%e153829154408%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153826154403%_))))
                                                    (let ((_%lp-tl153831154413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153829154408%_)))
                                                          (_%lp-hd153830154411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153829154408%_))))
                                                      (_%loop153828154400%_
                                                       _%lp-tl153831154413%_
                                                       (cons _%lp-hd153830154411%_
                                                             _%arg153832154405%_))))
                                                  (let ((_%arg153833154416%_
                                                         (reverse _%arg153832154405%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153824154392%_))
                                                        (let ((_%e153834154419%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153824154392%_))))
                  (let ((_%tl153836154424%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153834154419%_)))
                        (_%hd153835154422%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153834154419%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153835154422%_))
                        (let ((_%e153837154427%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153835154422%_))))
                          (let ((_%tl153839154432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153837154427%_)))
                                (_%hd153838154430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153837154427%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153838154430%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153838154430%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153839154432%_))
                                        (let ((_%e153840154435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153839154432%_))))
                                          (let ((_%tl153842154440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153840154435%_)))
                                                (_%hd153841154438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153840154435%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153841154438%_))
                                                (let ((_%e153843154443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153841154438%_))))
                                                  (let ((_%tl153845154448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153843154443%_)))
                                                        (_%hd153844154446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153843154443%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153844154446%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153844154446%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153845154448%_))
                        (let ((_%e153846154451%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153845154448%_))))
                          (let ((_%tl153848154456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153846154451%_)))
                                (_%hd153847154454%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153846154451%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153848154456%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl153842154440%_))
                                    (let ((_%__splice156140156141%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153842154440%_
                                              '0))))
                                      (let ((_%tl153851154461%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156140156141%_
                                                '1)))
                                            (_%target153849154459%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156140156141%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl153851154461%_))
                                            (letrec ((_%loop153852154464%_
                                                      (lambda (_%hd153850154467%_
                                                               _%xarg153856154469%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd153850154467%_))
                                                            (let ((_%e153853154472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd153850154467%_))))
                      (let ((_%lp-tl153855154477%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153853154472%_)))
                            (_%lp-hd153854154475%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153853154472%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd153854154475%_))
                            (let ((_%e153858154480%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd153854154475%_))))
                              (let ((_%tl153860154485%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153858154480%_)))
                                    (_%hd153859154483%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153858154480%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd153859154483%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd153859154483%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153860154485%_))
                                            (let ((_%e153861154488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153860154485%_))))
                                              (let ((_%tl153863154493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153861154488%_)))
                                                    (_%hd153862154491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153861154488%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl153863154493%_))
                                                    (_%loop153852154464%_
                                                     _%lp-tl153855154477%_
                                                     (cons _%hd153862154491%_
                                                           _%xarg153856154469%_))
                                                    (_%__match156177156178%_
                                                     _%e153822154387%_
                                                     _%hd153823154390%_
                                                     _%tl153824154392%_
                                                     _%__splice156138156139%_
                                                     _%target153825154395%_
                                                     _%tl153827154397%_))))
                                            (_%__match156177156178%_
                                             _%e153822154387%_
                                             _%hd153823154390%_
                                             _%tl153824154392%_
                                             _%__splice156138156139%_
                                             _%target153825154395%_
                                             _%tl153827154397%_))
                                        (_%__match156177156178%_
                                         _%e153822154387%_
                                         _%hd153823154390%_
                                         _%tl153824154392%_
                                         _%__splice156138156139%_
                                         _%target153825154395%_
                                         _%tl153827154397%_))
                                    (_%__match156177156178%_
                                     _%e153822154387%_
                                     _%hd153823154390%_
                                     _%tl153824154392%_
                                     _%__splice156138156139%_
                                     _%target153825154395%_
                                     _%tl153827154397%_))))
                            (_%__match156177156178%_
                             _%e153822154387%_
                             _%hd153823154390%_
                             _%tl153824154392%_
                             _%__splice156138156139%_
                             _%target153825154395%_
                             _%tl153827154397%_))))
                    (let ((_%xarg153857154496%_
                           (reverse _%xarg153856154469%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153836154424%_))
                          (let ((_%L154499%_ _%xarg153857154496%_)
                                (_%L154500%_ _%hd153847154454%_)
                                (_%L154501%_ _%arg153833154416%_))
                            (if (and (let ((__tmp157431
                                            (let ((__tmp157432
                                                   (lambda (_%g154529154532%_
                                                            _%g154530154534%_)
                                                     (cons _%g154529154532%_
                                                           _%g154530154534%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157432
                                               '()
                                               _%L154501%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp157431))
                                     (let ((__tmp157435
                                            (length (let ((__tmp157436
                                                           (lambda (_%g154536154539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154537154541%_)
                     (cons _%g154536154539%_ _%g154537154541%_))))
              (declare (not safe))
              (__foldr1 __tmp157436 '() _%L154501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp157433
                                            (length (let ((__tmp157434
                                                           (lambda (_%g154543154546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154544154548%_)
                     (cons _%g154543154546%_ _%g154544154548%_))))
              (declare (not safe))
              (__foldr1 __tmp157434 '() _%L154499%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157435 __tmp157433))
                                     (let ((__tmp157439
                                            (let ((__tmp157440
                                                   (lambda (_%g154550154553%_
                                                            _%g154551154555%_)
                                                     (cons _%g154550154553%_
                                                           _%g154551154555%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157440
                                               '()
                                               _%L154501%_)))
                                           (__tmp157437
                                            (let ((__tmp157438
                                                   (lambda (_%g154557154560%_
                                                            _%g154558154562%_)
                                                     (cons _%g154557154560%_
                                                           _%g154558154562%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157438
                                               '()
                                               _%L154499%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp157439
                                        __tmp157437))
                                     (not (let ((__tmp157443
                                                 (lambda (_%g154564154566%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g154564154566%_
                                                      _%L154500%_))))
                                                (__tmp157441
                                                 (let ((__tmp157442
                                                        (lambda (_%g154568154571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g154569154573%_)
                  (cons _%g154568154571%_ _%g154569154573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp157442
                                                    '()
                                                    _%L154501%_))))
                                            (declare (not safe))
                                            (__find __tmp157443 __tmp157441))))
                                (_%__kont156136156137%_
                                 _%L154499%_
                                 _%L154500%_
                                 _%L154501%_)
                                (_%__match156177156178%_
                                 _%e153822154387%_
                                 _%hd153823154390%_
                                 _%tl153824154392%_
                                 _%__splice156138156139%_
                                 _%target153825154395%_
                                 _%tl153827154397%_)))
                          (_%__match156177156178%_
                           _%e153822154387%_
                           _%hd153823154390%_
                           _%tl153824154392%_
                           _%__splice156138156139%_
                           _%target153825154395%_
                           _%tl153827154397%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop153852154464%_
                                               _%target153849154459%_
                                               '()))
                                            (_%__match156177156178%_
                                             _%e153822154387%_
                                             _%hd153823154390%_
                                             _%tl153824154392%_
                                             _%__splice156138156139%_
                                             _%target153825154395%_
                                             _%tl153827154397%_))))
                                    (_%__match156177156178%_
                                     _%e153822154387%_
                                     _%hd153823154390%_
                                     _%tl153824154392%_
                                     _%__splice156138156139%_
                                     _%target153825154395%_
                                     _%tl153827154397%_))
                                (_%__match156177156178%_
                                 _%e153822154387%_
                                 _%hd153823154390%_
                                 _%tl153824154392%_
                                 _%__splice156138156139%_
                                 _%target153825154395%_
                                 _%tl153827154397%_))))
                        (_%__match156177156178%_
                         _%e153822154387%_
                         _%hd153823154390%_
                         _%tl153824154392%_
                         _%__splice156138156139%_
                         _%target153825154395%_
                         _%tl153827154397%_))
                    (_%__match156177156178%_
                     _%e153822154387%_
                     _%hd153823154390%_
                     _%tl153824154392%_
                     _%__splice156138156139%_
                     _%target153825154395%_
                     _%tl153827154397%_))
                (_%__match156177156178%_
                 _%e153822154387%_
                 _%hd153823154390%_
                 _%tl153824154392%_
                 _%__splice156138156139%_
                 _%target153825154395%_
                 _%tl153827154397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156177156178%_
                                                 _%e153822154387%_
                                                 _%hd153823154390%_
                                                 _%tl153824154392%_
                                                 _%__splice156138156139%_
                                                 _%target153825154395%_
                                                 _%tl153827154397%_))))
                                        (_%__match156177156178%_
                                         _%e153822154387%_
                                         _%hd153823154390%_
                                         _%tl153824154392%_
                                         _%__splice156138156139%_
                                         _%target153825154395%_
                                         _%tl153827154397%_))
                                    (_%__match156177156178%_
                                     _%e153822154387%_
                                     _%hd153823154390%_
                                     _%tl153824154392%_
                                     _%__splice156138156139%_
                                     _%target153825154395%_
                                     _%tl153827154397%_))
                                (_%__match156177156178%_
                                 _%e153822154387%_
                                 _%hd153823154390%_
                                 _%tl153824154392%_
                                 _%__splice156138156139%_
                                 _%target153825154395%_
                                 _%tl153827154397%_))))
                        (_%__match156177156178%_
                         _%e153822154387%_
                         _%hd153823154390%_
                         _%tl153824154392%_
                         _%__splice156138156139%_
                         _%target153825154395%_
                         _%tl153827154397%_))))
                (_%__match156177156178%_
                 _%e153822154387%_
                 _%hd153823154390%_
                 _%tl153824154392%_
                 _%__splice156138156139%_
                 _%target153825154395%_
                 _%tl153827154397%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153828154400%_
                                     _%target153825154395%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156134156135%_))
                              (let ((_%e153822154387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156134156135%_))))
                                (let ((_%tl153824154392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153822154387%_)))
                                      (_%hd153823154390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153822154387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153823154390%_))
                                      (let ((_%__splice156138156139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd153823154390%_
                                                '0))))
                                        (let ((_%tl153827154397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156138156139%_
                                                  '1)))
                                              (_%target153825154395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156138156139%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153827154397%_))
                                              (_%__match156165156166%_
                                               _%e153822154387%_
                                               _%hd153823154390%_
                                               _%tl153824154392%_
                                               _%__splice156138156139%_
                                               _%target153825154395%_
                                               _%tl153827154397%_)
                                              (_%__match156177156178%_
                                               _%e153822154387%_
                                               _%hd153823154390%_
                                               _%tl153824154392%_
                                               _%__splice156138156139%_
                                               _%target153825154395%_
                                               _%tl153827154397%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153824154392%_))
                                          (let ((_%e153937153994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153824154392%_))))
                                            (let ((_%tl153939153999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153937153994%_)))
                                                  (_%hd153938153997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153937153994%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153938153997%_))
                                                  (let ((_%e153940154002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153938153997%_))))
                                                    (let ((_%tl153942154007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153940154002%_)))
                                                          (_%hd153941154005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153940154002%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd153941154005%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd153941154005%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl153942154007%_))
                          (let ((_%e153943154010%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl153942154007%_))))
                            (let ((_%tl153945154015%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153943154010%_)))
                                  (_%hd153944154013%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153943154010%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd153944154013%_))
                                  (let ((_%e153946154018%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd153944154013%_))))
                                    (let ((_%tl153948154023%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153946154018%_)))
                                          (_%hd153947154021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153946154018%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd153947154021%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd153947154021%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl153948154023%_))
                                                  (let ((_%e153949154026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl153948154023%_))))
                                                    (let ((_%tl153951154031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153949154026%_)))
                                                          (_%hd153950154029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153949154026%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153951154031%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153945154015%_))
                      (let ((_%e153952154034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153945154015%_))))
                        (let ((_%tl153954154039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153952154034%_)))
                              (_%hd153953154037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153952154034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd153953154037%_))
                              (let ((_%e153955154042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd153953154037%_))))
                                (let ((_%tl153957154047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153955154042%_)))
                                      (_%hd153956154045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153955154042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd153956154045%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd153956154045%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153957154047%_))
                                              (let ((_%e153958154050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153957154047%_))))
                                                (let ((_%tl153960154055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153958154050%_)))
                                                      (_%hd153959154053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153958154050%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153960154055%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl153954154039%_))
                                                          (let ((_%e153961154058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl153954154039%_))))
                    (let ((_%tl153963154063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153961154058%_)))
                          (_%hd153962154061%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153961154058%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd153962154061%_))
                          (let ((_%e153964154066%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd153962154061%_))))
                            (let ((_%tl153966154071%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153964154066%_)))
                                  (_%hd153965154069%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153964154066%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd153965154069%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd153965154069%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153966154071%_))
                                          (let ((_%e153967154074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153966154071%_))))
                                            (let ((_%tl153969154079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153967154074%_)))
                                                  (_%hd153968154077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153967154074%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl153969154079%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153963154063%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153939153999%_))
                                                          (_%__match156275156276%_
                                                           _%e153822154387%_
                                                           _%hd153823154390%_
                                                           _%tl153824154392%_
                                                           _%e153937153994%_
                                                           _%hd153938153997%_
                                                           _%tl153939153999%_
                                                           _%e153940154002%_
                                                           _%hd153941154005%_
                                                           _%tl153942154007%_
                                                           _%e153943154010%_
                                                           _%hd153944154013%_
                                                           _%tl153945154015%_
                                                           _%e153946154018%_
                                                           _%hd153947154021%_
                                                           _%tl153948154023%_
                                                           _%e153949154026%_
                                                           _%hd153950154029%_
                                                           _%tl153951154031%_
                                                           _%e153952154034%_
                                                           _%hd153953154037%_
                                                           _%tl153954154039%_
                                                           _%e153955154042%_
                                                           _%hd153956154045%_
                                                           _%tl153957154047%_
                                                           _%e153958154050%_
                                                           _%hd153959154053%_
                                                           _%tl153960154055%_
                                                           _%e153961154058%_
                                                           _%hd153962154061%_
                                                           _%tl153963154063%_
                                                           _%e153964154066%_
                                                           _%hd153965154069%_
                                                           _%tl153966154071%_
                                                           _%e153967154074%_
                                                           _%hd153968154077%_
                                                           _%tl153969154079%_)
                                                          (_%__kont156150156151%_))
                                                      (_%__kont156150156151%_))
                                                  (_%__kont156150156151%_))))
                                          (_%__kont156150156151%_))
                                      (_%__kont156150156151%_))
                                  (_%__kont156150156151%_))))
                          (_%__kont156150156151%_))))
                  (_%__kont156150156151%_))
              (_%__kont156150156151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156150156151%_))
                                          (_%__kont156150156151%_))
                                      (_%__kont156150156151%_))))
                              (_%__kont156150156151%_))))
                      (_%__kont156150156151%_))
                  (_%__kont156150156151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156150156151%_))
                                              (_%__kont156150156151%_))
                                          (_%__kont156150156151%_))))
                                  (_%__kont156150156151%_))))
                          (_%__kont156150156151%_))
                      (_%__kont156150156151%_))
                  (_%__kont156150156151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156150156151%_))))
                                          (_%__kont156150156151%_)))))
                              (_%__kont156150156151%_)))))))
                 (_%dispatch-case-e153122%_
                  (lambda (_%hd153273%_ _%body153274%_)
                    (let* ((_%form153276%_
                            (cons _%hd153273%_ (cons _%body153274%_ '())))
                           (_%__stx156278156279%_ _%form153276%_)
                           (_%g153280153404%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156278156279%_)))))
                      (let ((_%__kont156280156281%_
                             (lambda (_%L153775%_ _%L153776%_ _%L153777%_)
                               (let ((__tmp157444
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153776%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153118%_
                                  __tmp157444))))
                            (_%__kont156286156287%_
                             (lambda (_%L153623%_
                                      _%L153624%_
                                      _%L153625%_
                                      _%L153626%_)
                               (let ((__tmp157445
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153623%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153118%_
                                  __tmp157445))))
                            (_%__kont156290156291%_
                             (lambda (_%L153489%_ _%L153490%_ _%L153491%_)
                               (let ((__tmp157446
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153489%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153118%_
                                  __tmp157446)))))
                        (let* ((_%__match156387156388%_
                                (lambda (_%e153370153409%_
                                         _%hd153371153412%_
                                         _%tl153372153414%_
                                         _%e153373153417%_
                                         _%hd153374153420%_
                                         _%tl153375153422%_
                                         _%e153376153425%_
                                         _%hd153377153428%_
                                         _%tl153378153430%_
                                         _%e153379153433%_
                                         _%hd153380153436%_
                                         _%tl153381153438%_
                                         _%e153382153441%_
                                         _%hd153383153444%_
                                         _%tl153384153446%_
                                         _%e153385153449%_
                                         _%hd153386153452%_
                                         _%tl153387153454%_
                                         _%e153388153457%_
                                         _%hd153389153460%_
                                         _%tl153390153462%_
                                         _%e153391153465%_
                                         _%hd153392153468%_
                                         _%tl153393153470%_
                                         _%e153394153473%_
                                         _%hd153395153476%_
                                         _%tl153396153478%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153390153462%_))
                                      (let ((_%e153397153481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153390153462%_))))
                                        (let ((_%tl153399153486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153397153481%_)))
                                              (_%hd153398153484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153397153481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153399153486%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl153375153422%_))
                                                  (_%__kont156290156291%_
                                                   _%hd153395153476%_
                                                   _%hd153386153452%_
                                                   _%hd153371153412%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153280153404%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153280153404%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153280153404%_)))))
                               (_%__match156317156318%_
                                (lambda (_%e153331153527%_
                                         _%hd153332153530%_
                                         _%tl153333153532%_
                                         _%__splice156288156289%_
                                         _%target153334153535%_
                                         _%tl153336153537%_)
                                  (letrec ((_%loop153337153540%_
                                            (lambda (_%hd153335153543%_
                                                     _%arg153341153545%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153335153543%_))
                                                  (let ((_%e153338153548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153335153543%_))))
                                                    (let ((_%lp-tl153340153553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153338153548%_)))
                                                          (_%lp-hd153339153551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153338153548%_))))
                                                      (_%loop153337153540%_
                                                       _%lp-tl153340153553%_
                                                       (cons _%lp-hd153339153551%_
                                                             _%arg153341153545%_))))
                                                  (let ((_%arg153342153556%_
                                                         (reverse _%arg153341153545%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153333153532%_))
                                                        (let ((_%e153343153559%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153333153532%_))))
                  (let ((_%tl153345153564%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153343153559%_)))
                        (_%hd153344153562%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153343153559%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153344153562%_))
                        (let ((_%e153346153567%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153344153562%_))))
                          (let ((_%tl153348153572%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153346153567%_)))
                                (_%hd153347153570%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153346153567%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153347153570%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153347153570%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153348153572%_))
                                        (let ((_%e153349153575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153348153572%_))))
                                          (let ((_%tl153351153580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153349153575%_)))
                                                (_%hd153350153578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153349153575%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153350153578%_))
                                                (let ((_%e153352153583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153350153578%_))))
                                                  (let ((_%tl153354153588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153352153583%_)))
                                                        (_%hd153353153586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153352153583%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153353153586%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153353153586%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153354153588%_))
                        (let ((_%e153355153591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153354153588%_))))
                          (let ((_%tl153357153596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153355153591%_)))
                                (_%hd153356153594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153355153591%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153357153596%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl153351153580%_))
                                    (let ((_%e153358153599%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl153351153580%_))))
                                      (let ((_%tl153360153604%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e153358153599%_)))
                                            (_%hd153359153602%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e153358153599%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd153359153602%_))
                                            (let ((_%e153361153607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd153359153602%_))))
                                              (let ((_%tl153363153612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153361153607%_)))
                                                    (_%hd153362153610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153361153607%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd153362153610%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd153362153610%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl153363153612%_))
                                                            (let ((_%e153364153615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl153363153612%_))))
                      (let ((_%tl153366153620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153364153615%_)))
                            (_%hd153365153618%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153364153615%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl153366153620%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153345153564%_))
                                (_%__kont156286156287%_
                                 _%hd153365153618%_
                                 _%hd153356153594%_
                                 _%tl153336153537%_
                                 _%arg153342153556%_)
                                (_%__match156387156388%_
                                 _%e153331153527%_
                                 _%hd153332153530%_
                                 _%tl153333153532%_
                                 _%e153343153559%_
                                 _%hd153344153562%_
                                 _%tl153345153564%_
                                 _%e153346153567%_
                                 _%hd153347153570%_
                                 _%tl153348153572%_
                                 _%e153349153575%_
                                 _%hd153350153578%_
                                 _%tl153351153580%_
                                 _%e153352153583%_
                                 _%hd153353153586%_
                                 _%tl153354153588%_
                                 _%e153355153591%_
                                 _%hd153356153594%_
                                 _%tl153357153596%_
                                 _%e153358153599%_
                                 _%hd153359153602%_
                                 _%tl153360153604%_
                                 _%e153361153607%_
                                 _%hd153362153610%_
                                 _%tl153363153612%_
                                 _%e153364153615%_
                                 _%hd153365153618%_
                                 _%tl153366153620%_))
                            (let ()
                              (declare (not safe))
                              (_%g153280153404%_)))))
                    (let () (declare (not safe)) (_%g153280153404%_)))
                (let () (declare (not safe)) (_%g153280153404%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g153280153404%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g153280153404%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153280153404%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153280153404%_)))))
                        (let () (declare (not safe)) (_%g153280153404%_)))
                    (let () (declare (not safe)) (_%g153280153404%_)))
                (let () (declare (not safe)) (_%g153280153404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g153280153404%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g153280153404%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153280153404%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153280153404%_)))))
                        (let () (declare (not safe)) (_%g153280153404%_)))))
                (let () (declare (not safe)) (_%g153280153404%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153337153540%_
                                     _%target153334153535%_
                                     '()))))
                               (_%__match156305156306%_
                                (lambda (_%e153285153663%_
                                         _%hd153286153666%_
                                         _%tl153287153668%_
                                         _%__splice156282156283%_
                                         _%target153288153671%_
                                         _%tl153290153673%_)
                                  (letrec ((_%loop153291153676%_
                                            (lambda (_%hd153289153679%_
                                                     _%arg153295153681%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153289153679%_))
                                                  (let ((_%e153292153684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153289153679%_))))
                                                    (let ((_%lp-tl153294153689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153292153684%_)))
                                                          (_%lp-hd153293153687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153292153684%_))))
                                                      (_%loop153291153676%_
                                                       _%lp-tl153294153689%_
                                                       (cons _%lp-hd153293153687%_
                                                             _%arg153295153681%_))))
                                                  (let ((_%arg153296153692%_
                                                         (reverse _%arg153295153681%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153287153668%_))
                                                        (let ((_%e153297153695%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153287153668%_))))
                  (let ((_%tl153299153700%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153297153695%_)))
                        (_%hd153298153698%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153297153695%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153298153698%_))
                        (let ((_%e153300153703%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153298153698%_))))
                          (let ((_%tl153302153708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153300153703%_)))
                                (_%hd153301153706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153300153703%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153301153706%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153301153706%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153302153708%_))
                                        (let ((_%e153303153711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153302153708%_))))
                                          (let ((_%tl153305153716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153303153711%_)))
                                                (_%hd153304153714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153303153711%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153304153714%_))
                                                (let ((_%e153306153719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153304153714%_))))
                                                  (let ((_%tl153308153724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153306153719%_)))
                                                        (_%hd153307153722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153306153719%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153307153722%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153307153722%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153308153724%_))
                        (let ((_%e153309153727%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153308153724%_))))
                          (let ((_%tl153311153732%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153309153727%_)))
                                (_%hd153310153730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153309153727%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153311153732%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl153305153716%_))
                                    (let ((_%__splice156284156285%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153305153716%_
                                              '0))))
                                      (let ((_%tl153314153737%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156284156285%_
                                                '1)))
                                            (_%target153312153735%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156284156285%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl153314153737%_))
                                            (letrec ((_%loop153315153740%_
                                                      (lambda (_%hd153313153743%_
                                                               _%xarg153319153745%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd153313153743%_))
                                                            (let ((_%e153316153748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd153313153743%_))))
                      (let ((_%lp-tl153318153753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153316153748%_)))
                            (_%lp-hd153317153751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153316153748%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd153317153751%_))
                            (let ((_%e153321153756%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd153317153751%_))))
                              (let ((_%tl153323153761%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153321153756%_)))
                                    (_%hd153322153759%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153321153756%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd153322153759%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd153322153759%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153323153761%_))
                                            (let ((_%e153324153764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153323153761%_))))
                                              (let ((_%tl153326153769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153324153764%_)))
                                                    (_%hd153325153767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153324153764%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl153326153769%_))
                                                    (_%loop153315153740%_
                                                     _%lp-tl153318153753%_
                                                     (cons _%hd153325153767%_
                                                           _%xarg153319153745%_))
                                                    (_%__match156317156318%_
                                                     _%e153285153663%_
                                                     _%hd153286153666%_
                                                     _%tl153287153668%_
                                                     _%__splice156282156283%_
                                                     _%target153288153671%_
                                                     _%tl153290153673%_))))
                                            (_%__match156317156318%_
                                             _%e153285153663%_
                                             _%hd153286153666%_
                                             _%tl153287153668%_
                                             _%__splice156282156283%_
                                             _%target153288153671%_
                                             _%tl153290153673%_))
                                        (_%__match156317156318%_
                                         _%e153285153663%_
                                         _%hd153286153666%_
                                         _%tl153287153668%_
                                         _%__splice156282156283%_
                                         _%target153288153671%_
                                         _%tl153290153673%_))
                                    (_%__match156317156318%_
                                     _%e153285153663%_
                                     _%hd153286153666%_
                                     _%tl153287153668%_
                                     _%__splice156282156283%_
                                     _%target153288153671%_
                                     _%tl153290153673%_))))
                            (_%__match156317156318%_
                             _%e153285153663%_
                             _%hd153286153666%_
                             _%tl153287153668%_
                             _%__splice156282156283%_
                             _%target153288153671%_
                             _%tl153290153673%_))))
                    (let ((_%xarg153320153772%_
                           (reverse _%xarg153319153745%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153299153700%_))
                          (_%__kont156280156281%_
                           _%xarg153320153772%_
                           _%hd153310153730%_
                           _%arg153296153692%_)
                          (_%__match156317156318%_
                           _%e153285153663%_
                           _%hd153286153666%_
                           _%tl153287153668%_
                           _%__splice156282156283%_
                           _%target153288153671%_
                           _%tl153290153673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop153315153740%_
                                               _%target153312153735%_
                                               '()))
                                            (_%__match156317156318%_
                                             _%e153285153663%_
                                             _%hd153286153666%_
                                             _%tl153287153668%_
                                             _%__splice156282156283%_
                                             _%target153288153671%_
                                             _%tl153290153673%_))))
                                    (_%__match156317156318%_
                                     _%e153285153663%_
                                     _%hd153286153666%_
                                     _%tl153287153668%_
                                     _%__splice156282156283%_
                                     _%target153288153671%_
                                     _%tl153290153673%_))
                                (_%__match156317156318%_
                                 _%e153285153663%_
                                 _%hd153286153666%_
                                 _%tl153287153668%_
                                 _%__splice156282156283%_
                                 _%target153288153671%_
                                 _%tl153290153673%_))))
                        (_%__match156317156318%_
                         _%e153285153663%_
                         _%hd153286153666%_
                         _%tl153287153668%_
                         _%__splice156282156283%_
                         _%target153288153671%_
                         _%tl153290153673%_))
                    (_%__match156317156318%_
                     _%e153285153663%_
                     _%hd153286153666%_
                     _%tl153287153668%_
                     _%__splice156282156283%_
                     _%target153288153671%_
                     _%tl153290153673%_))
                (_%__match156317156318%_
                 _%e153285153663%_
                 _%hd153286153666%_
                 _%tl153287153668%_
                 _%__splice156282156283%_
                 _%target153288153671%_
                 _%tl153290153673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156317156318%_
                                                 _%e153285153663%_
                                                 _%hd153286153666%_
                                                 _%tl153287153668%_
                                                 _%__splice156282156283%_
                                                 _%target153288153671%_
                                                 _%tl153290153673%_))))
                                        (_%__match156317156318%_
                                         _%e153285153663%_
                                         _%hd153286153666%_
                                         _%tl153287153668%_
                                         _%__splice156282156283%_
                                         _%target153288153671%_
                                         _%tl153290153673%_))
                                    (_%__match156317156318%_
                                     _%e153285153663%_
                                     _%hd153286153666%_
                                     _%tl153287153668%_
                                     _%__splice156282156283%_
                                     _%target153288153671%_
                                     _%tl153290153673%_))
                                (_%__match156317156318%_
                                 _%e153285153663%_
                                 _%hd153286153666%_
                                 _%tl153287153668%_
                                 _%__splice156282156283%_
                                 _%target153288153671%_
                                 _%tl153290153673%_))))
                        (_%__match156317156318%_
                         _%e153285153663%_
                         _%hd153286153666%_
                         _%tl153287153668%_
                         _%__splice156282156283%_
                         _%target153288153671%_
                         _%tl153290153673%_))))
                (_%__match156317156318%_
                 _%e153285153663%_
                 _%hd153286153666%_
                 _%tl153287153668%_
                 _%__splice156282156283%_
                 _%target153288153671%_
                 _%tl153290153673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153291153676%_
                                     _%target153288153671%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156278156279%_))
                              (let ((_%e153285153663%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156278156279%_))))
                                (let ((_%tl153287153668%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153285153663%_)))
                                      (_%hd153286153666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153285153663%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153286153666%_))
                                      (let ((_%__splice156282156283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd153286153666%_
                                                '0))))
                                        (let ((_%tl153290153673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156282156283%_
                                                  '1)))
                                              (_%target153288153671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156282156283%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153290153673%_))
                                              (_%__match156305156306%_
                                               _%e153285153663%_
                                               _%hd153286153666%_
                                               _%tl153287153668%_
                                               _%__splice156282156283%_
                                               _%target153288153671%_
                                               _%tl153290153673%_)
                                              (_%__match156317156318%_
                                               _%e153285153663%_
                                               _%hd153286153666%_
                                               _%tl153287153668%_
                                               _%__splice156282156283%_
                                               _%target153288153671%_
                                               _%tl153290153673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153287153668%_))
                                          (let ((_%e153373153417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153287153668%_))))
                                            (let ((_%tl153375153422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153373153417%_)))
                                                  (_%hd153374153420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153373153417%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153374153420%_))
                                                  (let ((_%e153376153425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153374153420%_))))
                                                    (let ((_%tl153378153430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153376153425%_)))
                                                          (_%hd153377153428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153376153425%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd153377153428%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd153377153428%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl153378153430%_))
                          (let ((_%e153379153433%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl153378153430%_))))
                            (let ((_%tl153381153438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153379153433%_)))
                                  (_%hd153380153436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153379153433%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd153380153436%_))
                                  (let ((_%e153382153441%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd153380153436%_))))
                                    (let ((_%tl153384153446%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153382153441%_)))
                                          (_%hd153383153444%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153382153441%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd153383153444%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd153383153444%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl153384153446%_))
                                                  (let ((_%e153385153449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl153384153446%_))))
                                                    (let ((_%tl153387153454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153385153449%_)))
                                                          (_%hd153386153452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153385153449%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153387153454%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153381153438%_))
                      (let ((_%e153388153457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153381153438%_))))
                        (let ((_%tl153390153462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153388153457%_)))
                              (_%hd153389153460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153388153457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd153389153460%_))
                              (let ((_%e153391153465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd153389153460%_))))
                                (let ((_%tl153393153470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153391153465%_)))
                                      (_%hd153392153468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153391153465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd153392153468%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd153392153468%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153393153470%_))
                                              (let ((_%e153394153473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153393153470%_))))
                                                (let ((_%tl153396153478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153394153473%_)))
                                                      (_%hd153395153476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153394153473%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153396153478%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl153390153462%_))
                                                          (let ((_%e153397153481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl153390153462%_))))
                    (let ((_%tl153399153486%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153397153481%_)))
                          (_%hd153398153484%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153397153481%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153399153486%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl153375153422%_))
                              (_%__kont156290156291%_
                               _%hd153395153476%_
                               _%hd153386153452%_
                               _%hd153286153666%_)
                              (let ()
                                (declare (not safe))
                                (_%g153280153404%_)))
                          (let () (declare (not safe)) (_%g153280153404%_)))))
                  (let () (declare (not safe)) (_%g153280153404%_)))
              (let () (declare (not safe)) (_%g153280153404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g153280153404%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153280153404%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153280153404%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g153280153404%_)))))
                      (let () (declare (not safe)) (_%g153280153404%_)))
                  (let () (declare (not safe)) (_%g153280153404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153280153404%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153280153404%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153280153404%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g153280153404%_)))))
                          (let () (declare (not safe)) (_%g153280153404%_)))
                      (let () (declare (not safe)) (_%g153280153404%_)))
                  (let () (declare (not safe)) (_%g153280153404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153280153404%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153280153404%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g153280153404%_))))))))
                 (_%generate1153123%_
                  (lambda (_%args153258%_
                           _%arglen153259%_
                           _%hd153260%_
                           _%body153261%_)
                    (let* ((_%len153263%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd153260%_)))
                           (_%condition153268%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd153260%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen153259%_
                                                (cons _%len153263%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen153259%_ (cons _%len153263%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len153263%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen153259%_
                                                    (cons _%len153263%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen153259%_ (cons _%len153263%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch153270%_
                            (if (_%dispatch-case?153121%_
                                 _%hd153260%_
                                 _%body153261%_)
                                (_%dispatch-case-e153122%_
                                 _%hd153260%_
                                 _%body153261%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self153118%_
                                 _%hd153260%_
                                 _%body153261%_))))
                      (cons _%condition153268%_
                            (cons (cons 'apply
                                        (cons _%dispatch153270%_
                                              (cons _%args153258%_ '())))
                                  '()))))))
          (let* ((_%g153125153153%_
                  (lambda (_%g153126153150%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g153126153150%_))))
                 (_%g153124153255%_
                  (lambda (_%g153126153156%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g153126153156%_))
                        (let ((_%e153129153158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g153126153156%_))))
                          (let ((_%hd153130153161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153129153158%_)))
                                (_%tl153131153163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153129153158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl153131153163%_))
                                (let ((_g157447_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl153131153163%_
                                          '0))))
                                  (begin
                                    (let ((_g157448_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157447_)
                                                 (##values-length _g157447_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157448_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157448_)))
                                    (let ((_%target153132153166%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157447_ 0)))
                                          (_%tl153134153168%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157447_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153134153168%_))
                                          (letrec ((_%loop153135153171%_
                                                    (lambda (_%hd153133153174%_
                                                             _%body153139153176%_
                                                             _%hd153140153178%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd153133153174%_))
                                                          (let ((_%e153136153181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd153133153174%_))))
                    (let ((_%lp-hd153137153184%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153136153181%_)))
                          (_%lp-tl153138153186%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153136153181%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd153137153184%_))
                          (let ((_%e153143153189%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd153137153184%_))))
                            (let ((_%hd153144153192%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153143153189%_)))
                                  (_%tl153145153194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153143153189%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl153145153194%_))
                                  (let ((_%e153146153197%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl153145153194%_))))
                                    (let ((_%hd153147153200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153146153197%_)))
                                          (_%tl153148153202%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153146153197%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153148153202%_))
                                          (_%loop153135153171%_
                                           _%lp-tl153138153186%_
                                           (cons _%hd153147153200%_
                                                 _%body153139153176%_)
                                           (cons _%hd153144153192%_
                                                 _%hd153140153178%_))
                                          (_%g153125153153%_
                                           _%g153126153156%_))))
                                  (_%g153125153153%_ _%g153126153156%_))))
                          (_%g153125153153%_ _%g153126153156%_))))
                  (let ((_%body153141153205%_ (reverse _%body153139153176%_))
                        (_%hd153142153207%_ (reverse _%hd153140153178%_)))
                    ((lambda (_%L153210%_ _%L153211%_)
                       (let ((_%args153230%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen153231%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name153232%_
                              (let ((_%$e153227%_
                                     (let ((__tmp157449
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp157449 _%stx153119%_))))
                                (if _%$e153227%_
                                    _%$e153227%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args153230%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen153231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args153230%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args153230%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp157453
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name153232%_
                                                                (cons _%args153230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp157450
                                  (map (lambda (_%g153233153236%_
                                                _%g153234153238%_)
                                         (_%generate1153123%_
                                          _%args153230%_
                                          _%arglen153231%_
                                          _%g153233153236%_
                                          _%g153234153238%_))
                                       (let ((__tmp157451
                                              (lambda (_%g153240153243%_
                                                       _%g153241153245%_)
                                                (cons _%g153240153243%_
                                                      _%g153241153245%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157451
                                          '()
                                          _%L153211%_))
                                       (let ((__tmp157452
                                              (lambda (_%g153247153250%_
                                                       _%g153248153252%_)
                                                (cons _%g153247153250%_
                                                      _%g153248153252%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157452
                                          '()
                                          _%L153210%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp157453 __tmp157450)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body153141153205%_
                     _%hd153142153207%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop153135153171%_
                                             _%target153132153166%_
                                             '()
                                             '()))
                                          (_%g153125153153%_
                                           _%g153126153156%_)))))
                                (_%g153125153153%_ _%g153126153156%_))))
                        (_%g153125153153%_ _%g153126153156%_)))))
            (_%g153124153255%_ _%stx153119%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self152355%_ _%stx152356%_ _%compiled-body?152357%_)
        (letrec ((_%generate-simple152359%_
                  (lambda (_%hd153103%_ _%body153104%_)
                    (_%coalesce-boolean152360%_
                     (_%simplify-let152361%_
                      (gxc#generate-runtime-simple-let
                       _%self152355%_
                       'let
                       _%hd153103%_
                       _%body153104%_
                       _%compiled-body?152357%_)))))
                 (_%coalesce-boolean152360%_
                  (lambda (_%code152964%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code152965152991%_ _%code152964%_)
                               (_%else152967152999%_
                                (lambda () _%code152964%_))
                               (_%K152969153036%_
                                (lambda (_%expr2153002%_
                                         _%expr1153003%_
                                         _%id153004%_)
                                  (let* ((_%expr2153005153013%_
                                          _%expr2153002%_)
                                         (_%else153007153021%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1153003%_
                                                        (cons _%expr2153002%_
                                                              '())))))
                                         (_%K153009153026%_
                                          (lambda (_%exprs153024%_)
                                            (cons 'or
                                                  (cons _%expr1153003%_
                                                        _%exprs153024%_)))))
                                    (if (pair? _%expr2153005153013%_)
                                        (let ((_%hd153010153029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2153005153013%_)))
                                              (_%tl153011153031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2153005153013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd153010153029%_ 'or))
                                              (let ((_%exprs153034%_
                                                     _%tl153011153031%_))
                                                (_%K153009153026%_
                                                 _%exprs153034%_))
                                              (_%else153007153021%_)))
                                        (_%else153007153021%_))))))
                          (if (pair? _%code152965152991%_)
                              (let ((_%hd152970153039%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code152965152991%_)))
                                    (_%tl152971153041%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code152965152991%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd152970153039%_ 'let))
                                    (if (pair? _%tl152971153041%_)
                                        (let ((_%hd152972153044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl152971153041%_)))
                                              (_%tl152973153046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl152971153041%_))))
                                          (if (pair? _%hd152972153044%_)
                                              (let ((_%hd152984153049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd152972153044%_)))
                                                    (_%tl152985153051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd152972153044%_))))
                                                (if (pair? _%hd152984153049%_)
                                                    (let ((_%hd152986153054%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd152984153049%_)))
                                                          (_%tl152987153056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd152984153049%_))))
                                                      (let ((_%id153059%_
                                                             _%hd152986153054%_))
                                                        (if (pair? _%tl152987153056%_)
                                                            (let ((_%hd152988153061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl152987153056%_)))
                          (_%tl152989153063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl152987153056%_))))
                      (let ((_%expr1153066%_ _%hd152988153061%_))
                        (if (null? _%tl152989153063%_)
                            (if (null? _%tl152985153051%_)
                                (if (pair? _%tl152973153046%_)
                                    (let ((_%hd152974153068%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl152973153046%_)))
                                          (_%tl152975153070%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl152973153046%_))))
                                      (if (pair? _%hd152974153068%_)
                                          (let ((_%hd152976153073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd152974153068%_)))
                                                (_%tl152977153075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd152974153068%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd152976153073%_
                                                         'if))
                                                (if (pair? _%tl152977153075%_)
                                                    (let ((_%hd152978153078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl152977153075%_)))
                                                          (_%tl152979153080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl152977153075%_))))
                                                      (if ((lambda (_%g153082153084%_)
                                                             (eq? _%g153082153084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id153059%_))
                   _%hd152978153078%_)
                  (if (pair? _%tl152979153080%_)
                      (let ((_%hd152980153087%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl152979153080%_)))
                            (_%tl152981153089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl152979153080%_))))
                        (if ((lambda (_%g153091153093%_)
                               (eq? _%g153091153093%_ _%id153059%_))
                             _%hd152980153087%_)
                            (if (pair? _%tl152981153089%_)
                                (let ((_%hd152982153096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl152981153089%_)))
                                      (_%tl152983153098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl152981153089%_))))
                                  (let ((_%expr2153101%_ _%hd152982153096%_))
                                    (if (null? _%tl152983153098%_)
                                        (if (null? _%tl152975153070%_)
                                            (_%K152969153036%_
                                             _%expr2153101%_
                                             _%expr1153066%_
                                             _%id153059%_)
                                            (_%else152967152999%_))
                                        (_%else152967152999%_))))
                                (_%else152967152999%_))
                            (_%else152967152999%_)))
                      (_%else152967152999%_))
                  (_%else152967152999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else152967152999%_))
                                                (_%else152967152999%_)))
                                          (_%else152967152999%_)))
                                    (_%else152967152999%_))
                                (_%else152967152999%_))
                            (_%else152967152999%_))))
                    (_%else152967152999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else152967152999%_)))
                                              (_%else152967152999%_)))
                                        (_%else152967152999%_))
                                    (_%else152967152999%_)))
                              (_%else152967152999%_)))
                        _%code152964%_)))
                 (_%simplify-let152361%_
                  (lambda (_%code152663%_)
                    (let* ((_%code152664152736%_ _%code152663%_)
                           (_%else152669152744%_ (lambda () _%code152663%_)))
                      (let ((_%K152728152944%_
                             (lambda (_%expr152942%_) _%expr152942%_))
                            (_%K152711152890%_
                             (lambda (_%body152886%_
                                      _%expr152887%_
                                      _%id152888%_)
                               (cons 'let
                                     (cons (cons (cons _%id152888%_
                                                       (cons _%expr152887%_
                                                             '()))
                                                 '())
                                           _%body152886%_))))
                            (_%K152688152814%_
                             (lambda (_%body152808%_
                                      _%expr2152809%_
                                      _%id2152810%_
                                      _%expr1152811%_
                                      _%id1152812%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1152812%_
                                                       (cons _%expr1152811%_
                                                             '()))
                                                 (cons (cons _%id2152810%_
                                                             (cons _%expr2152809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body152808%_))))
                            (_%K152671152753%_
                             (lambda (_%body152748%_
                                      _%bind152749%_
                                      _%expr1152750%_
                                      _%id1152751%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1152751%_
                                                       (cons _%expr1152750%_
                                                             '()))
                                                 _%bind152749%_)
                                           _%body152748%_)))))
                        (if (pair? _%code152664152736%_)
                            (let ((_%tl152730152949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code152664152736%_)))
                                  (_%hd152729152947%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code152664152736%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd152729152947%_ 'let))
                                  (if (pair? _%tl152730152949%_)
                                      (let ((_%tl152732152954%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl152730152949%_)))
                                            (_%hd152731152952%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl152730152949%_))))
                                        (if (null? _%hd152731152952%_)
                                            (if (pair? _%tl152732152954%_)
                                                (let ((_%tl152734152959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl152732152954%_)))
                                                      (_%hd152733152957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl152732152954%_))))
                                                  (if (null? _%tl152734152959%_)
                                                      (let ((_%expr152962%_
                                                             _%hd152733152957%_))
                                                        (_%K152728152944%_
                                                         _%expr152962%_))
                                                      (_%else152669152744%_)))
                                                (_%else152669152744%_))
                                            (if (pair? _%hd152731152952%_)
                                                (let ((_%tl152723152905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd152731152952%_)))
                                                      (_%hd152722152903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd152731152952%_))))
                                                  (if (pair? _%hd152722152903%_)
                                                      (let ((_%tl152725152910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd152722152903%_)))
                    (_%hd152724152908%_
                     (let () (declare (not safe)) (##car _%hd152722152903%_))))
                (if (pair? _%tl152725152910%_)
                    (let ((_%tl152727152917%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl152725152910%_)))
                          (_%hd152726152915%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl152725152910%_))))
                      (if (null? _%tl152727152917%_)
                          (if (null? _%tl152723152905%_)
                              (if (pair? _%tl152732152954%_)
                                  (let ((_%tl152717152924%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl152732152954%_)))
                                        (_%hd152716152922%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl152732152954%_))))
                                    (if (pair? _%hd152716152922%_)
                                        (let ((_%tl152719152929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd152716152922%_)))
                                              (_%hd152718152927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd152716152922%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd152718152927%_
                                                       'let))
                                              (if (pair? _%tl152719152929%_)
                                                  (let ((_%tl152721152934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl152719152929%_)))
                                                        (_%hd152720152932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl152719152929%_))))
                                                    (if (null? _%hd152720152932%_)
                                                        (if (null? _%tl152717152924%_)
                                                            (let ((_%id152913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd152724152908%_)
                          (_%expr152920%_ _%hd152726152915%_)
                          (_%body152937%_ _%tl152721152934%_))
                      (_%K152711152890%_
                       _%body152937%_
                       _%expr152920%_
                       _%id152913%_))
                    (_%else152669152744%_))
                (if (pair? _%hd152720152932%_)
                    (let ((_%tl152700152863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd152720152932%_)))
                          (_%hd152699152861%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd152720152932%_))))
                      (if (pair? _%hd152699152861%_)
                          (let ((_%tl152702152868%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd152699152861%_)))
                                (_%hd152701152866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd152699152861%_))))
                            (if (pair? _%tl152702152868%_)
                                (let ((_%tl152704152875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl152702152868%_)))
                                      (_%hd152703152873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl152702152868%_))))
                                  (if (null? _%tl152704152875%_)
                                      (if (null? _%tl152700152863%_)
                                          (if (null? _%tl152717152924%_)
                                              (let ((_%id1152837%_
                                                     _%hd152724152908%_)
                                                    (_%expr1152844%_
                                                     _%hd152726152915%_)
                                                    (_%id2152871%_
                                                     _%hd152701152866%_)
                                                    (_%expr2152878%_
                                                     _%hd152703152873%_)
                                                    (_%body152880%_
                                                     _%tl152721152934%_))
                                                (_%K152688152814%_
                                                 _%body152880%_
                                                 _%expr2152878%_
                                                 _%id2152871%_
                                                 _%expr1152844%_
                                                 _%id1152837%_))
                                              (_%else152669152744%_))
                                          (_%else152669152744%_))
                                      (_%else152669152744%_)))
                                (_%else152669152744%_)))
                          (_%else152669152744%_)))
                    (_%else152669152744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else152669152744%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd152718152927%_
                                                           'let*))
                                                  (if (pair? _%tl152719152929%_)
                                                      (let ((_%tl152681152797%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl152719152929%_)))
                    (_%hd152680152795%_
                     (let () (declare (not safe)) (##car _%tl152719152929%_))))
                (if (null? _%tl152717152924%_)
                    (let ((_%id1152776%_ _%hd152724152908%_)
                          (_%expr1152783%_ _%hd152726152915%_)
                          (_%bind152800%_ _%hd152680152795%_)
                          (_%body152802%_ _%tl152681152797%_))
                      (_%K152671152753%_
                       _%body152802%_
                       _%bind152800%_
                       _%expr1152783%_
                       _%id1152776%_))
                    (_%else152669152744%_)))
              (_%else152669152744%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else152669152744%_))))
                                        (_%else152669152744%_)))
                                  (_%else152669152744%_))
                              (_%else152669152744%_))
                          (_%else152669152744%_)))
                    (_%else152669152744%_)))
              (_%else152669152744%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else152669152744%_))))
                                      (_%else152669152744%_))
                                  (_%else152669152744%_)))
                            (_%else152669152744%_))))))
                 (_%generate-values152362%_
                  (lambda (_%hd152476%_ _%body152477%_)
                    (let _%lp152479%_ ((_%rest152481%_ _%hd152476%_)
                                       (_%bind152482%_ '())
                                       (_%check152483%_ '())
                                       (_%post152484%_ '()))
                      (let* ((_%__stx156607156608%_ _%rest152481%_)
                             (_%g152487152498%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx156607156608%_)))))
                        (let ((_%__kont156609156610%_
                               (lambda (_%L152525%_ _%L152526%_)
                                 (let* ((_%__stx156563156564%_ _%L152526%_)
                                        (_%g152541152566%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx156563156564%_)))))
                                   (let ((_%__kont156565156566%_
                                          (lambda (_%L152639%_ _%L152640%_)
                                            (let ((_%eid152654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L152640%_)))
                                                  (_%expr152655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152355%_
                                                      _%L152639%_))))
                                              (_%lp152479%_
                                               _%L152525%_
                                               (cons (cons _%eid152654%_
                                                           (cons _%expr152655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152482%_)
                                               _%check152483%_
                                               _%post152484%_))))
                                         (_%__kont156567156568%_
                                          (lambda (_%L152587%_ _%L152588%_)
                                            (let* ((_%vals152601%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values152603%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals152601%_
                                                     _%L152588%_
                                                     _%L152587%_))
                                                   (_%refs152605%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals152601%_
                                                     _%L152588%_))
                                                   (_%expr152607%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self152355%_
                                                       _%L152587%_))))
                                              (_%lp152479%_
                                               _%L152525%_
                                               (cons (cons _%vals152601%_
                                                           (cons _%expr152607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152482%_)
                                               (cons _%check-values152603%_
                                                     _%check152483%_)
                                               (cons _%refs152605%_
                                                     _%post152484%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx156563156564%_))
                                         (let ((_%e152545152615%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx156563156564%_))))
                                           (let ((_%tl152547152620%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152545152615%_)))
                                                 (_%hd152546152618%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152545152615%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152546152618%_))
                                                 (let ((_%e152548152623%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152546152618%_))))
                                                   (let ((_%tl152550152628%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152548152623%_)))
                                                         (_%hd152549152626%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152548152623%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152550152628%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152547152620%_))
                     (let ((_%e152551152631%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152547152620%_))))
                       (let ((_%tl152553152636%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152551152631%_)))
                             (_%hd152552152634%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152551152631%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152553152636%_))
                             (_%__kont156565156566%_
                              _%hd152552152634%_
                              _%hd152549152626%_)
                             (let ()
                               (declare (not safe))
                               (_%g152541152566%_)))))
                     (let () (declare (not safe)) (_%g152541152566%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152547152620%_))
                     (let ((_%e152559152579%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152547152620%_))))
                       (let ((_%tl152561152584%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152559152579%_)))
                             (_%hd152560152582%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152559152579%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152561152584%_))
                             (_%__kont156567156568%_
                              _%hd152560152582%_
                              _%hd152546152618%_)
                             (let ()
                               (declare (not safe))
                               (_%g152541152566%_)))))
                     (let () (declare (not safe)) (_%g152541152566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152547152620%_))
                                                     (let ((_%e152559152579%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152547152620%_))))
                                                       (let ((_%tl152561152584%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152559152579%_)))
                     (_%hd152560152582%_
                      (let () (declare (not safe)) (##car _%e152559152579%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152561152584%_))
                     (_%__kont156567156568%_
                      _%hd152560152582%_
                      _%hd152546152618%_)
                     (let () (declare (not safe)) (_%g152541152566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152541152566%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152541152566%_)))))))
                              (_%__kont156611156612%_
                               (lambda ()
                                 (let* ((_%body152505%_
                                         (if _%compiled-body?152357%_
                                             _%body152477%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self152355%_
                                                _%body152477%_))))
                                        (_%body152507%_
                                         (_%generate-values-post152363%_
                                          _%post152484%_
                                          _%body152505%_))
                                        (_%body152509%_
                                         (_%generate-values-check152364%_
                                          _%check152483%_
                                          _%body152507%_)))
                                   (cons 'let
                                         (cons (reverse _%bind152482%_)
                                               (cons _%body152509%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156607156608%_))
                              (let ((_%e152491152517%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156607156608%_))))
                                (let ((_%tl152493152522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152491152517%_)))
                                      (_%hd152492152520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152491152517%_))))
                                  (_%__kont156609156610%_
                                   _%tl152493152522%_
                                   _%hd152492152520%_)))
                              (_%__kont156611156612%_)))))))
                 (_%generate-values-post152363%_
                  (lambda (_%post152435%_ _%body152436%_)
                    (let _%lp152438%_ ((_%rest152440%_ _%post152435%_)
                                       (_%body152441%_ _%body152436%_))
                      (let* ((_%rest152442152450%_ _%rest152440%_)
                             (_%else152444152458%_ (lambda () _%body152441%_))
                             (_%K152446152464%_
                              (lambda (_%rest152461%_ _%bind152462%_)
                                (_%lp152438%_
                                 _%rest152461%_
                                 (cons 'let
                                       (cons _%bind152462%_
                                             (cons _%body152441%_ '())))))))
                        (if (pair? _%rest152442152450%_)
                            (let ((_%hd152447152467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152442152450%_)))
                                  (_%tl152448152469%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152442152450%_))))
                              (let* ((_%bind152472%_ _%hd152447152467%_)
                                     (_%rest152474%_ _%tl152448152469%_))
                                (_%K152446152464%_
                                 _%rest152474%_
                                 _%bind152472%_)))
                            (_%else152444152458%_))))))
                 (_%generate-values-check152364%_
                  (lambda (_%check152432%_ _%body152433%_)
                    (cons 'begin
                          (let ((__tmp157455 (cons _%body152433%_ '()))
                                (__tmp157454 (reverse _%check152432%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157455 __tmp157454))))))
          (let* ((_%g152366152383%_
                  (lambda (_%g152367152380%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152367152380%_))))
                 (_%g152365152429%_
                  (lambda (_%g152367152386%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152367152386%_))
                        (let ((_%e152370152388%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152367152386%_))))
                          (let ((_%hd152371152391%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152370152388%_)))
                                (_%tl152372152393%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152370152388%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152372152393%_))
                                (let ((_%e152373152396%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152372152393%_))))
                                  (let ((_%hd152374152399%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152373152396%_)))
                                        (_%tl152375152401%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152373152396%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152375152401%_))
                                        (let ((_%e152376152404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152375152401%_))))
                                          (let ((_%hd152377152407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152376152404%_)))
                                                (_%tl152378152409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152376152404%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152378152409%_))
                                                ((lambda (_%L152412%_
                                                          _%L152413%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L152413%_)
                                                       (_%generate-simple152359%_
                                                        _%L152413%_
                                                        _%L152412%_)
                                                       (_%generate-values152362%_
                                                        _%L152413%_
                                                        _%L152412%_)))
                                                 _%hd152377152407%_
                                                 _%hd152374152399%_)
                                                (_%g152366152383%_
                                                 _%g152367152386%_))))
                                        (_%g152366152383%_
                                         _%g152367152386%_))))
                                (_%g152366152383%_ _%g152367152386%_))))
                        (_%g152366152383%_ _%g152367152386%_)))))
            (_%g152365152429%_ _%stx152356%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self153109%_ _%stx153110%_)
        (let ((_%compiled-body?153112%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self153109%_
           _%stx153110%_
           _%compiled-body?153112%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g157456_
        (let ((_g157457_ (let () (declare (not safe)) (##length _g157456_))))
          (cond ((let () (declare (not safe)) (##fx= _g157457_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g157456_))
                ((let () (declare (not safe)) (##fx= _g157457_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g157456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g157456_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals152249%_ _%hd152250%_)
        (let _%lp152252%_ ((_%rest152254%_ _%hd152250%_)
                           (_%k152255%_ '0)
                           (_%r152256%_ '()))
          (let* ((_%__stx156621156622%_ _%rest152254%_)
                 (_%g152261152278%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx156621156622%_)))))
            (let ((_%__kont156623156624%_
                   (lambda (_%L152341%_)
                     (_%lp152252%_
                      _%L152341%_
                      (let () (declare (not safe)) (##fx+ _%k152255%_ '1))
                      _%r152256%_)))
                  (_%__kont156625156626%_
                   (lambda (_%L152314%_ _%L152315%_)
                     (_%lp152252%_
                      _%L152314%_
                      (let () (declare (not safe)) (##fx+ _%k152255%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L152315%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals152249%_
                                         _%k152255%_
                                         _%L152314%_)
                                        '()))
                            _%r152256%_))))
                  (_%__kont156627156628%_
                   (lambda (_%L152290%_)
                     (let ((__tmp157458
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L152290%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals152249%_
                                               _%k152255%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp157458 _%r152256%_))))
                  (_%__kont156629156630%_ (lambda () (reverse _%r152256%_))))
              (let ((_%g152259152301%_
                     (lambda ()
                       (let ((_%L152290%_ _%__stx156621156622%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L152290%_))
                             (_%__kont156627156628%_ _%L152290%_)
                             (_%__kont156629156630%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx156621156622%_))
                    (let ((_%e152264152330%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx156621156622%_))))
                      (let ((_%tl152266152335%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152264152330%_)))
                            (_%hd152265152333%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152264152330%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd152265152333%_))
                            (let ((_%e152267152338%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd152265152333%_))))
                              (if (equal? _%e152267152338%_ '#f)
                                  (_%__kont156623156624%_ _%tl152266152335%_)
                                  (_%__kont156625156626%_
                                   _%tl152266152335%_
                                   _%hd152265152333%_)))
                            (_%__kont156625156626%_
                             _%tl152266152335%_
                             _%hd152265152333%_))))
                    (let () (declare (not safe)) (_%g152259152301%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self151928%_ _%stx151929%_ _%compiled-body?151930%_)
        (letrec ((_%generate-simple151932%_
                  (lambda (_%hd152234%_ _%body152235%_)
                    (gxc#generate-runtime-simple-let
                     _%self151928%_
                     'letrec
                     _%hd152234%_
                     _%body152235%_
                     _%compiled-body?151930%_)))
                 (_%generate-values151933%_
                  (lambda (_%hd152013%_ _%body152014%_)
                    (let _%lp152016%_ ((_%rest152018%_ _%hd152013%_)
                                       (_%bind152019%_ '())
                                       (_%check152020%_ '())
                                       (_%post152021%_ '()))
                      (let* ((_%__stx156695156696%_ _%rest152018%_)
                             (_%g152024152035%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx156695156696%_)))))
                        (let ((_%__kont156697156698%_
                               (lambda (_%L152062%_ _%L152063%_)
                                 (let* ((_%__stx156651156652%_ _%L152063%_)
                                        (_%g152078152103%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx156651156652%_)))))
                                   (let ((_%__kont156653156654%_
                                          (lambda (_%L152210%_ _%L152211%_)
                                            (let ((_%eid152225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L152211%_)))
                                                  (_%expr152226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151928%_
                                                      _%L152210%_))))
                                              (_%lp152016%_
                                               _%L152062%_
                                               (cons (cons _%eid152225%_
                                                           (cons _%expr152226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152019%_)
                                               _%check152020%_
                                               _%post152021%_))))
                                         (_%__kont156655156656%_
                                          (lambda (_%L152124%_ _%L152125%_)
                                            (let* ((_%vals152138%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values152140%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals152138%_
                                                     _%L152125%_
                                                     _%L152124%_))
                                                   (_%refs152142%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals152138%_
                                                     _%L152125%_))
                                                   (_%expr152144%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self151928%_
                                                       _%L152124%_))))
                                              (_%lp152016%_
                                               _%L152062%_
                                               (let ((__tmp157460
                                                      (cons (cons _%vals152138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr152144%_ '()))
                    _%bind152019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp157459
                                                      (map (lambda (_%e152146152148%_)
                                                             (let* ((_%g152150152159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e152146152148%_)
                            (_%E152152152163%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g152150152159%_
                                        '([eid _])))
                               '#!void))
                            (_%K152153152168%_
                             (lambda (_%eid152166%_)
                               (cons _%eid152166%_ (cons '#!void '())))))
                       (if (pair? _%g152150152159%_)
                           (let ((_%hd152154152171%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g152150152159%_)))
                                 (_%tl152155152173%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g152150152159%_))))
                             (let ((_%eid152176%_ _%hd152154152171%_))
                               (if (pair? _%tl152155152173%_)
                                   (let ((_%tl152157152178%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl152155152173%_))))
                                     (if (null? _%tl152157152178%_)
                                         (_%K152153152168%_ _%eid152176%_)
                                         (_%E152152152163%_)))
                                   (_%E152152152163%_))))
                           (_%E152152152163%_))))
                   _%refs152142%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp157460
                                                  __tmp157459))
                                               (cons _%check-values152140%_
                                                     _%check152020%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs152142%_
                                                  _%post152021%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx156651156652%_))
                                         (let ((_%e152082152186%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx156651156652%_))))
                                           (let ((_%tl152084152191%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152082152186%_)))
                                                 (_%hd152083152189%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152082152186%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152083152189%_))
                                                 (let ((_%e152085152194%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152083152189%_))))
                                                   (let ((_%tl152087152199%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152085152194%_)))
                                                         (_%hd152086152197%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152085152194%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152087152199%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152084152191%_))
                     (let ((_%e152088152202%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152084152191%_))))
                       (let ((_%tl152090152207%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152088152202%_)))
                             (_%hd152089152205%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152088152202%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152090152207%_))
                             (_%__kont156653156654%_
                              _%hd152089152205%_
                              _%hd152086152197%_)
                             (let ()
                               (declare (not safe))
                               (_%g152078152103%_)))))
                     (let () (declare (not safe)) (_%g152078152103%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152084152191%_))
                     (let ((_%e152096152116%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152084152191%_))))
                       (let ((_%tl152098152121%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152096152116%_)))
                             (_%hd152097152119%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152096152116%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152098152121%_))
                             (_%__kont156655156656%_
                              _%hd152097152119%_
                              _%hd152083152189%_)
                             (let ()
                               (declare (not safe))
                               (_%g152078152103%_)))))
                     (let () (declare (not safe)) (_%g152078152103%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152084152191%_))
                                                     (let ((_%e152096152116%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152084152191%_))))
                                                       (let ((_%tl152098152121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152096152116%_)))
                     (_%hd152097152119%_
                      (let () (declare (not safe)) (##car _%e152096152116%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152098152121%_))
                     (_%__kont156655156656%_
                      _%hd152097152119%_
                      _%hd152083152189%_)
                     (let () (declare (not safe)) (_%g152078152103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152078152103%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152078152103%_)))))))
                              (_%__kont156699156700%_
                               (lambda ()
                                 (let* ((_%body152042%_
                                         (if _%compiled-body?151930%_
                                             _%body152014%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self151928%_
                                                _%body152014%_))))
                                        (_%body152044%_
                                         (_%generate-values-post151935%_
                                          _%post152021%_
                                          _%body152042%_))
                                        (_%body152046%_
                                         (_%generate-values-check151934%_
                                          _%check152020%_
                                          _%body152044%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind152019%_)
                                               (cons _%body152046%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156695156696%_))
                              (let ((_%e152028152054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156695156696%_))))
                                (let ((_%tl152030152059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152028152054%_)))
                                      (_%hd152029152057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152028152054%_))))
                                  (_%__kont156697156698%_
                                   _%tl152030152059%_
                                   _%hd152029152057%_)))
                              (_%__kont156699156700%_)))))))
                 (_%generate-values-check151934%_
                  (lambda (_%check152010%_ _%body152011%_)
                    (cons 'begin
                          (let ((__tmp157462 (cons _%body152011%_ '()))
                                (__tmp157461 (reverse _%check152010%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157462 __tmp157461)))))
                 (_%generate-values-post151935%_
                  (lambda (_%post152003%_ _%body152004%_)
                    (cons 'begin
                          (let ((__tmp157466 (cons _%body152004%_ '()))
                                (__tmp157463
                                 (let ((__tmp157465
                                        (lambda (_%g152005152007%_)
                                          (cons 'set! _%g152005152007%_)))
                                       (__tmp157464 (reverse _%post152003%_)))
                                   (declare (not safe))
                                   (##map __tmp157465 __tmp157464))))
                            (declare (not safe))
                            (__foldr1 cons __tmp157466 __tmp157463))))))
          (let* ((_%g151937151954%_
                  (lambda (_%g151938151951%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151938151951%_))))
                 (_%g151936152000%_
                  (lambda (_%g151938151957%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151938151957%_))
                        (let ((_%e151941151959%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151938151957%_))))
                          (let ((_%hd151942151962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151941151959%_)))
                                (_%tl151943151964%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151941151959%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151943151964%_))
                                (let ((_%e151944151967%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151943151964%_))))
                                  (let ((_%hd151945151970%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151944151967%_)))
                                        (_%tl151946151972%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151944151967%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151946151972%_))
                                        (let ((_%e151947151975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151946151972%_))))
                                          (let ((_%hd151948151978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151947151975%_)))
                                                (_%tl151949151980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151947151975%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151949151980%_))
                                                ((lambda (_%L151983%_
                                                          _%L151984%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L151984%_)
                                                       (_%generate-simple151932%_
                                                        _%L151984%_
                                                        _%L151983%_)
                                                       (_%generate-values151933%_
                                                        _%L151984%_
                                                        _%L151983%_)))
                                                 _%hd151948151978%_
                                                 _%hd151945151970%_)
                                                (_%g151937151954%_
                                                 _%g151938151957%_))))
                                        (_%g151937151954%_
                                         _%g151938151957%_))))
                                (_%g151937151954%_ _%g151938151957%_))))
                        (_%g151937151954%_ _%g151938151957%_)))))
            (_%g151936152000%_ _%stx151929%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self152240%_ _%stx152241%_)
        (let ((_%compiled-body?152243%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self152240%_
           _%stx152241%_
           _%compiled-body?152243%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g157467_
        (let ((_g157468_ (let () (declare (not safe)) (##length _g157467_))))
          (cond ((let () (declare (not safe)) (##fx= _g157468_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g157467_))
                ((let () (declare (not safe)) (##fx= _g157468_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g157467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g157467_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self151509%_ _%stx151510%_)
        (letrec ((_%generate-values151512%_
                  (lambda (_%hd151755%_ _%body151756%_)
                    (let _%lp151758%_ ((_%rest151760%_ _%hd151755%_)
                                       (_%bind151761%_ '()))
                      (let* ((_%rest151762151770%_ _%rest151760%_)
                             (_%else151764151781%_
                              (lambda ()
                                (let ((_%bind151778%_ (reverse _%bind151761%_))
                                      (_%body151779%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self151509%_
                                          _%body151756%_))))
                                  (cons 'letrec*
                                        (cons _%bind151778%_
                                              (cons _%body151779%_ '()))))))
                             (_%K151766151915%_
                              (lambda (_%rest151784%_ _%hd-bind151785%_)
                                (let* ((_%__stx156709156710%_
                                        _%hd-bind151785%_)
                                       (_%g151788151813%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx156709156710%_)))))
                                  (let ((_%__kont156711156712%_
                                         (lambda (_%L151894%_ _%L151895%_)
                                           (let ((_%eid151909%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L151895%_)))
                                                 (_%expr151910%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self151509%_
                                                     _%L151894%_))))
                                             (_%lp151758%_
                                              _%rest151784%_
                                              (cons (cons _%eid151909%_
                                                          (cons _%expr151910%_
                                                                '()))
                                                    _%bind151761%_)))))
                                        (_%__kont156713156714%_
                                         (lambda (_%L151834%_ _%L151835%_)
                                           (let* ((_%vals151854%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp151856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values151858%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp151856%_
                                                    _%L151835%_
                                                    _%L151834%_))
                                                  (_%refs151860%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals151854%_
                                                    _%L151835%_))
                                                  (_%expr151862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151509%_
                                                      _%L151834%_))))
                                             (_%lp151758%_
                                              _%rest151784%_
                                              (let ((__tmp157469
                                                     (cons (cons _%vals151854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp151856%_
                                                       (cons _%expr151862%_
                                                             '()))
                                                 '())
                                           (cons _%check-values151858%_
                                                 (cons _%tmp151856%_ '()))))
                               '()))
                   _%bind151761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp157469
                                                 _%refs151860%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx156709156710%_))
                                        (let ((_%e151792151870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx156709156710%_))))
                                          (let ((_%tl151794151875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151792151870%_)))
                                                (_%hd151793151873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151792151870%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd151793151873%_))
                                                (let ((_%e151795151878%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd151793151873%_))))
                                                  (let ((_%tl151797151883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151795151878%_)))
                                                        (_%hd151796151881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151795151878%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl151797151883%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl151794151875%_))
                                                            (let ((_%e151798151886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl151794151875%_))))
                      (let ((_%tl151800151891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e151798151886%_)))
                            (_%hd151799151889%_
                             (let ()
                               (declare (not safe))
                               (##car _%e151798151886%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl151800151891%_))
                            (_%__kont156711156712%_
                             _%hd151799151889%_
                             _%hd151796151881%_)
                            (let ()
                              (declare (not safe))
                              (_%g151788151813%_)))))
                    (let () (declare (not safe)) (_%g151788151813%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl151794151875%_))
                    (let ((_%e151806151826%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl151794151875%_))))
                      (let ((_%tl151808151831%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e151806151826%_)))
                            (_%hd151807151829%_
                             (let ()
                               (declare (not safe))
                               (##car _%e151806151826%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl151808151831%_))
                            (_%__kont156713156714%_
                             _%hd151807151829%_
                             _%hd151793151873%_)
                            (let ()
                              (declare (not safe))
                              (_%g151788151813%_)))))
                    (let () (declare (not safe)) (_%g151788151813%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl151794151875%_))
                                                    (let ((_%e151806151826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl151794151875%_))))
                                                      (let ((_%tl151808151831%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e151806151826%_)))
                    (_%hd151807151829%_
                     (let () (declare (not safe)) (##car _%e151806151826%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl151808151831%_))
                    (_%__kont156713156714%_
                     _%hd151807151829%_
                     _%hd151793151873%_)
                    (let () (declare (not safe)) (_%g151788151813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g151788151813%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g151788151813%_))))))))
                        (if (pair? _%rest151762151770%_)
                            (let ((_%hd151767151918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest151762151770%_)))
                                  (_%tl151768151920%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest151762151770%_))))
                              (let* ((_%hd-bind151923%_ _%hd151767151918%_)
                                     (_%rest151925%_ _%tl151768151920%_))
                                (_%K151766151915%_
                                 _%rest151925%_
                                 _%hd-bind151923%_)))
                            (_%else151764151781%_))))))
                 (_%generate-letrec?151513%_
                  (lambda (_%hd151645%_)
                    (let _%lp151647%_ ((_%rest151649%_ _%hd151645%_))
                      (let* ((_%rest151650151658%_ _%rest151649%_)
                             (_%else151652151666%_ (lambda () '#t))
                             (_%K151654151743%_
                              (lambda (_%rest151669%_ _%hd-bind151670%_)
                                (let* ((_%g151672151689%_
                                        (lambda (_%g151673151686%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g151673151686%_))))
                                       (_%g151671151740%_
                                        (lambda (_%g151673151692%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g151673151692%_))
                                              (let ((_%e151676151694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g151673151692%_))))
                                                (let ((_%hd151677151697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e151676151694%_)))
                                                      (_%tl151678151699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e151676151694%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd151677151697%_))
                                                      (let ((_%e151679151702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd151677151697%_))))
                (let ((_%hd151680151705%_
                       (let () (declare (not safe)) (##car _%e151679151702%_)))
                      (_%tl151681151707%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e151679151702%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl151681151707%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl151678151699%_))
                          (let ((_%e151682151710%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl151678151699%_))))
                            (let ((_%hd151683151713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151682151710%_)))
                                  (_%tl151684151715%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151682151710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl151684151715%_))
                                  ((lambda (_%L151718%_ _%L151719%_)
                                     (if (_%is-lambda-expr?151514%_
                                          _%L151718%_)
                                         (_%lp151647%_ _%rest151669%_)
                                         '#f))
                                   _%hd151683151713%_
                                   _%hd151680151705%_)
                                  (_%g151672151689%_ _%g151673151692%_))))
                          (_%g151672151689%_ _%g151673151692%_))
                      (_%g151672151689%_ _%g151673151692%_))))
              (_%g151672151689%_ _%g151673151692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g151672151689%_
                                               _%g151673151692%_)))))
                                  (_%g151671151740%_ _%hd-bind151670%_)))))
                        (if (pair? _%rest151650151658%_)
                            (let ((_%hd151655151746%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest151650151658%_)))
                                  (_%tl151656151748%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest151650151658%_))))
                              (let* ((_%hd-bind151751%_ _%hd151655151746%_)
                                     (_%rest151753%_ _%tl151656151748%_))
                                (_%K151654151743%_
                                 _%rest151753%_
                                 _%hd-bind151751%_)))
                            (_%else151652151666%_))))))
                 (_%is-lambda-expr?151514%_
                  (lambda (_%expr151582%_)
                    (let* ((_%__stx156753156754%_ _%expr151582%_)
                           (_%g151585151599%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156753156754%_)))))
                      (let ((_%__kont156755156756%_
                             (lambda (_%L151627%_ _%L151628%_) '#t))
                            (_%__kont156757156758%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx156753156754%_))
                            (let ((_%e151589151611%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx156753156754%_))))
                              (let ((_%tl151591151616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e151589151611%_)))
                                    (_%hd151590151614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e151589151611%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd151590151614%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd151590151614%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl151591151616%_))
                                            (let ((_%e151592151619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl151591151616%_))))
                                              (let ((_%tl151594151624%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e151592151619%_)))
                                                    (_%hd151593151622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e151592151619%_))))
                                                (_%__kont156755156756%_
                                                 _%tl151594151624%_
                                                 _%hd151593151622%_)))
                                            (_%__kont156757156758%_))
                                        (_%__kont156757156758%_))
                                    (_%__kont156757156758%_))))
                            (_%__kont156757156758%_)))))))
          (let* ((_%g151516151533%_
                  (lambda (_%g151517151530%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151517151530%_))))
                 (_%g151515151579%_
                  (lambda (_%g151517151536%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151517151536%_))
                        (let ((_%e151520151538%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151517151536%_))))
                          (let ((_%hd151521151541%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151520151538%_)))
                                (_%tl151522151543%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151520151538%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151522151543%_))
                                (let ((_%e151523151546%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151522151543%_))))
                                  (let ((_%hd151524151549%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151523151546%_)))
                                        (_%tl151525151551%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151523151546%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151525151551%_))
                                        (let ((_%e151526151554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151525151551%_))))
                                          (let ((_%hd151527151557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151526151554%_)))
                                                (_%tl151528151559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151526151554%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151528151559%_))
                                                ((lambda (_%L151562%_
                                                          _%L151563%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L151563%_)
                                                       (if (_%generate-letrec?151513%_
                                                            _%L151563%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151509%_
                                                            'letrec
                                                            _%L151563%_
                                                            _%L151562%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151509%_
                                                            'letrec*
                                                            _%L151563%_
                                                            _%L151562%_
                                                            '#f))
                                                       (_%generate-values151512%_
                                                        _%L151563%_
                                                        _%L151562%_)))
                                                 _%hd151527151557%_
                                                 _%hd151524151549%_)
                                                (_%g151516151533%_
                                                 _%g151517151536%_))))
                                        (_%g151516151533%_
                                         _%g151517151536%_))))
                                (_%g151516151533%_ _%g151517151536%_))))
                        (_%g151516151533%_ _%g151517151536%_)))))
            (_%g151515151579%_ _%stx151510%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd151446%_)
        (let _%lp151448%_ ((_%rest151450%_ _%hd151446%_))
          (let* ((_%rest151451151467%_ _%rest151450%_)
                 (_%else151454151475%_ (lambda () '#f)))
            (let ((_%K151457151488%_
                   (lambda (_%rest151486%_) (_%lp151448%_ _%rest151486%_)))
                  (_%K151456151480%_ (lambda () '#t)))
              (let ((_%try-match151453151483%_
                     (lambda ()
                       (if (null? _%rest151451151467%_)
                           (_%K151456151480%_)
                           (_%else151454151475%_)))))
                (if (pair? _%rest151451151467%_)
                    (let ((_%tl151459151493%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151451151467%_)))
                          (_%hd151458151491%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151451151467%_))))
                      (if (pair? _%hd151458151491%_)
                          (let ((_%tl151461151498%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd151458151491%_)))
                                (_%hd151460151496%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd151458151491%_))))
                            (if (pair? _%hd151460151496%_)
                                (let ((_%tl151465151501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151460151496%_))))
                                  (if (null? _%tl151465151501%_)
                                      (if (pair? _%tl151461151498%_)
                                          (let ((_%tl151463151504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl151461151498%_))))
                                            (if (null? _%tl151463151504%_)
                                                (let ((_%rest151507%_
                                                       _%tl151459151493%_))
                                                  (_%lp151448%_
                                                   _%rest151507%_))
                                                (_%else151454151475%_)))
                                          (_%else151454151475%_))
                                      (_%else151454151475%_)))
                                (_%else151454151475%_)))
                          (_%else151454151475%_)))
                    (_%try-match151453151483%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self151357%_
               _%form151358%_
               _%hd151359%_
               _%body151360%_
               _%compiled-body?151361%_)
        (letrec ((_%generate1151363%_
                  (lambda (_%bind151402%_)
                    (let* ((_%bind151403151414%_ _%bind151402%_)
                           (_%E151405151418%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind151403151414%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K151406151424%_
                            (lambda (_%expr151421%_ _%id151422%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id151422%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self151357%_
                                             _%expr151421%_))
                                          '())))))
                      (if (pair? _%bind151403151414%_)
                          (let ((_%hd151407151427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind151403151414%_)))
                                (_%tl151408151429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind151403151414%_))))
                            (if (pair? _%hd151407151427%_)
                                (let ((_%hd151411151432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd151407151427%_)))
                                      (_%tl151412151434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151407151427%_))))
                                  (let ((_%id151437%_ _%hd151411151432%_))
                                    (if (null? _%tl151412151434%_)
                                        (if (pair? _%tl151408151429%_)
                                            (let ((_%hd151409151439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl151408151429%_)))
                                                  (_%tl151410151441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl151408151429%_))))
                                              (let ((_%expr151444%_
                                                     _%hd151409151439%_))
                                                (if (null? _%tl151410151441%_)
                                                    (_%K151406151424%_
                                                     _%expr151444%_
                                                     _%id151437%_)
                                                    (_%E151405151418%_))))
                                            (_%E151405151418%_))
                                        (_%E151405151418%_))))
                                (_%E151405151418%_)))
                          (_%E151405151418%_))))))
          (let* ((_%bind151365%_ (map _%generate1151363%_ _%hd151359%_))
                 (_%body151367%_
                  (if _%compiled-body?151361%_
                      _%body151360%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self151357%_ _%body151360%_))))
                 (_%body151399%_
                  (let* ((_%body151368151376%_ _%body151367%_)
                         (_%else151370151384%_
                          (lambda () (cons _%body151367%_ '())))
                         (_%K151372151389%_
                          (lambda (_%exprs151387%_) _%exprs151387%_)))
                    (if (pair? _%body151368151376%_)
                        (let ((_%hd151373151392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body151368151376%_)))
                              (_%tl151374151394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body151368151376%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd151373151392%_ 'begin))
                              (let ((_%exprs151397%_ _%tl151374151394%_))
                                (_%K151372151389%_ _%exprs151397%_))
                              (_%else151370151384%_)))
                        (_%else151370151384%_)))))
            (cons _%form151358%_ (cons _%bind151365%_ _%body151399%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self151257%_ _%stx151258%_)
        (letrec ((_%generate1151260%_
                  (lambda (_%datum151312%_)
                    (if (or (null? _%datum151312%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum151312%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum151312%_))
                            (eof-object? _%datum151312%_))
                        _%datum151312%_
                        (if (uninterned-symbol? _%datum151312%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum151312%_
                               '#t))
                            (if (pair? _%datum151312%_)
                                (cons (_%generate1151260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum151312%_)))
                                      (_%generate1151260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum151312%_))))
                                (if (box? _%datum151312%_)
                                    (box (_%generate1151260%_
                                          (unbox _%datum151312%_)))
                                    (if (vector? _%datum151312%_)
                                        (vector-map
                                         _%generate1151260%_
                                         _%datum151312%_)
                                        (if (or (s8vector? _%datum151312%_)
                                                (u8vector? _%datum151312%_)
                                                (s16vector? _%datum151312%_)
                                                (u16vector? _%datum151312%_)
                                                (s32vector? _%datum151312%_)
                                                (u32vector? _%datum151312%_)
                                                (s64vector? _%datum151312%_)
                                                (u64vector? _%datum151312%_)
                                                (f32vector? _%datum151312%_)
                                                (f64vector? _%datum151312%_))
                                            _%datum151312%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx151258%_)))))))))))
          (let* ((_%g151262151275%_
                  (lambda (_%g151263151272%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151263151272%_))))
                 (_%g151261151309%_
                  (lambda (_%g151263151278%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151263151278%_))
                        (let ((_%e151265151280%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151263151278%_))))
                          (let ((_%hd151266151283%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151265151280%_)))
                                (_%tl151267151285%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151265151280%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151267151285%_))
                                (let ((_%e151268151288%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151267151285%_))))
                                  (let ((_%hd151269151291%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151268151288%_)))
                                        (_%tl151270151293%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151268151288%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151270151293%_))
                                        ((lambda (_%L151296%_)
                                           (cons 'quote
                                                 (cons (_%generate1151260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L151296%_)))
                                                       '())))
                                         _%hd151269151291%_)
                                        (_%g151262151275%_
                                         _%g151263151278%_))))
                                (_%g151262151275%_ _%g151263151278%_))))
                        (_%g151262151275%_ _%g151263151278%_)))))
            (_%g151261151309%_ _%stx151258%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self150698%_ _%stx150699%_)
        (letrec ((_%compile-call150701%_
                  (lambda (_%rator150990%_ _%rands150991%_)
                    (let ((_%rator150997%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self150698%_
                              _%rator150990%_)))
                          (_%rands150998%_
                           (map (lambda (_%g150992150994%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self150698%_
                                     _%g150992150994%_)))
                                _%rands150991%_)))
                      (let* ((_%__stx156800156801%_ _%rator150997%_)
                             (_%g151001151053%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx156800156801%_)))))
                        (let ((_%__kont156802156803%_
                               (lambda (_%L151177%_
                                        _%L151178%_
                                        _%L151179%_
                                        _%L151180%_)
                                 (if (let ((__tmp157472
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands150998%_)))
                                           (__tmp157470
                                            (length (let ((__tmp157471
                                                           (lambda (_%g151216151219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g151217151221%_)
                     (cons _%g151216151219%_ _%g151217151221%_))))
              (declare (not safe))
              (__foldr1 __tmp157471 '() _%L151179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157472 __tmp157470))
                                     (let* ((_%id151224%_ _%L151180%_)
                                            (_%args151233%_
                                             (let ((__tmp157473
                                                    (lambda (_%g151225151228%_
                                                             _%g151226151230%_)
                                                      (cons _%g151225151228%_
                                                            _%g151226151230%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157473
                                                '()
                                                _%L151179%_)))
                                            (_%body151242%_
                                             (let ((__tmp157474
                                                    (lambda (_%g151234151237%_
                                                             _%g151235151239%_)
                                                      (cons _%g151234151237%_
                                                            _%g151235151239%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157474
                                                '()
                                                _%L151178%_)))
                                            (_%init151244%_
                                             (map list
                                                  _%args151233%_
                                                  _%rands150998%_)))
                                       (cons 'let
                                             (cons _%id151224%_
                                                   (cons _%init151244%_
                                                         _%body151242%_))))
                                     (let ((__tmp157475
                                            (let ((__tmp157476
                                                   (lambda (_%g151246151249%_
                                                            _%g151247151251%_)
                                                     (cons _%g151246151249%_
                                                           _%g151247151251%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157476
                                               '()
                                               _%L151179%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx150699%_
                                        __tmp157475
                                        _%rands150998%_)))))
                              (_%__kont156808156809%_
                               (lambda ()
                                 (cons _%rator150997%_ _%rands150998%_))))
                          (let ((_%__match156867156868%_
                                 (lambda (_%e151007151065%_
                                          _%hd151008151068%_
                                          _%tl151009151070%_
                                          _%e151010151073%_
                                          _%hd151011151076%_
                                          _%tl151012151078%_
                                          _%e151013151081%_
                                          _%hd151014151084%_
                                          _%tl151015151086%_
                                          _%e151016151089%_
                                          _%hd151017151092%_
                                          _%tl151018151094%_
                                          _%e151019151097%_
                                          _%hd151020151100%_
                                          _%tl151021151102%_
                                          _%e151022151105%_
                                          _%hd151023151108%_
                                          _%tl151024151110%_
                                          _%e151025151113%_
                                          _%hd151026151116%_
                                          _%tl151027151118%_
                                          _%__splice156804156805%_
                                          _%target151028151121%_
                                          _%tl151030151123%_)
                                   (letrec ((_%loop151031151126%_
                                             (lambda (_%hd151029151129%_
                                                      _%arg151035151131%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd151029151129%_))
                                                   (let ((_%e151032151134%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd151029151129%_))))
                                                     (let ((_%lp-tl151034151139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e151032151134%_)))
                                                           (_%lp-hd151033151137%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e151032151134%_))))
                                                       (_%loop151031151126%_
                                                        _%lp-tl151034151139%_
                                                        (cons _%lp-hd151033151137%_
                                                              _%arg151035151131%_))))
                                                   (let ((_%arg151036151142%_
                                                          (reverse _%arg151035151131%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl151027151118%_))
                                                         (let ((_%__splice156806156807%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl151027151118%_
                           '0))))
                   (let ((_%tl151039151147%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice156806156807%_ '1)))
                         (_%target151037151145%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice156806156807%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl151039151147%_))
                         (letrec ((_%loop151040151150%_
                                   (lambda (_%hd151038151153%_
                                            _%body151044151155%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd151038151153%_))
                                         (let ((_%e151041151158%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd151038151153%_))))
                                           (let ((_%lp-tl151043151163%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e151041151158%_)))
                                                 (_%lp-hd151042151161%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e151041151158%_))))
                                             (_%loop151040151150%_
                                              _%lp-tl151043151163%_
                                              (cons _%lp-hd151042151161%_
                                                    _%body151044151155%_))))
                                         (let ((_%body151045151166%_
                                                (reverse _%body151044151155%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl151021151102%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl151015151086%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl151012151078%_))
                                                       (let ((_%e151046151169%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl151012151078%_))))
                 (let ((_%tl151048151174%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e151046151169%_)))
                       (_%hd151047151172%_
                        (let ()
                          (declare (not safe))
                          (##car _%e151046151169%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl151048151174%_))
                       (let ((_%L151177%_ _%hd151047151172%_)
                             (_%L151178%_ _%body151045151166%_)
                             (_%L151179%_ _%arg151036151142%_)
                             (_%L151180%_ _%hd151017151092%_))
                         (if (eq? _%L151180%_ _%L151177%_)
                             (_%__kont156802156803%_
                              _%L151177%_
                              _%L151178%_
                              _%L151179%_
                              _%L151180%_)
                             (_%__kont156808156809%_)))
                       (_%__kont156808156809%_))))
               (_%__kont156808156809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont156808156809%_))
                                               (_%__kont156808156809%_)))))))
                           (_%loop151040151150%_ _%target151037151145%_ '()))
                         (_%__kont156808156809%_))))
                 (_%__kont156808156809%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop151031151126%_
                                      _%target151028151121%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx156800156801%_))
                                (let ((_%e151007151065%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx156800156801%_))))
                                  (let ((_%tl151009151070%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151007151065%_)))
                                        (_%hd151008151068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151007151065%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd151008151068%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd151008151068%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl151009151070%_))
                                                (let ((_%e151010151073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl151009151070%_))))
                                                  (let ((_%tl151012151078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151010151073%_)))
                                                        (_%hd151011151076%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151010151073%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151011151076%_))
                                                        (let ((_%e151013151081%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151011151076%_))))
                  (let ((_%tl151015151086%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151013151081%_)))
                        (_%hd151014151084%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151013151081%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151014151084%_))
                        (let ((_%e151016151089%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151014151084%_))))
                          (let ((_%tl151018151094%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151016151089%_)))
                                (_%hd151017151092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151016151089%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151018151094%_))
                                (let ((_%e151019151097%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151018151094%_))))
                                  (let ((_%tl151021151102%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151019151097%_)))
                                        (_%hd151020151100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151019151097%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd151020151100%_))
                                        (let ((_%e151022151105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd151020151100%_))))
                                          (let ((_%tl151024151110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151022151105%_)))
                                                (_%hd151023151108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151022151105%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd151023151108%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd151023151108%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl151024151110%_))
                                                        (let ((_%e151025151113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl151024151110%_))))
                  (let ((_%tl151027151118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151025151113%_)))
                        (_%hd151026151116%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151025151113%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd151026151116%_))
                        (let ((_%__splice156804156805%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd151026151116%_
                                  '0))))
                          (let ((_%tl151030151123%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice156804156805%_ '1)))
                                (_%target151028151121%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice156804156805%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl151030151123%_))
                                (_%__match156867156868%_
                                 _%e151007151065%_
                                 _%hd151008151068%_
                                 _%tl151009151070%_
                                 _%e151010151073%_
                                 _%hd151011151076%_
                                 _%tl151012151078%_
                                 _%e151013151081%_
                                 _%hd151014151084%_
                                 _%tl151015151086%_
                                 _%e151016151089%_
                                 _%hd151017151092%_
                                 _%tl151018151094%_
                                 _%e151019151097%_
                                 _%hd151020151100%_
                                 _%tl151021151102%_
                                 _%e151022151105%_
                                 _%hd151023151108%_
                                 _%tl151024151110%_
                                 _%e151025151113%_
                                 _%hd151026151116%_
                                 _%tl151027151118%_
                                 _%__splice156804156805%_
                                 _%target151028151121%_
                                 _%tl151030151123%_)
                                (_%__kont156808156809%_))))
                        (_%__kont156808156809%_))))
                (_%__kont156808156809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156808156809%_))
                                                (_%__kont156808156809%_))))
                                        (_%__kont156808156809%_))))
                                (_%__kont156808156809%_))))
                        (_%__kont156808156809%_))))
                (_%__kont156808156809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont156808156809%_))
                                            (_%__kont156808156809%_))
                                        (_%__kont156808156809%_))))
                                (_%__kont156808156809%_)))))))))
          (let* ((_%g150703150726%_
                  (lambda (_%g150704150723%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150704150723%_))))
                 (_%g150702150987%_
                  (lambda (_%g150704150729%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150704150729%_))
                        (let ((_%e150707150731%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150704150729%_))))
                          (let ((_%hd150708150734%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150707150731%_)))
                                (_%tl150709150736%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150707150731%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150709150736%_))
                                (let ((_%e150710150739%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150709150736%_))))
                                  (let ((_%hd150711150742%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150710150739%_)))
                                        (_%tl150712150744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150710150739%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl150712150744%_))
                                        (let ((_g157477_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl150712150744%_
                                                  '0))))
                                          (begin
                                            (let ((_g157478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g157477_)
                                                         (##values-length
                                                          _g157477_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g157478_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g157478_)))
                                            (let ((_%target150713150747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157477_
                                                      0)))
                                                  (_%tl150715150749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157477_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150715150749%_))
                                                  (letrec ((_%loop150716150752%_
                                                            (lambda (_%hd150714150755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand150720150757%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150714150755%_))
                          (let ((_%e150717150760%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150714150755%_))))
                            (let ((_%lp-hd150718150763%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150717150760%_)))
                                  (_%lp-tl150719150765%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150717150760%_))))
                              (_%loop150716150752%_
                               _%lp-tl150719150765%_
                               (cons _%lp-hd150718150763%_
                                     _%rand150720150757%_))))
                          (let ((_%rand150721150768%_
                                 (reverse _%rand150720150757%_)))
                            ((lambda (_%L150771%_ _%L150772%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call150701%_
                                    _%L150772%_
                                    (let ((__tmp157479
                                           (lambda (_%g150789150792%_
                                                    _%g150790150794%_)
                                             (cons _%g150789150792%_
                                                   _%g150790150794%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp157479 '() _%L150771%_)))
                                   (let* ((_%__stx156916156917%_ _%L150772%_)
                                          (_%g150798150810%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx156916156917%_)))))
                                     (let ((_%__kont156918156919%_
                                            (lambda ()
                                              (let ((_%f150847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self150698%_
                                                        _%L150772%_))))
                                                (if (and (let ((__tmp157480
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f150847%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp157480))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f150847%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp150849%_ ((_%rest150852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp157482
                                                (lambda (_%g150969150972%_
                                                         _%g150970150974%_)
                                                  (cons _%g150969150972%_
                                                        _%g150970150974%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp157482
                                            '()
                                            _%L150771%_))))
                               (_%bind150854%_ '())
                               (_%args150855%_ '()))
              (let* ((_%rest150856150864%_ _%rest150852%_)
                     (_%else150858150872%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind150854%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f150847%_
                                                      _%args150855%_)
                                                '()))))))
                     (_%K150860150958%_
                      (lambda (_%rest150875%_ _%e150876%_)
                        (let* ((_%__stx156870156871%_ _%e150876%_)
                               (_%g150881150899%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx156870156871%_)))))
                          (let ((_%__kont156872156873%_
                                 (lambda ()
                                   (_%lp150849%_
                                    _%rest150875%_
                                    _%bind150854%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e150876%_))
                                          _%args150855%_))))
                                (_%__kont156874156875%_
                                 (lambda ()
                                   (_%lp150849%_
                                    _%rest150875%_
                                    _%bind150854%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e150876%_))
                                          _%args150855%_))))
                                (_%__kont156876156877%_
                                 (lambda ()
                                   (let ((_%tmp150906%_
                                          (let ((__tmp157481
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp157481))))
                                     (_%lp150849%_
                                      _%rest150875%_
                                      (cons (cons _%tmp150906%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e150876%_))
                                                        '()))
                                            _%bind150854%_)
                                      (cons _%tmp150906%_ _%args150855%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx156870156871%_))
                                (let ((_%e150883150937%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx156870156871%_))))
                                  (let ((_%tl150885150942%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150883150937%_)))
                                        (_%hd150884150940%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150883150937%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd150884150940%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd150884150940%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl150885150942%_))
                                                (let ((_%e150886150945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl150885150942%_))))
                                                  (let ((_%tl150888150950%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150886150945%_)))
                                                        (_%hd150887150948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150886150945%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl150888150950%_))
                                                        (_%__kont156872156873%_)
                                                        (_%__kont156876156877%_))))
                                                (_%__kont156876156877%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd150884150940%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl150885150942%_))
                                                    (let ((_%e150892150922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl150885150942%_))))
                                                      (let ((_%tl150894150927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e150892150922%_)))
                    (_%hd150893150925%_
                     (let () (declare (not safe)) (##car _%e150892150922%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl150894150927%_))
                    (_%__kont156874156875%_)
                    (_%__kont156876156877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156876156877%_))
                                                (_%__kont156876156877%_)))
                                        (_%__kont156876156877%_))))
                                (_%__kont156876156877%_)))))))
                (if (pair? _%rest150856150864%_)
                    (let ((_%hd150861150961%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest150856150864%_)))
                          (_%tl150862150963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest150856150864%_))))
                      (let* ((_%e150966%_ _%hd150861150961%_)
                             (_%rest150968%_ _%tl150862150963%_))
                        (_%K150860150958%_ _%rest150968%_ _%e150966%_)))
                    (_%else150858150872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call150701%_
                                                     _%L150772%_
                                                     (let ((__tmp157483
                                                            (lambda (_%g150976150979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g150977150981%_)
                      (cons _%g150976150979%_ _%g150977150981%_))))
               (declare (not safe))
               (__foldr1 __tmp157483 '() _%L150771%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont156920156921%_
                                            (lambda ()
                                              (_%compile-call150701%_
                                               _%L150772%_
                                               (let ((__tmp157484
                                                      (lambda (_%g150816150819%_
                                                               _%g150817150821%_)
                                                        (cons _%g150816150819%_
                                                              _%g150817150821%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp157484
                                                  '()
                                                  _%L150771%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx156916156917%_))
                                           (let ((_%e150800150829%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx156916156917%_))))
                                             (let ((_%tl150802150834%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e150800150829%_)))
                                                   (_%hd150801150832%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e150800150829%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd150801150832%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd150801150832%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl150802150834%_))
                                                           (let ((_%e150803150837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl150802150834%_))))
                     (let ((_%tl150805150842%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e150803150837%_)))
                           (_%hd150804150840%_
                            (let ()
                              (declare (not safe))
                              (##car _%e150803150837%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl150805150842%_))
                           (_%__kont156918156919%_)
                           (_%__kont156920156921%_))))
                   (_%__kont156920156921%_))
               (_%__kont156920156921%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont156920156921%_))))
                                           (_%__kont156920156921%_))))))
                             _%rand150721150768%_
                             _%hd150711150742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop150716150752%_
                                                     _%target150713150747%_
                                                     '()))
                                                  (_%g150703150726%_
                                                   _%g150704150729%_)))))
                                        (_%g150703150726%_
                                         _%g150704150729%_))))
                                (_%g150703150726%_ _%g150704150729%_))))
                        (_%g150703150726%_ _%g150704150729%_)))))
            (_%g150702150987%_ _%stx150699%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self150441%_ _%stx150442%_)
        (let* ((_%__stx156988156989%_ _%stx150442%_)
               (_%g150445150474%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx156988156989%_)))))
          (let ((_%__kont156990156991%_
                 (lambda (_%L150542%_ _%L150543%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self150441%_
                        _%stx150442%_)
                       (let ((_%f150565%_
                              (let ((__tmp157485
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L150543%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self150441%_
                                 __tmp157485))))
                         (let _%lp150567%_ ((_%rest150570%_
                                             (reverse (let ((__tmp157487
                                                             (lambda (_%g150687150690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g150688150692%_)
                       (cons _%g150687150690%_ _%g150688150692%_))))
                (declare (not safe))
                (__foldr1 __tmp157487 '() _%L150542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind150572%_ '())
                                            (_%args150573%_ '()))
                           (let* ((_%rest150574150582%_ _%rest150570%_)
                                  (_%else150576150590%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind150572%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f150565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args150573%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K150578150676%_
                                   (lambda (_%rest150593%_ _%e150594%_)
                                     (let* ((_%__stx156942156943%_ _%e150594%_)
                                            (_%g150599150617%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx156942156943%_)))))
                                       (let ((_%__kont156944156945%_
                                              (lambda ()
                                                (_%lp150567%_
                                                 _%rest150593%_
                                                 _%bind150572%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e150594%_))
                                                       _%args150573%_))))
                                             (_%__kont156946156947%_
                                              (lambda ()
                                                (_%lp150567%_
                                                 _%rest150593%_
                                                 _%bind150572%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e150594%_))
                                                       _%args150573%_))))
                                             (_%__kont156948156949%_
                                              (lambda ()
                                                (let ((_%tmp150624%_
                                                       (let ((__tmp157486
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp157486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp150567%_
                                                   _%rest150593%_
                                                   (cons (cons _%tmp150624%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e150594%_))
                             '()))
                 _%bind150572%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp150624%_
                                                         _%args150573%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx156942156943%_))
                                             (let ((_%e150601150655%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx156942156943%_))))
                                               (let ((_%tl150603150660%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e150601150655%_)))
                                                     (_%hd150602150658%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e150601150655%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd150602150658%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd150602150658%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl150603150660%_))
                     (let ((_%e150604150663%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl150603150660%_))))
                       (let ((_%tl150606150668%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e150604150663%_)))
                             (_%hd150605150666%_
                              (let ()
                                (declare (not safe))
                                (##car _%e150604150663%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl150606150668%_))
                             (_%__kont156944156945%_)
                             (_%__kont156948156949%_))))
                     (_%__kont156948156949%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd150602150658%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl150603150660%_))
                         (let ((_%e150610150640%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl150603150660%_))))
                           (let ((_%tl150612150645%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e150610150640%_)))
                                 (_%hd150611150643%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e150610150640%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl150612150645%_))
                                 (_%__kont156946156947%_)
                                 (_%__kont156948156949%_))))
                         (_%__kont156948156949%_))
                     (_%__kont156948156949%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont156948156949%_))))
                                             (_%__kont156948156949%_)))))))
                             (if (pair? _%rest150574150582%_)
                                 (let ((_%hd150579150679%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest150574150582%_)))
                                       (_%tl150580150681%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest150574150582%_))))
                                   (let* ((_%e150684%_ _%hd150579150679%_)
                                          (_%rest150686%_ _%tl150580150681%_))
                                     (_%K150578150676%_
                                      _%rest150686%_
                                      _%e150684%_)))
                                 (_%else150576150590%_))))))))
                (_%__kont156994156995%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self150441%_ _%stx150442%_))))
            (let ((_%__match157033157034%_
                   (lambda (_%e150449150486%_
                            _%hd150450150489%_
                            _%tl150451150491%_
                            _%e150452150494%_
                            _%hd150453150497%_
                            _%tl150454150499%_
                            _%e150455150502%_
                            _%hd150456150505%_
                            _%tl150457150507%_
                            _%e150458150510%_
                            _%hd150459150513%_
                            _%tl150460150515%_
                            _%__splice156992156993%_
                            _%target150461150518%_
                            _%tl150463150520%_)
                     (letrec ((_%loop150464150523%_
                               (lambda (_%hd150462150526%_
                                        _%rand150468150528%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150462150526%_))
                                     (let ((_%e150465150531%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150462150526%_))))
                                       (let ((_%lp-tl150467150536%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150465150531%_)))
                                             (_%lp-hd150466150534%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150465150531%_))))
                                         (_%loop150464150523%_
                                          _%lp-tl150467150536%_
                                          (cons _%lp-hd150466150534%_
                                                _%rand150468150528%_))))
                                     (let ((_%rand150469150539%_
                                            (reverse _%rand150468150528%_)))
                                       (_%__kont156990156991%_
                                        _%rand150469150539%_
                                        _%hd150459150513%_))))))
                       (_%loop150464150523%_ _%target150461150518%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx156988156989%_))
                  (let ((_%e150449150486%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx156988156989%_))))
                    (let ((_%tl150451150491%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150449150486%_)))
                          (_%hd150450150489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150449150486%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150451150491%_))
                          (let ((_%e150452150494%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150451150491%_))))
                            (let ((_%tl150454150499%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150452150494%_)))
                                  (_%hd150453150497%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150452150494%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150453150497%_))
                                  (let ((_%e150455150502%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150453150497%_))))
                                    (let ((_%tl150457150507%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150455150502%_)))
                                          (_%hd150456150505%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150455150502%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150456150505%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150456150505%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150457150507%_))
                                                  (let ((_%e150458150510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150457150507%_))))
                                                    (let ((_%tl150460150515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150458150510%_)))
                                                          (_%hd150459150513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150458150510%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150460150515%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150454150499%_))
                      (let ((_%__splice156992156993%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150454150499%_
                                '0))))
                        (let ((_%tl150463150520%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice156992156993%_ '1)))
                              (_%target150461150518%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice156992156993%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150463150520%_))
                              (_%__match157033157034%_
                               _%e150449150486%_
                               _%hd150450150489%_
                               _%tl150451150491%_
                               _%e150452150494%_
                               _%hd150453150497%_
                               _%tl150454150499%_
                               _%e150455150502%_
                               _%hd150456150505%_
                               _%tl150457150507%_
                               _%e150458150510%_
                               _%hd150459150513%_
                               _%tl150460150515%_
                               _%__splice156992156993%_
                               _%target150461150518%_
                               _%tl150463150520%_)
                              (_%__kont156994156995%_))))
                      (_%__kont156994156995%_))
                  (_%__kont156994156995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156994156995%_))
                                              (_%__kont156994156995%_))
                                          (_%__kont156994156995%_))))
                                  (_%__kont156994156995%_))))
                          (_%__kont156994156995%_))))
                  (_%__kont156994156995%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self150253%_ _%stx150254%_)
        (letrec ((_%simplify150256%_
                  (lambda (_%code150341%_)
                    (let* ((_%code150342150360%_ _%code150341%_)
                           (_%else150344150368%_ (lambda () _%code150341%_))
                           (_%K150346150404%_
                            (lambda (_%expr150371%_ _%test150372%_)
                              (let* ((_%expr150373150381%_ _%expr150371%_)
                                     (_%else150375150389%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test150372%_
                                                    (cons _%expr150371%_
                                                          '())))))
                                     (_%K150377150394%_
                                      (lambda (_%exprs150392%_)
                                        (cons 'and
                                              (cons _%test150372%_
                                                    _%exprs150392%_)))))
                                (if (pair? _%expr150373150381%_)
                                    (let ((_%hd150378150397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr150373150381%_)))
                                          (_%tl150379150399%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr150373150381%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd150378150397%_ 'and))
                                          (let ((_%exprs150402%_
                                                 _%tl150379150399%_))
                                            (_%K150377150394%_
                                             _%exprs150402%_))
                                          (_%else150375150389%_)))
                                    (_%else150375150389%_))))))
                      (if (pair? _%code150342150360%_)
                          (let ((_%hd150347150407%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code150342150360%_)))
                                (_%tl150348150409%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code150342150360%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd150347150407%_ 'if))
                                (if (pair? _%tl150348150409%_)
                                    (let ((_%hd150349150412%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl150348150409%_)))
                                          (_%tl150350150414%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl150348150409%_))))
                                      (let ((_%test150417%_
                                             _%hd150349150412%_))
                                        (if (pair? _%tl150350150414%_)
                                            (let ((_%hd150351150419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl150350150414%_)))
                                                  (_%tl150352150421%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl150350150414%_))))
                                              (let ((_%expr150424%_
                                                     _%hd150351150419%_))
                                                (if (pair? _%tl150352150421%_)
                                                    (let ((_%hd150353150426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl150352150421%_)))
                                                          (_%tl150354150428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl150352150421%_))))
                                                      (if (pair? _%hd150353150426%_)
                                                          (let ((_%hd150355150431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd150353150426%_)))
                        (_%tl150356150433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd150353150426%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd150355150431%_ 'quote))
                        (if (pair? _%tl150356150433%_)
                            (let ((_%hd150357150436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl150356150433%_)))
                                  (_%tl150358150438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl150356150433%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd150357150436%_ '#f))
                                  (if (null? _%tl150358150438%_)
                                      (if (null? _%tl150354150428%_)
                                          (_%K150346150404%_
                                           _%expr150424%_
                                           _%test150417%_)
                                          (_%else150344150368%_))
                                      (_%else150344150368%_))
                                  (_%else150344150368%_)))
                            (_%else150344150368%_))
                        (_%else150344150368%_)))
                  (_%else150344150368%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else150344150368%_))))
                                            (_%else150344150368%_))))
                                    (_%else150344150368%_))
                                (_%else150344150368%_)))
                          (_%else150344150368%_))))))
          (let* ((_%g150258150279%_
                  (lambda (_%g150259150276%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150259150276%_))))
                 (_%g150257150338%_
                  (lambda (_%g150259150282%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150259150282%_))
                        (let ((_%e150263150284%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150259150282%_))))
                          (let ((_%hd150264150287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150263150284%_)))
                                (_%tl150265150289%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150263150284%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150265150289%_))
                                (let ((_%e150266150292%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150265150289%_))))
                                  (let ((_%hd150267150295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150266150292%_)))
                                        (_%tl150268150297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150266150292%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150268150297%_))
                                        (let ((_%e150269150300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150268150297%_))))
                                          (let ((_%hd150270150303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150269150300%_)))
                                                (_%tl150271150305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150269150300%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl150271150305%_))
                                                (let ((_%e150272150308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl150271150305%_))))
                                                  (let ((_%hd150273150311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150272150308%_)))
                                                        (_%tl150274150313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150272150308%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl150274150313%_))
                                                        ((lambda (_%L150316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L150317%_
                          _%L150318%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify150256%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self150253%_
                                       _%L150318%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self150253%_
                                             _%L150317%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self150253%_
                                                   _%L150316%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp157488
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self150253%_
                                               _%L150318%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp157488
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self150253%_
                                            _%L150317%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150253%_
                                                  _%L150316%_))
                                               '()))))))
                 _%hd150273150311%_
                 _%hd150270150303%_
                 _%hd150267150295%_)
                (_%g150258150279%_ _%g150259150282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g150258150279%_
                                                 _%g150259150282%_))))
                                        (_%g150258150279%_
                                         _%g150259150282%_))))
                                (_%g150258150279%_ _%g150259150282%_))))
                        (_%g150258150279%_ _%g150259150282%_)))))
            (_%g150257150338%_ _%stx150254%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self150201%_ _%stx150202%_)
        (let* ((_%g150204150217%_
                (lambda (_%g150205150214%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150205150214%_))))
               (_%g150203150250%_
                (lambda (_%g150205150220%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150205150220%_))
                      (let ((_%e150207150222%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150205150220%_))))
                        (let ((_%hd150208150225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150207150222%_)))
                              (_%tl150209150227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150207150222%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150209150227%_))
                              (let ((_%e150210150230%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150209150227%_))))
                                (let ((_%hd150211150233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150210150230%_)))
                                      (_%tl150212150235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150210150230%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150212150235%_))
                                      ((lambda (_%L150238%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L150238%_)))
                                       _%hd150211150233%_)
                                      (_%g150204150217%_ _%g150205150220%_))))
                              (_%g150204150217%_ _%g150205150220%_))))
                      (_%g150204150217%_ _%g150205150220%_)))))
          (_%g150203150250%_ _%stx150202%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self150133%_ _%stx150134%_)
        (let* ((_%g150136150153%_
                (lambda (_%g150137150150%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150137150150%_))))
               (_%g150135150198%_
                (lambda (_%g150137150156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150137150156%_))
                      (let ((_%e150140150158%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150137150156%_))))
                        (let ((_%hd150141150161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150140150158%_)))
                              (_%tl150142150163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150140150158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150142150163%_))
                              (let ((_%e150143150166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150142150163%_))))
                                (let ((_%hd150144150169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150143150166%_)))
                                      (_%tl150145150171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150143150166%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150145150171%_))
                                      (let ((_%e150146150174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150145150171%_))))
                                        (let ((_%hd150147150177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150146150174%_)))
                                              (_%tl150148150179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150146150174%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150148150179%_))
                                              ((lambda (_%L150182%_
                                                        _%L150183%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L150183%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self150133%_ _%L150182%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150147150177%_
                                               _%hd150144150169%_)
                                              (_%g150136150153%_
                                               _%g150137150156%_))))
                                      (_%g150136150153%_ _%g150137150156%_))))
                              (_%g150136150153%_ _%g150137150156%_))))
                      (_%g150136150153%_ _%g150137150156%_)))))
          (_%g150135150198%_ _%stx150134%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self149944%_ _%stx149945%_)
        (let* ((_%g149947149964%_
                (lambda (_%g149948149961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149948149961%_))))
               (_%g149946150130%_
                (lambda (_%g149948149967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149948149967%_))
                      (let ((_%e149951149969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149948149967%_))))
                        (let ((_%hd149952149972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149951149969%_)))
                              (_%tl149953149974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149951149969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149953149974%_))
                              (let ((_%e149954149977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149953149974%_))))
                                (let ((_%hd149955149980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149954149977%_)))
                                      (_%tl149956149982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149954149977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149956149982%_))
                                      (let ((_%e149957149985%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149956149982%_))))
                                        (let ((_%hd149958149988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149957149985%_)))
                                              (_%tl149959149990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149957149985%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149959149990%_))
                                              ((lambda (_%L149993%_
                                                        _%L149994%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self149944%_ _%L149993%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self149944%_ _%L149994%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp150009%_ ((_%rest150012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L149994%_ (cons _%L149993%_ '())))
                                (_%bind150014%_ '())
                                (_%args150015%_ '()))
               (let* ((_%rest150016150024%_ _%rest150012%_)
                      (_%else150018150032%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind150014%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args150015%_)
                                                 '()))))))
                      (_%K150020150118%_
                       (lambda (_%rest150035%_ _%e150036%_)
                         (let* ((_%__stx157036157037%_ _%e150036%_)
                                (_%g150041150059%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157036157037%_)))))
                           (let ((_%__kont157038157039%_
                                  (lambda ()
                                    (_%lp150009%_
                                     _%rest150035%_
                                     _%bind150014%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150036%_))
                                           _%args150015%_))))
                                 (_%__kont157040157041%_
                                  (lambda ()
                                    (_%lp150009%_
                                     _%rest150035%_
                                     _%bind150014%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150036%_))
                                           _%args150015%_))))
                                 (_%__kont157042157043%_
                                  (lambda ()
                                    (let ((_%tmp150066%_
                                           (let ((__tmp157489
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157489))))
                                      (_%lp150009%_
                                       _%rest150035%_
                                       (cons (cons _%tmp150066%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e150036%_))
                                                         '()))
                                             _%bind150014%_)
                                       (cons _%tmp150066%_ _%args150015%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157036157037%_))
                                 (let ((_%e150043150097%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157036157037%_))))
                                   (let ((_%tl150045150102%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e150043150097%_)))
                                         (_%hd150044150100%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e150043150097%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd150044150100%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd150044150100%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl150045150102%_))
                                                 (let ((_%e150046150105%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl150045150102%_))))
                                                   (let ((_%tl150048150110%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e150046150105%_)))
                                                         (_%hd150047150108%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e150046150105%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl150048150110%_))
                                                         (_%__kont157038157039%_)
                                                         (_%__kont157042157043%_))))
                                                 (_%__kont157042157043%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd150044150100%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl150045150102%_))
                                                     (let ((_%e150052150082%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl150045150102%_))))
                                                       (let ((_%tl150054150087%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e150052150082%_)))
                     (_%hd150053150085%_
                      (let () (declare (not safe)) (##car _%e150052150082%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl150054150087%_))
                     (_%__kont157040157041%_)
                     (_%__kont157042157043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157042157043%_))
                                                 (_%__kont157042157043%_)))
                                         (_%__kont157042157043%_))))
                                 (_%__kont157042157043%_)))))))
                 (if (pair? _%rest150016150024%_)
                     (let ((_%hd150021150121%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest150016150024%_)))
                           (_%tl150022150123%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest150016150024%_))))
                       (let* ((_%e150126%_ _%hd150021150121%_)
                              (_%rest150128%_ _%tl150022150123%_))
                         (_%K150020150118%_ _%rest150128%_ _%e150126%_)))
                     (_%else150018150032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd149958149988%_
                                               _%hd149955149980%_)
                                              (_%g149947149964%_
                                               _%g149948149967%_))))
                                      (_%g149947149964%_ _%g149948149967%_))))
                              (_%g149947149964%_ _%g149948149967%_))))
                      (_%g149947149964%_ _%g149948149967%_)))))
          (_%g149946150130%_ _%stx149945%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self149755%_ _%stx149756%_)
        (let* ((_%g149758149775%_
                (lambda (_%g149759149772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149759149772%_))))
               (_%g149757149941%_
                (lambda (_%g149759149778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149759149778%_))
                      (let ((_%e149762149780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149759149778%_))))
                        (let ((_%hd149763149783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149762149780%_)))
                              (_%tl149764149785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149762149780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149764149785%_))
                              (let ((_%e149765149788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149764149785%_))))
                                (let ((_%hd149766149791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149765149788%_)))
                                      (_%tl149767149793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149765149788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149767149793%_))
                                      (let ((_%e149768149796%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149767149793%_))))
                                        (let ((_%hd149769149799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149768149796%_)))
                                              (_%tl149770149801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149768149796%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149770149801%_))
                                              ((lambda (_%L149804%_
                                                        _%L149805%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self149755%_ _%L149804%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self149755%_ _%L149805%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp149820%_ ((_%rest149823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L149805%_ (cons _%L149804%_ '())))
                                (_%bind149825%_ '())
                                (_%args149826%_ '()))
               (let* ((_%rest149827149835%_ _%rest149823%_)
                      (_%else149829149843%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind149825%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args149826%_)
                                                 '()))))))
                      (_%K149831149929%_
                       (lambda (_%rest149846%_ _%e149847%_)
                         (let* ((_%__stx157082157083%_ _%e149847%_)
                                (_%g149852149870%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157082157083%_)))))
                           (let ((_%__kont157084157085%_
                                  (lambda ()
                                    (_%lp149820%_
                                     _%rest149846%_
                                     _%bind149825%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e149847%_))
                                           _%args149826%_))))
                                 (_%__kont157086157087%_
                                  (lambda ()
                                    (_%lp149820%_
                                     _%rest149846%_
                                     _%bind149825%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e149847%_))
                                           _%args149826%_))))
                                 (_%__kont157088157089%_
                                  (lambda ()
                                    (let ((_%tmp149877%_
                                           (let ((__tmp157490
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157490))))
                                      (_%lp149820%_
                                       _%rest149846%_
                                       (cons (cons _%tmp149877%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e149847%_))
                                                         '()))
                                             _%bind149825%_)
                                       (cons _%tmp149877%_ _%args149826%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157082157083%_))
                                 (let ((_%e149854149908%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157082157083%_))))
                                   (let ((_%tl149856149913%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e149854149908%_)))
                                         (_%hd149855149911%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e149854149908%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd149855149911%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd149855149911%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl149856149913%_))
                                                 (let ((_%e149857149916%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl149856149913%_))))
                                                   (let ((_%tl149859149921%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e149857149916%_)))
                                                         (_%hd149858149919%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e149857149916%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl149859149921%_))
                                                         (_%__kont157084157085%_)
                                                         (_%__kont157088157089%_))))
                                                 (_%__kont157088157089%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd149855149911%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl149856149913%_))
                                                     (let ((_%e149863149893%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl149856149913%_))))
                                                       (let ((_%tl149865149898%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e149863149893%_)))
                     (_%hd149864149896%_
                      (let () (declare (not safe)) (##car _%e149863149893%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl149865149898%_))
                     (_%__kont157086157087%_)
                     (_%__kont157088157089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157088157089%_))
                                                 (_%__kont157088157089%_)))
                                         (_%__kont157088157089%_))))
                                 (_%__kont157088157089%_)))))))
                 (if (pair? _%rest149827149835%_)
                     (let ((_%hd149832149932%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest149827149835%_)))
                           (_%tl149833149934%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest149827149835%_))))
                       (let* ((_%e149937%_ _%hd149832149932%_)
                              (_%rest149939%_ _%tl149833149934%_))
                         (_%K149831149929%_ _%rest149939%_ _%e149937%_)))
                     (_%else149829149843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd149769149799%_
                                               _%hd149766149791%_)
                                              (_%g149758149775%_
                                               _%g149759149778%_))))
                                      (_%g149758149775%_ _%g149759149778%_))))
                              (_%g149758149775%_ _%g149759149778%_))))
                      (_%g149758149775%_ _%g149759149778%_)))))
          (_%g149757149941%_ _%stx149756%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self149671%_ _%stx149672%_)
        (let* ((_%g149674149695%_
                (lambda (_%g149675149692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149675149692%_))))
               (_%g149673149752%_
                (lambda (_%g149675149698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149675149698%_))
                      (let ((_%e149679149700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149675149698%_))))
                        (let ((_%hd149680149703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149679149700%_)))
                              (_%tl149681149705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149679149700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149681149705%_))
                              (let ((_%e149682149708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149681149705%_))))
                                (let ((_%hd149683149711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149682149708%_)))
                                      (_%tl149684149713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149682149708%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149684149713%_))
                                      (let ((_%e149685149716%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149684149713%_))))
                                        (let ((_%hd149686149719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149685149716%_)))
                                              (_%tl149687149721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149685149716%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149687149721%_))
                                              (let ((_%e149688149724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149687149721%_))))
                                                (let ((_%hd149689149727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149688149724%_)))
                                                      (_%tl149690149729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149688149724%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149690149729%_))
                                                      ((lambda (_%L149732%_
                                                                _%L149733%_
                                                                _%L149734%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self149671%_ _%L149732%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self149671%_
                                      _%L149733%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149671%_
                                            _%L149734%_))
                                         (cons ''#f '()))))))
               _%hd149689149727%_
               _%hd149686149719%_
               _%hd149683149711%_)
              (_%g149674149695%_ _%g149675149698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149674149695%_
                                               _%g149675149698%_))))
                                      (_%g149674149695%_ _%g149675149698%_))))
                              (_%g149674149695%_ _%g149675149698%_))))
                      (_%g149674149695%_ _%g149675149698%_)))))
          (_%g149673149752%_ _%stx149672%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self149571%_ _%stx149572%_)
        (let* ((_%g149574149599%_
                (lambda (_%g149575149596%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149575149596%_))))
               (_%g149573149668%_
                (lambda (_%g149575149602%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149575149602%_))
                      (let ((_%e149580149604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149575149602%_))))
                        (let ((_%hd149581149607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149580149604%_)))
                              (_%tl149582149609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149580149604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149582149609%_))
                              (let ((_%e149583149612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149582149609%_))))
                                (let ((_%hd149584149615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149583149612%_)))
                                      (_%tl149585149617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149583149612%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149585149617%_))
                                      (let ((_%e149586149620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149585149617%_))))
                                        (let ((_%hd149587149623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149586149620%_)))
                                              (_%tl149588149625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149586149620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149588149625%_))
                                              (let ((_%e149589149628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149588149625%_))))
                                                (let ((_%hd149590149631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149589149628%_)))
                                                      (_%tl149591149633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149589149628%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149591149633%_))
                                                      (let ((_%e149592149636%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149591149633%_))))
                (let ((_%hd149593149639%_
                       (let () (declare (not safe)) (##car _%e149592149636%_)))
                      (_%tl149594149641%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149592149636%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149594149641%_))
                      ((lambda (_%L149644%_
                                _%L149645%_
                                _%L149646%_
                                _%L149647%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149571%_
                                        _%L149645%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149571%_
                                              _%L149644%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149571%_
                                                    _%L149646%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149571%_
                                                          _%L149647%_))
                                                       (cons ''#f '())))))))
                       _%hd149593149639%_
                       _%hd149590149631%_
                       _%hd149587149623%_
                       _%hd149584149615%_)
                      (_%g149574149599%_ _%g149575149602%_))))
              (_%g149574149599%_ _%g149575149602%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149574149599%_
                                               _%g149575149602%_))))
                                      (_%g149574149599%_ _%g149575149602%_))))
                              (_%g149574149599%_ _%g149575149602%_))))
                      (_%g149574149599%_ _%g149575149602%_)))))
          (_%g149573149668%_ _%stx149572%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self149487%_ _%stx149488%_)
        (let* ((_%g149490149511%_
                (lambda (_%g149491149508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149491149508%_))))
               (_%g149489149568%_
                (lambda (_%g149491149514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149491149514%_))
                      (let ((_%e149495149516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149491149514%_))))
                        (let ((_%hd149496149519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149495149516%_)))
                              (_%tl149497149521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149495149516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149497149521%_))
                              (let ((_%e149498149524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149497149521%_))))
                                (let ((_%hd149499149527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149498149524%_)))
                                      (_%tl149500149529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149498149524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149500149529%_))
                                      (let ((_%e149501149532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149500149529%_))))
                                        (let ((_%hd149502149535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149501149532%_)))
                                              (_%tl149503149537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149501149532%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149503149537%_))
                                              (let ((_%e149504149540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149503149537%_))))
                                                (let ((_%hd149505149543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149504149540%_)))
                                                      (_%tl149506149545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149504149540%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149506149545%_))
                                                      ((lambda (_%L149548%_
                                                                _%L149549%_
                                                                _%L149550%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self149487%_ _%L149548%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self149487%_
                                      _%L149549%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149487%_
                                            _%L149550%_))
                                         (cons ''#f '()))))))
               _%hd149505149543%_
               _%hd149502149535%_
               _%hd149499149527%_)
              (_%g149490149511%_ _%g149491149514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149490149511%_
                                               _%g149491149514%_))))
                                      (_%g149490149511%_ _%g149491149514%_))))
                              (_%g149490149511%_ _%g149491149514%_))))
                      (_%g149490149511%_ _%g149491149514%_)))))
          (_%g149489149568%_ _%stx149488%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self149387%_ _%stx149388%_)
        (let* ((_%g149390149415%_
                (lambda (_%g149391149412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149391149412%_))))
               (_%g149389149484%_
                (lambda (_%g149391149418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149391149418%_))
                      (let ((_%e149396149420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149391149418%_))))
                        (let ((_%hd149397149423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149396149420%_)))
                              (_%tl149398149425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149396149420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149398149425%_))
                              (let ((_%e149399149428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149398149425%_))))
                                (let ((_%hd149400149431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149399149428%_)))
                                      (_%tl149401149433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149399149428%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149401149433%_))
                                      (let ((_%e149402149436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149401149433%_))))
                                        (let ((_%hd149403149439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149402149436%_)))
                                              (_%tl149404149441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149402149436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149404149441%_))
                                              (let ((_%e149405149444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149404149441%_))))
                                                (let ((_%hd149406149447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149405149444%_)))
                                                      (_%tl149407149449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149405149444%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149407149449%_))
                                                      (let ((_%e149408149452%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149407149449%_))))
                (let ((_%hd149409149455%_
                       (let () (declare (not safe)) (##car _%e149408149452%_)))
                      (_%tl149410149457%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149408149452%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149410149457%_))
                      ((lambda (_%L149460%_
                                _%L149461%_
                                _%L149462%_
                                _%L149463%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149387%_
                                        _%L149461%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149387%_
                                              _%L149460%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149387%_
                                                    _%L149462%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149387%_
                                                          _%L149463%_))
                                                       (cons ''#f '())))))))
                       _%hd149409149455%_
                       _%hd149406149447%_
                       _%hd149403149439%_
                       _%hd149400149431%_)
                      (_%g149390149415%_ _%g149391149418%_))))
              (_%g149390149415%_ _%g149391149418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149390149415%_
                                               _%g149391149418%_))))
                                      (_%g149390149415%_ _%g149391149418%_))))
                              (_%g149390149415%_ _%g149391149418%_))))
                      (_%g149390149415%_ _%g149391149418%_)))))
          (_%g149389149484%_ _%stx149388%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self149182%_ _%stx149183%_)
        (let* ((_%g149185149206%_
                (lambda (_%g149186149203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149186149203%_))))
               (_%g149184149384%_
                (lambda (_%g149186149209%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149186149209%_))
                      (let ((_%e149190149211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149186149209%_))))
                        (let ((_%hd149191149214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149190149211%_)))
                              (_%tl149192149216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149190149211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149192149216%_))
                              (let ((_%e149193149219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149192149216%_))))
                                (let ((_%hd149194149222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149193149219%_)))
                                      (_%tl149195149224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149193149219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149195149224%_))
                                      (let ((_%e149196149227%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149195149224%_))))
                                        (let ((_%hd149197149230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149196149227%_)))
                                              (_%tl149198149232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149196149227%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149198149232%_))
                                              (let ((_%e149199149235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149198149232%_))))
                                                (let ((_%hd149200149238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149199149235%_)))
                                                      (_%tl149201149240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149199149235%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149201149240%_))
                                                      ((lambda (_%L149243%_
                                                                _%L149244%_
                                                                _%L149245%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self149182%_
                                    _%L149243%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self149182%_
                                          _%L149244%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp149263%_ ((_%rest149266%_
                                         (cons _%L149244%_
                                               (cons _%L149243%_ '())))
                                        (_%bind149268%_ '())
                                        (_%args149269%_ '()))
                       (let* ((_%rest149270149278%_ _%rest149266%_)
                              (_%else149272149286%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind149268%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp157491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp157491 _%args149269%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K149274149372%_
                               (lambda (_%rest149289%_ _%e149290%_)
                                 (let* ((_%__stx157128157129%_ _%e149290%_)
                                        (_%g149295149313%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx157128157129%_)))))
                                   (let ((_%__kont157130157131%_
                                          (lambda ()
                                            (_%lp149263%_
                                             _%rest149289%_
                                             _%bind149268%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149290%_))
                                                   _%args149269%_))))
                                         (_%__kont157132157133%_
                                          (lambda ()
                                            (_%lp149263%_
                                             _%rest149289%_
                                             _%bind149268%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149290%_))
                                                   _%args149269%_))))
                                         (_%__kont157134157135%_
                                          (lambda ()
                                            (let ((_%tmp149320%_
                                                   (let ((__tmp157492
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp157492))))
                                              (_%lp149263%_
                                               _%rest149289%_
                                               (cons (cons _%tmp149320%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e149290%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind149268%_)
                                               (cons _%tmp149320%_
                                                     _%args149269%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx157128157129%_))
                                         (let ((_%e149297149351%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx157128157129%_))))
                                           (let ((_%tl149299149356%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e149297149351%_)))
                                                 (_%hd149298149354%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e149297149351%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd149298149354%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd149298149354%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl149299149356%_))
                                                         (let ((_%e149300149359%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl149299149356%_))))
                   (let ((_%tl149302149364%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e149300149359%_)))
                         (_%hd149301149362%_
                          (let ()
                            (declare (not safe))
                            (##car _%e149300149359%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl149302149364%_))
                         (_%__kont157130157131%_)
                         (_%__kont157134157135%_))))
                 (_%__kont157134157135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd149298149354%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl149299149356%_))
                     (let ((_%e149306149336%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl149299149356%_))))
                       (let ((_%tl149308149341%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e149306149336%_)))
                             (_%hd149307149339%_
                              (let ()
                                (declare (not safe))
                                (##car _%e149306149336%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl149308149341%_))
                             (_%__kont157132157133%_)
                             (_%__kont157134157135%_))))
                     (_%__kont157134157135%_))
                 (_%__kont157134157135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157134157135%_))))
                                         (_%__kont157134157135%_)))))))
                         (if (pair? _%rest149270149278%_)
                             (let ((_%hd149275149375%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest149270149278%_)))
                                   (_%tl149276149377%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest149270149278%_))))
                               (let* ((_%e149380%_ _%hd149275149375%_)
                                      (_%rest149382%_ _%tl149276149377%_))
                                 (_%K149274149372%_
                                  _%rest149382%_
                                  _%e149380%_)))
                             (_%else149272149286%_))))))
               _%hd149200149238%_
               _%hd149197149230%_
               _%hd149194149222%_)
              (_%g149185149206%_ _%g149186149209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149185149206%_
                                               _%g149186149209%_))))
                                      (_%g149185149206%_ _%g149186149209%_))))
                              (_%g149185149206%_ _%g149186149209%_))))
                      (_%g149185149206%_ _%g149186149209%_)))))
          (_%g149184149384%_ _%stx149183%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self148961%_ _%stx148962%_)
        (let* ((_%g148964148989%_
                (lambda (_%g148965148986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148965148986%_))))
               (_%g148963149179%_
                (lambda (_%g148965148992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148965148992%_))
                      (let ((_%e148970148994%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148965148992%_))))
                        (let ((_%hd148971148997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148970148994%_)))
                              (_%tl148972148999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148970148994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148972148999%_))
                              (let ((_%e148973149002%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148972148999%_))))
                                (let ((_%hd148974149005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148973149002%_)))
                                      (_%tl148975149007%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148973149002%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148975149007%_))
                                      (let ((_%e148976149010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148975149007%_))))
                                        (let ((_%hd148977149013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148976149010%_)))
                                              (_%tl148978149015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148976149010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl148978149015%_))
                                              (let ((_%e148979149018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl148978149015%_))))
                                                (let ((_%hd148980149021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e148979149018%_)))
                                                      (_%tl148981149023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e148979149018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl148981149023%_))
                                                      (let ((_%e148982149026%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl148981149023%_))))
                (let ((_%hd148983149029%_
                       (let () (declare (not safe)) (##car _%e148982149026%_)))
                      (_%tl148984149031%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e148982149026%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl148984149031%_))
                      ((lambda (_%L149034%_
                                _%L149035%_
                                _%L149036%_
                                _%L149037%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self148961%_
                                            _%L149035%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148961%_
                                                  _%L149034%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self148961%_
                                                        _%L149036%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp149058%_ ((_%rest149061%_
                                                 (cons _%L149036%_
                                                       (cons _%L149034%_
                                                             (cons _%L149035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind149063%_ '())
                                                (_%args149064%_ '()))
                               (let* ((_%rest149065149073%_ _%rest149061%_)
                                      (_%else149067149081%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind149063%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157493 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp157493 _%args149064%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K149069149167%_
                                       (lambda (_%rest149084%_ _%e149085%_)
                                         (let* ((_%__stx157174157175%_
                                                 _%e149085%_)
                                                (_%g149090149108%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx157174157175%_)))))
                                           (let ((_%__kont157176157177%_
                                                  (lambda ()
                                                    (_%lp149058%_
                                                     _%rest149084%_
                                                     _%bind149063%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149085%_))
                                                           _%args149064%_))))
                                                 (_%__kont157178157179%_
                                                  (lambda ()
                                                    (_%lp149058%_
                                                     _%rest149084%_
                                                     _%bind149063%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149085%_))
                                                           _%args149064%_))))
                                                 (_%__kont157180157181%_
                                                  (lambda ()
                                                    (let ((_%tmp149115%_
                                                           (let ((__tmp157494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp157494))))
              (_%lp149058%_
               _%rest149084%_
               (cons (cons _%tmp149115%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e149085%_))
                                 '()))
                     _%bind149063%_)
               (cons _%tmp149115%_ _%args149064%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx157174157175%_))
                                                 (let ((_%e149092149146%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx157174157175%_))))
                                                   (let ((_%tl149094149151%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e149092149146%_)))
                                                         (_%hd149093149149%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e149092149146%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd149093149149%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd149093149149%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl149094149151%_))
                         (let ((_%e149095149154%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl149094149151%_))))
                           (let ((_%tl149097149159%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e149095149154%_)))
                                 (_%hd149096149157%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e149095149154%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl149097149159%_))
                                 (_%__kont157176157177%_)
                                 (_%__kont157180157181%_))))
                         (_%__kont157180157181%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd149093149149%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl149094149151%_))
                             (let ((_%e149101149131%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl149094149151%_))))
                               (let ((_%tl149103149136%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e149101149131%_)))
                                     (_%hd149102149134%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e149101149131%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl149103149136%_))
                                     (_%__kont157178157179%_)
                                     (_%__kont157180157181%_))))
                             (_%__kont157180157181%_))
                         (_%__kont157180157181%_)))
                 (_%__kont157180157181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157180157181%_)))))))
                                 (if (pair? _%rest149065149073%_)
                                     (let ((_%hd149070149170%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest149065149073%_)))
                                           (_%tl149071149172%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest149065149073%_))))
                                       (let* ((_%e149175%_ _%hd149070149170%_)
                                              (_%rest149177%_
                                               _%tl149071149172%_))
                                         (_%K149069149167%_
                                          _%rest149177%_
                                          _%e149175%_)))
                                     (_%else149067149081%_))))))
                       _%hd148983149029%_
                       _%hd148980149021%_
                       _%hd148977149013%_
                       _%hd148974149005%_)
                      (_%g148964148989%_ _%g148965148992%_))))
              (_%g148964148989%_ _%g148965148992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g148964148989%_
                                               _%g148965148992%_))))
                                      (_%g148964148989%_ _%g148965148992%_))))
                              (_%g148964148989%_ _%g148965148992%_))))
                      (_%g148964148989%_ _%g148965148992%_)))))
          (_%g148963149179%_ _%stx148962%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self148800%_ _%stx148801%_)
        (letrec ((_%import-set-template148803%_
                  (lambda (_%in148906%_ _%phi148907%_)
                    (let ((_%iphi148909%_
                           (fx+ _%phi148907%_
                                (##direct-structure-ref
                                 _%in148906%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports148910%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in148906%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp148912%_ ((_%rest148914%_ _%imports148910%_)
                                         (_%r148915%_ '()))
                        (let* ((_%rest148916148924%_ _%rest148914%_)
                               (_%else148918148932%_ (lambda () _%r148915%_))
                               (_%K148920148949%_
                                (lambda (_%rest148935%_ _%in148936%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in148936%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi148909%_))
                                          (_%lp148912%_
                                           _%rest148935%_
                                           (cons _%in148936%_ _%r148915%_))
                                          (_%lp148912%_
                                           _%rest148935%_
                                           _%r148915%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in148936%_
                                             'gx#module-import::t))
                                          (let ((_%iphi148940%_
                                                 (fx+ _%phi148907%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in148936%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi148940%_))
                                                (_%lp148912%_
                                                 _%rest148935%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in148936%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r148915%_))
                                                (_%lp148912%_
                                                 _%rest148935%_
                                                 _%r148915%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in148936%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi148943%_
                                                     (fx+ _%iphi148909%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in148936%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi148943%_))
                                                    (_%lp148912%_
                                                     _%rest148935%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148936%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r148915%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi148943%_))
                                                        (_%lp148912%_
                                                         _%rest148935%_
                                                         (let ((__tmp157495
                                                                (_%import-set-template148803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in148936%_
                         _%iphi148909%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r148915%_ __tmp157495)))
                (_%lp148912%_ _%rest148935%_ _%r148915%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp148912%_
                                               _%rest148935%_
                                               _%r148915%_)))))))
                          (if (pair? _%rest148916148924%_)
                              (let ((_%hd148921148952%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest148916148924%_)))
                                    (_%tl148922148954%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest148916148924%_))))
                                (let* ((_%in148957%_ _%hd148921148952%_)
                                       (_%rest148959%_ _%tl148922148954%_))
                                  (_%K148920148949%_
                                   _%rest148959%_
                                   _%in148957%_)))
                              (_%else148918148932%_))))))))
          (let* ((_%g148805148815%_
                  (lambda (_%g148806148812%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148806148812%_))))
                 (_%g148804148903%_
                  (lambda (_%g148806148818%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148806148818%_))
                        (let ((_%e148808148820%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148806148818%_))))
                          (let ((_%hd148809148823%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148808148820%_)))
                                (_%tl148810148825%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148808148820%_))))
                            ((lambda (_%L148828%_)
                               (let ((_%ht148839%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp148841%_ ((_%rest148843%_
                                                     _%L148828%_)
                                                    (_%loads148844%_ '()))
                                   (letrec ((_%K148846%_
                                             (lambda (_%ctx148896%_
                                                      _%rest148897%_)
                                               (let ((_%id148899%_
                                                      (##structure-ref
                                                       _%ctx148896%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht148839%_
                                                        _%id148899%_))
                                                     (_%lp148841%_
                                                      _%rest148897%_
                                                      _%loads148844%_)
                                                     (let ((_%rt148901%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id148899%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht148839%_
                                                          _%id148899%_
                                                          _%rt148901%_))
                                                       (_%lp148841%_
                                                        _%rest148897%_
                                                        (cons _%rt148901%_
                                                              _%loads148844%_))))))))
                                     (let* ((_%rest148847148855%_
                                             _%rest148843%_)
                                            (_%else148849148867%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp157497
                                                            (lambda (_%g148862148864%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g148862148864%_)))
                   (__tmp157496 (reverse _%loads148844%_)))
               (declare (not safe))
               (##map __tmp157497 __tmp157496)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K148851148884%_
                                             (lambda (_%rest148870%_
                                                      _%in148871%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in148871%_
                                                      'gx#module-context::t))
                                                   (_%K148846%_
                                                    _%in148871%_
                                                    _%rest148870%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in148871%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in148871%_
                               '3
                               '#f
                               '#f)))
                   (_%K148846%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in148871%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest148870%_)
                   (_%lp148841%_ _%rest148870%_ _%loads148844%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in148871%_
                      'gx#import-set::t))
                   (let ((_%phi148876%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in148871%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi148876%_)
                         (_%K148846%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in148871%_
                             '1
                             '#f
                             '#f))
                          _%rest148870%_)
                         (if (fxpositive? _%phi148876%_)
                             (let ((_%deps148880%_
                                    (_%import-set-template148803%_
                                     _%in148871%_
                                     '0)))
                               (_%lp148841%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest148870%_
                                   _%deps148880%_))
                                _%loads148844%_))
                             (_%lp148841%_ _%rest148870%_ _%loads148844%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx148801%_
                      _%in148871%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest148847148855%_)
                                           (let ((_%hd148852148887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest148847148855%_)))
                                                 (_%tl148853148889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest148847148855%_))))
                                             (let* ((_%in148892%_
                                                     _%hd148852148887%_)
                                                    (_%rest148894%_
                                                     _%tl148853148889%_))
                                               (_%K148851148884%_
                                                _%rest148894%_
                                                _%in148892%_)))
                                           (_%else148849148867%_)))))))
                             _%tl148810148825%_)))
                        (_%g148805148815%_ _%g148806148818%_)))))
            (_%g148804148903%_ _%stx148801%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self148613%_ _%stx148614%_)
        (letrec ((_%add-lift!148616%_
                  (lambda (_%expr148798%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr148798%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote148617%_
                  (lambda (_%id148795%_ _%marks148796%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id148795%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks148796%_
                                                        '()))))))))
                 (_%generate-simple148618%_
                  (lambda (_%stxq148790%_)
                    (let ((_%gid148792%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid148793%_
                           (gxc#generate-runtime-identifier _%stxq148790%_)))
                      (_%add-lift!148616%_
                       (cons 'define
                             (cons _%gid148792%_
                                   (cons (_%generate-syntax-quote148617%_
                                          _%qid148793%_
                                          ''())
                                         '()))))
                      (let ((__tmp157498
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157498 _%stxq148790%_ _%gid148792%_))
                      _%gid148792%_)))
                 (_%generate-serialized148619%_
                  (lambda (_%stxq148780%_ _%marks148781%_)
                    (let* ((_%mark-refs148783%_
                            (map _%generate-mark148620%_ _%marks148781%_))
                           (_%gid148785%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid148787%_
                            (gxc#generate-runtime-identifier _%stxq148780%_)))
                      (_%add-lift!148616%_
                       (cons 'define
                             (cons _%gid148785%_
                                   (cons (_%generate-syntax-quote148617%_
                                          _%qid148787%_
                                          (cons 'list _%mark-refs148783%_))
                                         '()))))
                      (let ((__tmp157499
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157499 _%stxq148780%_ _%gid148785%_))
                      _%gid148785%_)))
                 (_%generate-mark148620%_
                  (lambda (_%mark148765%_)
                    (let ((_%$e148767%_
                           (let ((__tmp157500
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp157500 _%mark148765%_))))
                      (if _%$e148767%_
                          _%$e148767%_
                          (let* ((_%gid148771%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr148773%_
                                  (_%serialize-mark148621%_ _%mark148765%_))
                                 (_%ctx148775%_
                                  (let ((__tmp157501
                                         (##structure-ref
                                          _%mark148765%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp157501)))
                                 (_%ctx-ref148777%_
                                  (if (eq? _%ctx148775%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref148622%_
                                                               _%ctx148775%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp157502
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157502
                               _%mark148765%_
                               _%gid148771%_))
                            (_%add-lift!148616%_
                             (cons 'define
                                   (cons _%gid148771%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr148773%_ '()))
                   (cons _%ctx-ref148777%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid148771%_)))))
                 (_%serialize-mark148621%_
                  (lambda (_%mark148712%_)
                    (letrec ((_%quote-e148714%_
                              (lambda (_%sym148763%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym148763%_))
                                    _%sym148763%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym148763%_))))))
                      (let* ((_%mark148715148724%_ _%mark148712%_)
                             (_%E148717148728%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark148715148724%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K148718148740%_
                              (lambda (_%trace148731%_
                                       _%phi148732%_
                                       _%ctx148733%_
                                       _%subst148734%_)
                                (let ((_%subs148736%_
                                       (if _%subst148734%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst148734%_))
                                           '())))
                                  (cons _%phi148732%_
                                        (let ((__tmp157503
                                               (lambda (_%pair148738%_)
                                                 (cons (_%quote-e148714%_
                                                        (car _%pair148738%_))
                                                       (_%quote-e148714%_
                                                        (cdr _%pair148738%_))))))
                                          (declare (not safe))
                                          (##map __tmp157503
                                                 _%subs148736%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark148715148724%_
                               'gx#expander-mark::t))
                            (let* ((_%e148719148743%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148715148724%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst148746%_ _%e148719148743%_)
                                   (_%e148720148748%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148715148724%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx148751%_ _%e148720148748%_)
                                   (_%e148721148753%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148715148724%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi148756%_ _%e148721148753%_)
                                   (_%e148722148758%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148715148724%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace148761%_ _%e148722148758%_))
                              (_%K148718148740%_
                               _%trace148761%_
                               _%phi148756%_
                               _%ctx148751%_
                               _%subst148746%_))
                            (_%E148717148728%_))))))
                 (_%context-ref148622%_
                  (lambda (_%ctx148699%_)
                    (if (let ((__tmp157504
                               (##structure-ref
                                _%ctx148699%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp157504
                           'gx#module-context::t))
                        (let ((_%ctx-ref148701%_
                               (_%context-ref-nested148624%_ _%ctx148699%_))
                              (_%ctx-origin148702%_
                               (_%context-ref-origin148623%_ _%ctx148699%_))
                              (_%origin148703%_
                               (_%context-ref-origin148623%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin148703%_ _%ctx-origin148702%_)
                              (let ((_%ref148705%_
                                     (_%context-ref-nested148624%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp148707%_ ((_%ref148709%_
                                                    (cdr _%ref148705%_))
                                                   (_%ctx-ref148710%_
                                                    (cdr _%ctx-ref148701%_)))
                                  (if (and (pair? _%ref148709%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref148709%_))
                                                (car _%ctx-ref148710%_)))
                                      (_%lp148707%_
                                       (cdr _%ref148709%_)
                                       (cdr _%ctx-ref148710%_))
                                      (cons '#f _%ctx-ref148710%_))))
                              _%ctx-ref148701%_))
                        (let ((__tmp157505
                               (##structure-ref
                                _%ctx148699%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp157505)))))
                 (_%context-ref-origin148623%_
                  (lambda (_%ctx148691%_)
                    (let _%lp148693%_ ((_%ctx148695%_ _%ctx148691%_))
                      (let ((_%super148697%_
                             (##structure-ref
                              _%ctx148695%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super148697%_
                               'gx#module-context::t))
                            (_%lp148693%_ _%super148697%_)
                            _%ctx148695%_)))))
                 (_%context-ref-nested148624%_
                  (lambda (_%ctx148682%_)
                    (let _%lp148684%_ ((_%ctx148686%_ _%ctx148682%_)
                                       (_%r148687%_ '()))
                      (let ((_%super148689%_
                             (##structure-ref
                              _%ctx148686%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super148689%_
                               'gx#module-context::t))
                            (_%lp148684%_
                             _%super148689%_
                             (cons (car (##structure-ref
                                         _%ctx148686%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r148687%_))
                            (cons (let ((__tmp157506
                                         (##structure-ref
                                          _%ctx148686%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp157506))
                                  _%r148687%_)))))))
          (let* ((_%g148626148639%_
                  (lambda (_%g148627148636%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148627148636%_))))
                 (_%g148625148679%_
                  (lambda (_%g148627148642%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148627148642%_))
                        (let ((_%e148629148644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148627148642%_))))
                          (let ((_%hd148630148647%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148629148644%_)))
                                (_%tl148631148649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148629148644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl148631148649%_))
                                (let ((_%e148632148652%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl148631148649%_))))
                                  (let ((_%hd148633148655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148632148652%_)))
                                        (_%tl148634148657%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148632148652%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148634148657%_))
                                        ((lambda (_%L148660%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L148660%_))
                                               (let ((_%$e148673%_
                                                      (let ((__tmp157507
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp157507 _%L148660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e148673%_
                                                     _%$e148673%_
                                                     (let ((_%marks148677%_
                                                            (##direct-structure-ref
                                                             _%L148660%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks148677%_)
                                                           (_%generate-simple148618%_
                                                            _%L148660%_)
                                                           (_%generate-serialized148619%_
                                                            _%L148660%_
                                                            _%marks148677%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L148660%_))))
                                         _%hd148633148655%_)
                                        (_%g148626148639%_
                                         _%g148627148642%_))))
                                (_%g148626148639%_ _%g148627148642%_))))
                        (_%g148626148639%_ _%g148627148642%_)))))
            (_%g148625148679%_ _%stx148614%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self148545%_ _%stx148546%_)
        (let* ((_%g148548148565%_
                (lambda (_%g148549148562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148549148562%_))))
               (_%g148547148610%_
                (lambda (_%g148549148568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148549148568%_))
                      (let ((_%e148552148570%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148549148568%_))))
                        (let ((_%hd148553148573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148552148570%_)))
                              (_%tl148554148575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148552148570%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148554148575%_))
                              (let ((_%e148555148578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148554148575%_))))
                                (let ((_%hd148556148581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148555148578%_)))
                                      (_%tl148557148583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148555148578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148557148583%_))
                                      (let ((_%e148558148586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148557148583%_))))
                                        (let ((_%hd148559148589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148558148586%_)))
                                              (_%tl148560148591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148558148586%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148560148591%_))
                                              ((lambda (_%L148594%_
                                                        _%L148595%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L148595%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self148545%_ _%L148594%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd148559148589%_
                                               _%hd148556148581%_)
                                              (_%g148548148565%_
                                               _%g148549148568%_))))
                                      (_%g148548148565%_ _%g148549148568%_))))
                              (_%g148548148565%_ _%g148549148568%_))))
                      (_%g148548148565%_ _%g148549148568%_)))))
          (_%g148547148610%_ _%stx148546%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self148494%_ _%stx148495%_)
        (let* ((_%g148497148507%_
                (lambda (_%g148498148504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148498148504%_))))
               (_%g148496148542%_
                (lambda (_%g148498148510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148498148510%_))
                      (let ((_%e148500148512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148498148510%_))))
                        (let ((_%hd148501148515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148500148512%_)))
                              (_%tl148502148517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148500148512%_))))
                          ((lambda (_%L148520%_)
                             (let* ((_%c-body148534%_
                                     (map (lambda (_%g148529148531%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self148494%_
                                               _%g148529148531%_)))
                                          _%L148520%_))
                                    (_%c-body148539%_
                                     (let ((__tmp157508
                                            (lambda (_%$obj148536%_)
                                              (not (eq? _%$obj148536%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp157508
                                        _%c-body148534%_))))
                               (cons '%#begin _%c-body148539%_)))
                           _%tl148502148517%_)))
                      (_%g148497148507%_ _%g148498148510%_)))))
          (_%g148496148542%_ _%stx148495%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self148399%_ _%stx148400%_)
        (let* ((_%g148402148412%_
                (lambda (_%g148403148409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148403148409%_))))
               (_%g148401148491%_
                (lambda (_%g148403148415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148403148415%_))
                      (let ((_%e148405148417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148403148415%_))))
                        (let ((_%hd148406148420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148405148417%_)))
                              (_%tl148407148422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148405148417%_))))
                          ((lambda (_%L148425%_)
                             (let* ((_%phi148435%_
                                     (let ((__tmp157509
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp157509 '1)))
                                    (_%block148437%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self148399%_ 'state))
                                      _%phi148435%_))
                                    (_%compiled148440%_
                                     (let ((__tmp157510
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self148399%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L148425%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp157510
                                        gx#current-expander-phi
                                        _%phi148435%_)))
                                    (_%g148443148453%_
                                     (lambda (_%g148444148450%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148444148450%_))))
                                    (_%g148442148488%_
                                     (lambda (_%g148444148456%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g148444148456%_))
                                           (let ((_%e148446148458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g148444148456%_))))
                                             (let ((_%hd148447148461%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e148446148458%_)))
                                                   (_%tl148448148463%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e148446148458%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd148447148461%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd148447148461%_))
                                                       ((lambda (_%L148466%_)
                                                          (let ((_%c-body148483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj148480%_)
                                   (not (eq? _%$obj148480%_ '#!void)))
                                 _%L148466%_)))
                    (if _%block148437%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block148437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body148483%_))
                        (if (null? _%c-body148483%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body148483%_)))))
                _%tl148448148463%_)
               (_%g148443148453%_ _%g148444148456%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g148443148453%_
                                                    _%g148444148456%_))))
                                           (_%g148443148453%_
                                            _%g148444148456%_)))))
                               (_%g148442148488%_ _%compiled148440%_)))
                           _%tl148407148422%_)))
                      (_%g148402148412%_ _%g148403148415%_)))))
          (_%g148401148491%_ _%stx148400%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self148330%_ _%stx148331%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self148330%_ 'state)))
        (let* ((_%g148333148347%_
                (lambda (_%g148334148344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148334148344%_))))
               (_%g148332148396%_
                (lambda (_%g148334148350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148334148350%_))
                      (let ((_%e148337148352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148334148350%_))))
                        (let ((_%hd148338148355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148337148352%_)))
                              (_%tl148339148357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148337148352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148339148357%_))
                              (let ((_%e148340148360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148339148357%_))))
                                (let ((_%hd148341148363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148340148360%_)))
                                      (_%tl148342148365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148340148360%_))))
                                  ((lambda (_%L148368%_ _%L148369%_)
                                     (let ((_%key148382%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L148369%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key148382%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx148331%_
                                              _%L148369%_
                                              _%key148382%_)))
                                       (let* ((_%ctx148384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L148369%_)))
                                              (_%code148387%_
                                               (let ((__tmp157511
                                                      (lambda ()
                                                        (let ((__tmp157512
                                                               (##structure-ref
                                                                _%ctx148384%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self148330%_
                                                           __tmp157512)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp157511
                                                  gx#current-expander-context
                                                  _%ctx148384%_)))
                                              (_%rt148389%_
                                               (let ((__tmp157513
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp157513
                                                  _%ctx148384%_)))
                                              (_%loader148391%_
                                               (if _%rt148389%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt148389%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid148393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L148369%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self148330%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid148393%_
                                                     (cons _%code148387%_
                                                           _%loader148391%_))))))
                                   _%tl148342148365%_
                                   _%hd148341148363%_)))
                              (_%g148333148347%_ _%g148334148350%_))))
                      (_%g148333148347%_ _%g148334148350%_)))))
          (_%g148332148396%_ _%stx148331%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx148317%_ _%context-chain148318%_)
        (let _%lp148320%_ ((_%ctx148322%_ _%ctx148317%_) (_%path148323%_ '()))
          (let ((_%super148325%_
                 (##structure-ref _%ctx148322%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super148325%_ _%context-chain148318%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx148322%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path148323%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super148325%_
                       'gx#module-context::t))
                    (_%lp148320%_
                     _%super148325%_
                     (cons (car (##structure-ref
                                 _%ctx148322%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path148323%_))
                    (cons (let ((__tmp157514
                                 (##structure-ref
                                  _%ctx148322%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp157514))
                          _%path148323%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp148310%_ ((_%ctx148312%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r148313%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx148312%_ 'gx#module-context::t))
              (_%lp148310%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx148312%_ '3 '#f '#f))
               (cons _%ctx148312%_ _%r148313%_))
              _%r148313%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self148073%_ _%stx148074%_)
        (letrec* ((_%context-chain148076%_ (gxc#current-context-chain))
                  (_%make-import-spec148077%_
                   (lambda (_%in148246%_)
                     (let* ((_%in148247148259%_ _%in148246%_)
                            (_%E148249148263%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in148247148259%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K148250148273%_
                             (lambda (_%phi148266%_
                                      _%name148267%_
                                      _%src-name148268%_
                                      _%src-phi148269%_
                                      _%src-key148270%_
                                      _%src-ctx148271%_)
                               (cons _%phi148266%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name148267%_)
                                           (cons _%src-phi148269%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name148268%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in148247148259%_
                              'gx#module-import::t))
                           (let ((_%e148251148276%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in148247148259%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e148251148276%_
                                    'gx#module-export::t))
                                 (let* ((_%e148254148279%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148251148276%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx148282%_ _%e148254148279%_)
                                        (_%e148255148284%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148251148276%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key148287%_ _%e148255148284%_)
                                        (_%e148256148289%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148251148276%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi148292%_ _%e148256148289%_)
                                        (_%e148257148294%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148251148276%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name148297%_ _%e148257148294%_)
                                        (_%e148252148299%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148247148259%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name148302%_ _%e148252148299%_)
                                        (_%e148253148304%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148247148259%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi148307%_ _%e148253148304%_))
                                   (_%K148250148273%_
                                    _%phi148307%_
                                    _%name148302%_
                                    _%src-name148297%_
                                    _%src-phi148292%_
                                    _%src-key148287%_
                                    _%src-ctx148282%_))
                                 (_%E148249148263%_)))
                           (_%E148249148263%_)))))
                  (_%make-import-path148078%_
                   (lambda (_%ctx148244%_)
                     (gxc#generate-meta-import-path
                      _%ctx148244%_
                      _%context-chain148076%_)))
                  (_%make-import-spec-in148079%_
                   (lambda (_%ctx148241%_ _%in148242%_)
                     (cons 'spec:
                           (cons (_%make-import-path148078%_ _%ctx148241%_)
                                 (reverse _%in148242%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self148073%_ 'state)))
          (let* ((_%g148081148091%_
                  (lambda (_%g148082148088%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148082148088%_))))
                 (_%g148080148238%_
                  (lambda (_%g148082148094%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148082148094%_))
                        (let ((_%e148084148096%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148082148094%_))))
                          (let ((_%hd148085148099%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148084148096%_)))
                                (_%tl148086148101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148084148096%_))))
                            ((lambda (_%L148104%_)
                               (let _%lp148115%_ ((_%rest148117%_ _%L148104%_)
                                                  (_%current-src148118%_ '#f)
                                                  (_%current-in148119%_ '())
                                                  (_%r148120%_ '()))
                                 (let* ((_%rest148121148129%_ _%rest148117%_)
                                        (_%else148123148139%_
                                         (lambda ()
                                           (let ((_%r148137%_
                                                  (if _%current-src148118%_
                                                      (cons (_%make-import-spec-in148079%_
                                                             _%current-src148118%_
                                                             _%current-in148119%_)
                                                            _%r148120%_)
                                                      _%r148120%_)))
                                             (cons '%#import
                                                   (reverse _%r148137%_)))))
                                        (_%K148125148226%_
                                         (lambda (_%rest148142%_ _%in148143%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in148143%_
                                                  'gx#module-import::t))
                                               (let* ((_%in148145148152%_
                                                       _%in148143%_)
                                                      (_%E148147148156%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in148145148152%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K148148148164%_
               (lambda (_%src-ctx148159%_)
                 (if (eq? _%current-src148118%_ _%src-ctx148159%_)
                     (_%lp148115%_
                      _%rest148142%_
                      _%current-src148118%_
                      (cons (_%make-import-spec148077%_ _%in148143%_)
                            _%current-in148119%_)
                      _%r148120%_)
                     (if _%current-src148118%_
                         (_%lp148115%_
                          _%rest148142%_
                          _%src-ctx148159%_
                          (cons (_%make-import-spec148077%_ _%in148143%_) '())
                          (cons (_%make-import-spec-in148079%_
                                 _%current-src148118%_
                                 _%current-in148119%_)
                                _%r148120%_))
                         (_%lp148115%_
                          _%rest148142%_
                          _%src-ctx148159%_
                          (cons (_%make-import-spec148077%_ _%in148143%_) '())
                          _%r148120%_)))))
              (_%e148149148167%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in148145148152%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e148149148167%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e148150148170%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e148149148167%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx148173%_ _%e148150148170%_))
               (_%K148148148164%_ _%src-ctx148173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E148147148156%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in148143%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi148176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148143%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src148178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148143%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in148218%_
                                                           (let* ((_%g148179148188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path148078%_ _%src148178%_))
                          (_%E148182148192%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g148179148188%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K148184148208%_
                            (lambda (_%path148206%_) _%path148206%_))
                           (_%K148183148198%_
                            (lambda (_%path148196%_)
                              (cons 'in: _%path148196%_))))
                       (if (pair? _%g148179148188%_)
                           (let ((_%tl148186148213%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g148179148188%_)))
                                 (_%hd148185148211%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g148179148188%_))))
                             (if (null? _%tl148186148213%_)
                                 (let ((_%path148216%_ _%hd148185148211%_))
                                   (_%K148184148208%_ _%path148216%_))
                                 (let ((_%path148201%_ _%g148179148188%_))
                                   (_%K148183148198%_ _%path148201%_))))
                           (let ((_%path148201%_ _%g148179148188%_))
                             (_%K148183148198%_ _%path148201%_))))))
                  (_%r148220%_
                   (if _%current-src148118%_
                       (cons (_%make-import-spec-in148079%_
                              _%current-src148118%_
                              _%current-in148119%_)
                             _%r148120%_)
                       _%r148120%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp148115%_
                                                      _%rest148142%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi148176%_)
                                                                _%src-in148218%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi148176%_
                                    (cons _%src-in148218%_ '()))))
                    _%r148220%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in148143%_
                                                          'gx#module-context::t))
                                                       (let ((_%r148224%_
                                                              (if _%current-src148118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in148079%_
                                 _%current-src148118%_
                                 _%current-in148119%_)
                                _%r148120%_)
                          _%r148120%_)))
                 (_%lp148115%_
                  _%rest148142%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path148078%_ _%in148143%_))
                        _%r148224%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest148121148129%_)
                                       (let ((_%hd148126148229%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest148121148129%_)))
                                             (_%tl148127148231%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest148121148129%_))))
                                         (let* ((_%in148234%_
                                                 _%hd148126148229%_)
                                                (_%rest148236%_
                                                 _%tl148127148231%_))
                                           (_%K148125148226%_
                                            _%rest148236%_
                                            _%in148234%_)))
                                       (_%else148123148139%_)))))
                             _%tl148086148101%_)))
                        (_%g148081148091%_ _%g148082148094%_)))))
            (_%g148080148238%_ _%stx148074%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self147883%_ _%stx147884%_)
        (letrec* ((_%context-chain147886%_ (gxc#current-context-chain))
                  (_%make-import-path147887%_
                   (lambda (_%ctx148071%_)
                     (gxc#generate-meta-import-path
                      _%ctx148071%_
                      _%context-chain147886%_))))
          (let* ((_%g147889147899%_
                  (lambda (_%g147890147896%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147890147896%_))))
                 (_%g147888148068%_
                  (lambda (_%g147890147902%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147890147902%_))
                        (let ((_%e147892147904%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147890147902%_))))
                          (let ((_%hd147893147907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147892147904%_)))
                                (_%tl147894147909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147892147904%_))))
                            ((lambda (_%L147912%_)
                               (let _%lp147923%_ ((_%rest147925%_ _%L147912%_)
                                                  (_%r147926%_ '()))
                                 (let* ((_%rest147927147935%_ _%rest147925%_)
                                        (_%else147929147943%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r147926%_))))
                                        (_%K147931148056%_
                                         (lambda (_%rest147946%_ _%out147947%_)
                                           (let* ((_%out147948147961%_
                                                   _%out147947%_)
                                                  (_%E147951147965%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out147948147961%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K147955148035%_
                                                    (lambda (_%name148031%_
                                                             _%phi148032%_
                                                             _%key148033%_)
                                                      (_%lp147923%_
                                                       _%rest147946%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi148032%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key148033%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name148031%_)
                                             '()))))
                     _%r147926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K147952148015%_
                                                    (lambda (_%phi147969%_
                                                             _%src147970%_)
                                                      (let* ((_%out148010%_
                                                              (if _%src147970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g147971147980%_
                                              (_%make-import-path147887%_
                                               _%src147970%_))
                                             (_%E147974147984%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g147971147980%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K147976148000%_
                                               (lambda (_%path147998%_)
                                                 _%path147998%_))
                                              (_%K147975147990%_
                                               (lambda (_%path147988%_)
                                                 (cons 'in: _%path147988%_))))
                                          (if (pair? _%g147971147980%_)
                                              (let ((_%tl147978148005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g147971147980%_)))
                                                    (_%hd147977148003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g147971147980%_))))
                                                (if (null? _%tl147978148005%_)
                                                    (let ((_%path148008%_
                                                           _%hd147977148003%_))
                                                      (_%K147976148000%_
                                                       _%path148008%_))
                                                    (let ((_%path147993%_
                                                           _%g147971147980%_))
                                                      (_%K147975147990%_
                                                       _%path147993%_))))
                                              (let ((_%path147993%_
                                                     _%g147971147980%_))
                                                (_%K147975147990%_
                                                 _%path147993%_)))))
                                      '()))
                          '#t))
                     (_%out148012%_
                      (if (fxzero? _%phi147969%_)
                          _%out148010%_
                          (cons 'phi:
                                (cons _%phi147969%_
                                      (cons _%out148010%_ '()))))))
                (_%lp147923%_
                 _%rest147946%_
                 (cons _%out148012%_ _%r147926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match147950148028%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out147948147961%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e147953148018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out147948147961%_
                               '1
                               '#f
                               '#f)))
                           (_%e147954148023%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out147948147961%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src148021%_ _%e147953148018%_)
                            (_%phi148026%_ _%e147954148023%_))
                        (_%K147952148015%_ _%phi148026%_ _%src148021%_)))
                    (_%E147951147965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out147948147961%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e147956148038%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out147948147961%_
                        '1
                        '#f
                        '#f)))
                    (_%e147957148041%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out147948147961%_
                        '2
                        '#f
                        '#f)))
                    (_%e147958148046%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out147948147961%_
                        '3
                        '#f
                        '#f)))
                    (_%e147959148051%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out147948147961%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key148044%_ _%e147957148041%_)
                     (_%phi148049%_ _%e147958148046%_)
                     (_%name148054%_ _%e147959148051%_))
                 (_%K147955148035%_
                  _%name148054%_
                  _%phi148049%_
                  _%key148044%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match147950148028%_))))))))
                                   (if (pair? _%rest147927147935%_)
                                       (let ((_%hd147932148059%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest147927147935%_)))
                                             (_%tl147933148061%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest147927147935%_))))
                                         (let* ((_%out148064%_
                                                 _%hd147932148059%_)
                                                (_%rest148066%_
                                                 _%tl147933148061%_))
                                           (_%K147931148056%_
                                            _%rest148066%_
                                            _%out148064%_)))
                                       (_%else147929147943%_)))))
                             _%tl147894147909%_)))
                        (_%g147889147899%_ _%g147890147902%_)))))
            (_%g147888148068%_ _%stx147884%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self147844%_ _%stx147845%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147844%_ 'state)))
        (let* ((_%g147847147857%_
                (lambda (_%g147848147854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147848147854%_))))
               (_%g147846147880%_
                (lambda (_%g147848147860%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147848147860%_))
                      (let ((_%e147850147862%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147848147860%_))))
                        (let ((_%hd147851147865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147850147862%_)))
                              (_%tl147852147867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147850147862%_))))
                          ((lambda (_%L147870%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L147870%_)))
                           _%tl147852147867%_)))
                      (_%g147847147857%_ _%g147848147860%_)))))
          (_%g147846147880%_ _%stx147845%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self147715%_ _%stx147716%_)
        (letrec ((_%generate1147718%_
                  (lambda (_%id147839%_ _%eid147840%_)
                    (let ((_%eid147842%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid147840%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid147842%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx147716%_
                             _%eid147842%_)))
                      (cons (gxc#generate-runtime-identifier _%id147839%_)
                            (cons _%eid147842%_ '()))))))
          (let* ((_%g147720147748%_
                  (lambda (_%g147721147745%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147721147745%_))))
                 (_%g147719147836%_
                  (lambda (_%g147721147751%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147721147751%_))
                        (let ((_%e147724147753%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147721147751%_))))
                          (let ((_%hd147725147756%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147724147753%_)))
                                (_%tl147726147758%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147724147753%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl147726147758%_))
                                (let ((_g157515_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl147726147758%_
                                          '0))))
                                  (begin
                                    (let ((_g157516_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157515_)
                                                 (##values-length _g157515_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157516_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157516_)))
                                    (let ((_%target147727147761%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157515_ 0)))
                                          (_%tl147729147763%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157515_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147729147763%_))
                                          (letrec ((_%loop147730147766%_
                                                    (lambda (_%hd147728147769%_
                                                             _%eid147734147771%_
                                                             _%id147735147773%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd147728147769%_))
                                                          (let ((_%e147731147776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd147728147769%_))))
                    (let ((_%lp-hd147732147779%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147731147776%_)))
                          (_%lp-tl147733147781%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147731147776%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd147732147779%_))
                          (let ((_%e147738147784%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd147732147779%_))))
                            (let ((_%hd147739147787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147738147784%_)))
                                  (_%tl147740147789%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147738147784%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147740147789%_))
                                  (let ((_%e147741147792%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147740147789%_))))
                                    (let ((_%hd147742147795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147741147792%_)))
                                          (_%tl147743147797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147741147792%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147743147797%_))
                                          (_%loop147730147766%_
                                           _%lp-tl147733147781%_
                                           (cons _%hd147742147795%_
                                                 _%eid147734147771%_)
                                           (cons _%hd147739147787%_
                                                 _%id147735147773%_))
                                          (_%g147720147748%_
                                           _%g147721147751%_))))
                                  (_%g147720147748%_ _%g147721147751%_))))
                          (_%g147720147748%_ _%g147721147751%_))))
                  (let ((_%eid147736147800%_ (reverse _%eid147734147771%_))
                        (_%id147737147802%_ (reverse _%id147735147773%_)))
                    ((lambda (_%L147805%_ _%L147806%_)
                       (cons '%#extern
                             (map _%generate1147718%_
                                  (let ((__tmp157517
                                         (lambda (_%g147821147824%_
                                                  _%g147822147826%_)
                                           (cons _%g147821147824%_
                                                 _%g147822147826%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157517 '() _%L147806%_))
                                  (let ((__tmp157518
                                         (lambda (_%g147828147831%_
                                                  _%g147829147833%_)
                                           (cons _%g147828147831%_
                                                 _%g147829147833%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157518 '() _%L147805%_)))))
                     _%eid147736147800%_
                     _%id147737147802%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop147730147766%_
                                             _%target147727147761%_
                                             '()
                                             '()))
                                          (_%g147720147748%_
                                           _%g147721147751%_)))))
                                (_%g147720147748%_ _%g147721147751%_))))
                        (_%g147720147748%_ _%g147721147751%_)))))
            (_%g147719147836%_ _%stx147716%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self147505%_ _%stx147506%_)
        (letrec ((_%generate1147508%_
                  (lambda (_%id147710%_)
                    (let ((_%eid147712%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id147710%_)))
                          (_%ident147713%_
                           (gxc#generate-runtime-identifier _%id147710%_)))
                      (cons '%#define-runtime
                            (cons _%ident147713%_ (cons _%eid147712%_ '()))))))
                 (_%generate*147509%_
                  (lambda (_%all147678%_)
                    (let* ((_%all147679147687%_ _%all147678%_)
                           (_%else147681147695%_
                            (lambda () (cons '%#begin _%all147678%_)))
                           (_%K147683147700%_
                            (lambda (_%one147698%_) _%one147698%_)))
                      (if (pair? _%all147679147687%_)
                          (let ((_%hd147684147703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all147679147687%_)))
                                (_%tl147685147705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all147679147687%_))))
                            (let ((_%one147708%_ _%hd147684147703%_))
                              (if (null? _%tl147685147705%_)
                                  (_%K147683147700%_ _%one147708%_)
                                  (_%else147681147695%_))))
                          (_%else147681147695%_))))))
          (let* ((_%g147511147528%_
                  (lambda (_%g147512147525%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147512147525%_))))
                 (_%g147510147675%_
                  (lambda (_%g147512147531%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147512147531%_))
                        (let ((_%e147515147533%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147512147531%_))))
                          (let ((_%hd147516147536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147515147533%_)))
                                (_%tl147517147538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147515147533%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147517147538%_))
                                (let ((_%e147518147541%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147517147538%_))))
                                  (let ((_%hd147519147544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147518147541%_)))
                                        (_%tl147520147546%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147518147541%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147520147546%_))
                                        (let ((_%e147521147549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147520147546%_))))
                                          (let ((_%hd147522147552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147521147549%_)))
                                                (_%tl147523147554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147521147549%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147523147554%_))
                                                ((lambda (_%L147557%_
                                                          _%L147558%_)
                                                   (let _%lp147574%_ ((_%rest147576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L147558%_)
                              (_%r147577%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx157253157254%_
                                                             _%rest147576%_)
                                                            (_%g147582147599%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx157253157254%_)))))
               (let ((_%__kont157255157256%_
                      (lambda (_%L147662%_)
                        (_%lp147574%_ _%L147662%_ _%r147577%_)))
                     (_%__kont157257157258%_
                      (lambda (_%L147635%_ _%L147636%_)
                        (_%lp147574%_
                         _%L147635%_
                         (cons (_%generate1147508%_ _%L147636%_)
                               _%r147577%_))))
                     (_%__kont157259157260%_
                      (lambda (_%L147611%_)
                        (_%generate*147509%_
                         (let ((__tmp157519
                                (cons (_%generate1147508%_ _%L147611%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp157519 _%r147577%_)))))
                     (_%__kont157261157262%_
                      (lambda () (_%generate*147509%_ (reverse _%r147577%_)))))
                 (let ((_%g147580147622%_
                        (lambda ()
                          (let ((_%L147611%_ _%__stx157253157254%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L147611%_))
                                (_%__kont157259157260%_ _%L147611%_)
                                (_%__kont157261157262%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx157253157254%_))
                       (let ((_%e147585147651%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx157253157254%_))))
                         (let ((_%tl147587147656%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e147585147651%_)))
                               (_%hd147586147654%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e147585147651%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd147586147654%_))
                               (let ((_%e147588147659%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd147586147654%_))))
                                 (if (equal? _%e147588147659%_ '#f)
                                     (_%__kont157255157256%_
                                      _%tl147587147656%_)
                                     (_%__kont157257157258%_
                                      _%tl147587147656%_
                                      _%hd147586147654%_)))
                               (_%__kont157257157258%_
                                _%tl147587147656%_
                                _%hd147586147654%_))))
                       (let () (declare (not safe)) (_%g147580147622%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd147522147552%_
                                                 _%hd147519147544%_)
                                                (_%g147511147528%_
                                                 _%g147512147531%_))))
                                        (_%g147511147528%_
                                         _%g147512147531%_))))
                                (_%g147511147528%_ _%g147512147531%_))))
                        (_%g147511147528%_ _%g147512147531%_)))))
            (_%g147510147675%_ _%stx147506%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self147402%_ _%stx147403%_)
        (let* ((_%g147405147422%_
                (lambda (_%g147406147419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147406147419%_))))
               (_%g147404147502%_
                (lambda (_%g147406147425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147406147425%_))
                      (let ((_%e147409147427%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147406147425%_))))
                        (let ((_%hd147410147430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147409147427%_)))
                              (_%tl147411147432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147409147427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147411147432%_))
                              (let ((_%e147412147435%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147411147432%_))))
                                (let ((_%hd147413147438%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147412147435%_)))
                                      (_%tl147414147440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147412147435%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147414147440%_))
                                      (let ((_%e147415147443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147414147440%_))))
                                        (let ((_%hd147416147446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147415147443%_)))
                                              (_%tl147417147448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147415147443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147417147448%_))
                                              ((lambda (_%L147451%_
                                                        _%L147452%_)
                                                 (let* ((_%eid147467%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L147452%_)))
                                                        (_%phi147469%_
                                                         (let ((__tmp157520
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp157520 '1)))
                (_%block147471%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self147402%_ 'state))
                  _%phi147469%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g147474147481%_
                                                           (lambda (_%g147475147478%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g147475147478%_))))
                  (_%g147473147499%_
                   (lambda (_%g147475147484%_)
                     ((lambda (_%L147486%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self147402%_ 'state))
                         _%phi147469%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L147486%_ (cons _%L147451%_ '())))))
                      _%g147475147484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g147473147499%_
                                                      _%eid147467%_))
                                                   (if _%block147471%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block147471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L147452%_)
                                             (cons _%eid147467%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L147452%_)
                           (cons _%eid147467%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147416147446%_
                                               _%hd147413147438%_)
                                              (_%g147405147422%_
                                               _%g147406147425%_))))
                                      (_%g147405147422%_ _%g147406147425%_))))
                              (_%g147405147422%_ _%g147406147425%_))))
                      (_%g147405147422%_ _%g147406147425%_)))))
          (_%g147404147502%_ _%stx147403%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self147334%_ _%stx147335%_)
        (let* ((_%g147337147354%_
                (lambda (_%g147338147351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147338147351%_))))
               (_%g147336147399%_
                (lambda (_%g147338147357%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147338147357%_))
                      (let ((_%e147341147359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147338147357%_))))
                        (let ((_%hd147342147362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147341147359%_)))
                              (_%tl147343147364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147341147359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147343147364%_))
                              (let ((_%e147344147367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147343147364%_))))
                                (let ((_%hd147345147370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147344147367%_)))
                                      (_%tl147346147372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147344147367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147346147372%_))
                                      (let ((_%e147347147375%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147346147372%_))))
                                        (let ((_%hd147348147378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147347147375%_)))
                                              (_%tl147349147380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147347147375%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147349147380%_))
                                              ((lambda (_%L147383%_
                                                        _%L147384%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L147384%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L147383%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147348147378%_
                                               _%hd147345147370%_)
                                              (_%g147337147354%_
                                               _%g147338147357%_))))
                                      (_%g147337147354%_ _%g147338147357%_))))
                              (_%g147337147354%_ _%g147338147357%_))))
                      (_%g147337147354%_ _%g147338147357%_)))))
          (_%g147336147399%_ _%stx147335%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self147331%_ _%stx147332%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147331%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147332%_)
        (gxc#generate-meta-define-values% _%self147331%_ _%stx147332%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self147328%_ _%stx147329%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147328%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147329%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp157522 (list)) (__tmp157521 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp157522
         '(src n open blocks)
         __tmp157521
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args147325%_
        (apply make-instance gxc#meta-state::t _%$args147325%_)))
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
      (lambda (_%self147311%_ _%ctx147312%_)
        (let ((_%self147315%_ _%self147311%_))
          (if (let ((__tmp157523
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147315%_))))
                (declare (not safe))
                (##fx< '4 __tmp157523))
              (begin
                (let ((__tmp157524
                       (let ((__tmp157525
                              (##structure-ref
                               _%ctx147312%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp157525))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147315%_
                   __tmp157524
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147315%_ '1 '2 '#f '#f))
                (let ((__tmp157526
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147315%_
                   __tmp157526
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147315%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp157527
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147315%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147315%_
                       '4
                       __tmp157527))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp157529 (list)) (__tmp157528 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp157529
         '(ctx phi n code)
         __tmp157528
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args147186%_
        (apply make-instance gxc#meta-state-block::t _%$args147186%_)))
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
      (lambda (_%state147145%_ _%phi147146%_)
        (let* ((_%state147147147155%_ _%state147145%_)
               (_%E147149147159%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state147147147155%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K147150147168%_
                (lambda (_%open147162%_ _%n147163%_ _%src147164%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open147162%_ _%phi147146%_))
                      '#f
                      (let ((_%block-ref147166%_
                             (let ((__tmp157530 (number->string _%n147163%_)))
                               (declare (not safe))
                               (##string-append
                                _%src147164%_
                                '"~"
                                __tmp157530))))
                        (##structure-set!
                         _%state147145%_
                         (let () (declare (not safe)) (##fx+ _%n147163%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp157531
                               (let ((__tmp157532
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp157532
                                  _%phi147146%_
                                  _%n147163%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open147162%_ _%phi147146%_ __tmp157531))
                        _%block-ref147166%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state147147147155%_
                 'gxc#meta-state::t))
              (let* ((_%e147151147171%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147147147155%_
                         '1
                         '#f
                         '#f)))
                     (_%src147174%_ _%e147151147171%_)
                     (_%e147152147176%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147147147155%_
                         '2
                         '#f
                         '#f)))
                     (_%n147179%_ _%e147152147176%_)
                     (_%e147153147181%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147147147155%_
                         '3
                         '#f
                         '#f)))
                     (_%open147184%_ _%e147153147181%_))
                (_%K147150147168%_ _%open147184%_ _%n147179%_ _%src147174%_))
              (_%E147149147159%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state147139%_ _%phi147140%_ _%stx147141%_)
        (let ((_%block147143%_
               (let ((__tmp157533
                      (##structure-ref
                       _%state147139%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp157533 _%phi147140%_))))
          (##structure-set!
           _%block147143%_
           (cons _%stx147141%_
                 (##structure-ref
                  _%block147143%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state147133%_)
        (##structure-set!
         _%state147133%_
         (let ((__tmp157536
                (lambda (_%_147135%_ _%block147136%_ _%r147137%_)
                  (cons _%block147136%_ _%r147137%_)))
               (__tmp157535
                (##structure-ref _%state147133%_ '4 gxc#meta-state::t '#f))
               (__tmp157534
                (##structure-ref _%state147133%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp157536 __tmp157535 __tmp157534))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state147133%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state147085%_)
        (gxc#meta-state-end-phi! _%state147085%_)
        (let ((__tmp157538
               (lambda (_%block147087%_ _%r147088%_)
                 (let* ((_%block147089147098%_ _%block147087%_)
                        (_%E147091147102%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block147089147098%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K147092147110%_
                         (lambda (_%code147105%_
                                  _%n147106%_
                                  _%phi147107%_
                                  _%ctx147108%_)
                           (if (null? _%code147105%_)
                               _%r147088%_
                               (cons (cons _%ctx147108%_
                                           (cons _%phi147107%_
                                                 (cons _%n147106%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code147105%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r147088%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block147089147098%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e147093147113%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147089147098%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx147116%_ _%e147093147113%_)
                              (_%e147094147118%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147089147098%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi147121%_ _%e147094147118%_)
                              (_%e147095147123%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147089147098%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n147126%_ _%e147095147123%_)
                              (_%e147096147128%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147089147098%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code147131%_ _%e147096147128%_))
                         (_%K147092147110%_
                          _%code147131%_
                          _%n147126%_
                          _%phi147121%_
                          _%ctx147116%_))
                       (_%E147091147102%_)))))
              (__tmp157537
               (##structure-ref _%state147085%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp157538 '() __tmp157537))))
    (define gxc#collect-expression-refs
      (lambda (_%stx147081%_)
        (let ((_%ht147083%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht147083%_ _%stx147081%_)
          _%ht147083%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self147024%_ _%stx147025%_)
        (let* ((_%g147027147040%_
                (lambda (_%g147028147037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147028147037%_))))
               (_%g147026147078%_
                (lambda (_%g147028147043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147028147043%_))
                      (let ((_%e147030147045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147028147043%_))))
                        (let ((_%hd147031147048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147030147045%_)))
                              (_%tl147032147050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147030147045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147032147050%_))
                              (let ((_%e147033147053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147032147050%_))))
                                (let ((_%hd147034147056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147033147053%_)))
                                      (_%tl147035147058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147033147053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl147035147058%_))
                                      ((lambda (_%L147061%_)
                                         (let* ((_%bind147073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L147061%_)))
                                                (_%eid147075%_
                                                 (if _%bind147073%_
                                                     (##structure-ref
                                                      _%bind147073%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L147061%_))))
                                                (__tmp157539
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self147024%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp157539
                                            _%eid147075%_
                                            _%eid147075%_)))
                                       _%hd147034147056%_)
                                      (_%g147027147040%_ _%g147028147043%_))))
                              (_%g147027147040%_ _%g147028147043%_))))
                      (_%g147027147040%_ _%g147028147043%_)))))
          (_%g147026147078%_ _%stx147025%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self146951%_ _%stx146952%_)
        (let* ((_%g146954146971%_
                (lambda (_%g146955146968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146955146968%_))))
               (_%g146953147021%_
                (lambda (_%g146955146974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146955146974%_))
                      (let ((_%e146958146976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146955146974%_))))
                        (let ((_%hd146959146979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146958146976%_)))
                              (_%tl146960146981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146958146976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146960146981%_))
                              (let ((_%e146961146984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146960146981%_))))
                                (let ((_%hd146962146987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146961146984%_)))
                                      (_%tl146963146989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146961146984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146963146989%_))
                                      (let ((_%e146964146992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146963146989%_))))
                                        (let ((_%hd146965146995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146964146992%_)))
                                              (_%tl146966146997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146964146992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146966146997%_))
                                              ((lambda (_%L147000%_
                                                        _%L147001%_)
                                                 (let* ((_%bind147016%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L147001%_)))
                                                        (_%eid147018%_
                                                         (if _%bind147016%_
                                                             (##structure-ref
                                                              _%bind147016%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L147001%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp157540
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self146951%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp157540
                                                      _%eid147018%_
                                                      _%eid147018%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self146951%_
                                                      _%L147000%_))))
                                               _%hd146965146995%_
                                               _%hd146962146987%_)
                                              (_%g146954146971%_
                                               _%g146955146974%_))))
                                      (_%g146954146971%_ _%g146955146974%_))))
                              (_%g146954146971%_ _%g146955146974%_))))
                      (_%g146954146971%_ _%g146955146974%_)))))
          (_%g146953147021%_ _%stx146952%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self146908%_ _%stx146909%_)
        (let* ((_%g146911146921%_
                (lambda (_%g146912146918%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146912146918%_))))
               (_%g146910146948%_
                (lambda (_%g146912146924%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146912146924%_))
                      (let ((_%e146914146926%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146912146924%_))))
                        (let ((_%hd146915146929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146914146926%_)))
                              (_%tl146916146931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146914146926%_))))
                          ((lambda (_%L146934%_)
                             (let ((__tmp157541
                                    (lambda (_%g146943146945%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self146908%_
                                         _%g146943146945%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp157541 _%L146934%_)))
                           _%tl146916146931%_)))
                      (_%g146911146921%_ _%g146912146924%_)))))
          (_%g146910146948%_ _%stx146909%_))))
    (define gxc#count-values-single%
      (lambda (_%self146905%_ _%stx146906%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self146771%_ _%stx146772%_)
        (let* ((_%__stx157283157284%_ _%stx146772%_)
               (_%g146775146804%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx157283157284%_)))))
          (let ((_%__kont157285157286%_
                 (lambda (_%L146872%_ _%L146873%_)
                   (length (let ((__tmp157542
                                  (lambda (_%g146894146897%_ _%g146895146899%_)
                                    (cons _%g146894146897%_
                                          _%g146895146899%_))))
                             (declare (not safe))
                             (__foldr1 __tmp157542 '() _%L146872%_)))))
                (_%__kont157289157290%_ (lambda () '#f)))
            (let ((_%__match157328157329%_
                   (lambda (_%e146779146816%_
                            _%hd146780146819%_
                            _%tl146781146821%_
                            _%e146782146824%_
                            _%hd146783146827%_
                            _%tl146784146829%_
                            _%e146785146832%_
                            _%hd146786146835%_
                            _%tl146787146837%_
                            _%e146788146840%_
                            _%hd146789146843%_
                            _%tl146790146845%_
                            _%__splice157287157288%_
                            _%target146791146848%_
                            _%tl146793146850%_)
                     (letrec ((_%loop146794146853%_
                               (lambda (_%hd146792146856%_
                                        _%rand146798146858%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd146792146856%_))
                                     (let ((_%e146795146861%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd146792146856%_))))
                                       (let ((_%lp-tl146797146866%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e146795146861%_)))
                                             (_%lp-hd146796146864%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e146795146861%_))))
                                         (_%loop146794146853%_
                                          _%lp-tl146797146866%_
                                          (cons _%lp-hd146796146864%_
                                                _%rand146798146858%_))))
                                     (let ((_%rand146799146869%_
                                            (reverse _%rand146798146858%_)))
                                       (let ((_%L146872%_ _%rand146799146869%_)
                                             (_%L146873%_ _%hd146789146843%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146873%_
                                                'values))
                                             (_%__kont157285157286%_
                                              _%L146872%_
                                              _%L146873%_)
                                             (_%__kont157289157290%_))))))))
                       (_%loop146794146853%_ _%target146791146848%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx157283157284%_))
                  (let ((_%e146779146816%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx157283157284%_))))
                    (let ((_%tl146781146821%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146779146816%_)))
                          (_%hd146780146819%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146779146816%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146781146821%_))
                          (let ((_%e146782146824%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146781146821%_))))
                            (let ((_%tl146784146829%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146782146824%_)))
                                  (_%hd146783146827%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146782146824%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146783146827%_))
                                  (let ((_%e146785146832%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146783146827%_))))
                                    (let ((_%tl146787146837%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146785146832%_)))
                                          (_%hd146786146835%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146785146832%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146786146835%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146786146835%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146787146837%_))
                                                  (let ((_%e146788146840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146787146837%_))))
                                                    (let ((_%tl146790146845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146788146840%_)))
                                                          (_%hd146789146843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146788146840%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146790146845%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl146784146829%_))
                      (let ((_%__splice157287157288%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl146784146829%_
                                '0))))
                        (let ((_%tl146793146850%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157287157288%_ '1)))
                              (_%target146791146848%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157287157288%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146793146850%_))
                              (_%__match157328157329%_
                               _%e146779146816%_
                               _%hd146780146819%_
                               _%tl146781146821%_
                               _%e146782146824%_
                               _%hd146783146827%_
                               _%tl146784146829%_
                               _%e146785146832%_
                               _%hd146786146835%_
                               _%tl146787146837%_
                               _%e146788146840%_
                               _%hd146789146843%_
                               _%tl146790146845%_
                               _%__splice157287157288%_
                               _%target146791146848%_
                               _%tl146793146850%_)
                              (_%__kont157289157290%_))))
                      (_%__kont157289157290%_))
                  (_%__kont157289157290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont157289157290%_))
                                              (_%__kont157289157290%_))
                                          (_%__kont157289157290%_))))
                                  (_%__kont157289157290%_))))
                          (_%__kont157289157290%_))))
                  (_%__kont157289157290%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self146674%_ _%stx146675%_)
        (let* ((_%g146677146698%_
                (lambda (_%g146678146695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146678146695%_))))
               (_%g146676146768%_
                (lambda (_%g146678146701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146678146701%_))
                      (let ((_%e146682146703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146678146701%_))))
                        (let ((_%hd146683146706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146682146703%_)))
                              (_%tl146684146708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146682146703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146684146708%_))
                              (let ((_%e146685146711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146684146708%_))))
                                (let ((_%hd146686146714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146685146711%_)))
                                      (_%tl146687146716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146685146711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146687146716%_))
                                      (let ((_%e146688146719%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146687146716%_))))
                                        (let ((_%hd146689146722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146688146719%_)))
                                              (_%tl146690146724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146688146719%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146690146724%_))
                                              (let ((_%e146691146727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146690146724%_))))
                                                (let ((_%hd146692146730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146691146727%_)))
                                                      (_%tl146693146732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146691146727%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146693146732%_))
                                                      ((lambda (_%L146735%_
                                                                _%L146736%_
                                                                _%L146737%_)
                                                         (let ((_%c1146754146756%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self146674%_ _%L146736%_))))
                   (if _%c1146754146756%_
                       (let* ((_%c1146759%_ _%c1146754146756%_)
                              (_%c2146760146762%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self146674%_
                                  _%L146735%_))))
                         (if _%c2146760146762%_
                             (let ((_%c2146765%_ _%c2146760146762%_))
                               (if (fx= _%c1146759%_ _%c2146765%_)
                                   _%c1146759%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd146692146730%_
               _%hd146689146722%_
               _%hd146686146714%_)
              (_%g146677146698%_ _%g146678146701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g146677146698%_
                                               _%g146678146701%_))))
                                      (_%g146677146698%_ _%g146678146701%_))))
                              (_%g146677146698%_ _%g146678146701%_))))
                      (_%g146677146698%_ _%g146678146701%_)))))
          (_%g146676146768%_ _%stx146675%_))))))
